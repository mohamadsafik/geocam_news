import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocam_news/engine/engine.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends BaseCubit<LocationState> {
  LocationCubit(BuildContext context) : super(context, LocationState());

  @override
  Future<void> initData() async {
    loadingState();
    getCurrentLocation();
    finishRefresh(state.status);
  }

  @override
  void loadingState() => emit(state.copyWith(status: DataStateStatus.initial));

  @override
  Future<void> refreshData() => initData();

  Future<void> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return;

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever ||
          permission == LocationPermission.denied) {
        return;
      }
    }

    final pos = await Geolocator.getCurrentPosition();
    emit(
      state.copyWith(
        status: DataStateStatus.success,
        latLng: LatLng(pos.latitude, pos.longitude),
      ),
    );
  }
}
