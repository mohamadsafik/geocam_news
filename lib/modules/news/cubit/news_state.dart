part of 'news_cubit.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState({
    @Default(DataStateStatus.initial) DataStateStatus status,
    @Default([]) List<Article> news,
    @Default([]) List<Article> bookmarkNews,
    @Default("") String pathFileImage,
    @Default("") String latLng,
  }) = _NewsState;
}
