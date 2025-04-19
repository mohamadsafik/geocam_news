import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocam_news/engine/base/app.dart';
import 'package:geocam_news/engine/engine.dart';
import 'package:geocam_news/modules/location/cubit/location_cubit.dart';
import 'package:geocam_news/modules/location/view/camera.dart';
import 'package:geocam_news/routes/routes.dart';
import 'package:geocam_news/themes/themes.dart';
import 'package:geocam_news/widgets/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<LocationCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Location", style: AppFont.whiteLarge(context)),
        backgroundColor: AppColor.appColor.primary,
      ),
      body: BlocBuilder<LocationCubit, LocationState>(
        builder: (context, state) {
          return ContainerStateHandler(
            loading: Center(child: CircularProgressIndicator()),
            status: state.status,
            child: Stack(
              children: [
                SizedBox(
                  height: 300,
                  width: baseWidth,
                  child: FlutterMap(
                    options: MapOptions(
                      initialCenter: state.latLng,
                      initialZoom: 16,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a', 'b', 'c'],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: state.latLng,
                            width: 40,
                            height: 40,

                            child: Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 500,
                    width: baseWidth,
                    child: CameraBox(
                      latlng:
                          "${state.latLng.latitude}, ${state.latLng.longitude}",
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(height: 50, width: 200),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// class NextPage extends StatefulWidget {
//   final LatLng location;

//   const NextPage({super.key, required this.location});

//   @override
//   State<NextPage> createState() => _NextPageState();
// }

// class _NextPageState extends State<NextPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Next Page")),
//       body: Center(
//         child: Column(
//           children: [
//             Text(
//               "Lokasi dipilih: ${widget.location.latitude}, ${widget.location.longitude}",
//             ),
//             Container(
//               width: 120,
//               height: 60,
//               decoration: BoxDecoration(border: Border.all(color: Colors.red)),
//               child:
//                   Sessions.getImage() != null
//                       ? Image.file(
//                         File(Sessions.getImage()!),
//                         fit: BoxFit.cover,
//                       )
//                       : CircularProgressIndicator(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
