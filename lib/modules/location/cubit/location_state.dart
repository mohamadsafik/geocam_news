part of 'location_cubit.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState({
    @Default(DataStateStatus.initial) DataStateStatus status,
    @Default("") String latlong,
    @Default(LatLng(-6.2088, 106.8456)) LatLng latLng,
  }) = _LocationState;
}
