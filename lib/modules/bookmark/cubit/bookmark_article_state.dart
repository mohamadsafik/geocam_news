part of 'bookmark_article_cubit.dart';

@freezed
abstract class BookmarkArticleState with _$BookmarkArticleState {
  const factory BookmarkArticleState({
    @Default(DataStateStatus.initial) DataStateStatus status,
    @Default([]) List<Article> bookmarkNews,
  }) = _BookmarkArticleState;
}
