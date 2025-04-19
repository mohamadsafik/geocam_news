import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:geocam_news/engine/engine.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';

import '../../../routes/routes.dart';

class CameraBox extends StatefulWidget {
  final String latlng;

  const CameraBox({super.key, required this.latlng});

  @override
  State<CameraBox> createState() => _CameraBoxState();
}

class _CameraBoxState extends State<CameraBox> {
  CameraController? _cameraController;
  late List<CameraDescription> _cameras;
  File? _savedImage;

  @override
  void initState() {
    super.initState();
    _initCamera();
    _loadSavedImage();
  }

  Future<void> _initCamera() async {
    _cameras = await availableCameras();
    _cameraController = CameraController(
      _cameras.first,
      ResolutionPreset.medium,
    );
    await _cameraController!.initialize();
    if (!mounted) return;
    setState(() {});
  }

  Future<void> _loadSavedImage() async {
    final String? savedPath = Sessions.getImage();
    if (savedPath != null && File(savedPath).existsSync()) {
      setState(() {
        _savedImage = File(savedPath);
      });
    }
  }

  Future<void> _takePicture() async {
    if (!_cameraController!.value.isInitialized) return;

    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/Pictures';
    await Directory(dirPath).create(recursive: true);
    final String filePath = join(
      dirPath,
      '${DateTime.now().millisecondsSinceEpoch}.jpg',
    );

    XFile file = await _cameraController!.takePicture();
    final savedFile = await File(file.path).copy(filePath);

    Sessions.setImage(savedFile.path);

    setState(() {
      _savedImage = savedFile;
    });
  }

  void _retakePicture() {
    Sessions.setImage("");
    setState(() {
      _savedImage = null;
    });
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isCameraReady = _cameraController?.value.isInitialized ?? false;

    return Container(
      width: baseWidth,
      height: baseHeight,
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (_savedImage != null)
            Image.file(_savedImage!, fit: BoxFit.cover)
          else if (isCameraReady)
            CameraPreview(_cameraController!)
          else
            const Center(child: CircularProgressIndicator()),

          if (isCameraReady || _savedImage != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton.icon(
                      onPressed:
                          _savedImage == null ? _takePicture : _retakePicture,
                      icon: Icon(
                        _savedImage == null ? Icons.camera_alt : Icons.refresh,
                      ),
                      label: Text(
                        _savedImage == null ? "Take Foto" : "Retake Foto",
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                _savedImage != null
                    ? Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Sessions.setLatlng(widget.latlng);
                              context.go(
                                RouteNames.listOfNews,
                                extra: widget.latlng,
                              );
                            },

                            child: Text("Save ${widget.latlng}"),
                          ),
                        ),
                      ),
                    )
                    : SizedBox(),
              ],
            ),
        ],
      ),
    );
  }
}
