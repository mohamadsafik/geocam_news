import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/base/article.dart' show Article;
import '../../../engine/engine.dart';

part 'bookmark_article_state.dart';
part 'bookmark_article_cubit.freezed.dart';

class BookmarkArticleCubit extends BaseCubit<BookmarkArticleState> {
  BookmarkArticleCubit(BuildContext context)
    : super(context, BookmarkArticleState());

  @override
  Future<void> initData() async {
    loadingState();
    final List<Article>? listOfArticleBookmark =
        Sessions.getListArticleBookmark();
    emit(
      state.copyWith(
        status:
            listOfArticleBookmark!.isEmpty
                ? DataStateStatus.empty
                : DataStateStatus.success,
        bookmarkNews: listOfArticleBookmark,
      ),
    );
    finishRefresh(state.status);
  }

  @override
  void loadingState() => emit(state.copyWith(status: DataStateStatus.initial));

  @override
  Future<void> refreshData() => initData();
  List<Article> getListArticleBookmark() {
    List<Article> listOfArticle = Sessions.getListArticleBookmark() ?? [];
    emit(state.copyWith(bookmarkNews: listOfArticle));
    return listOfArticle;
  }

  void addToBookmark(Article article, bool isAdd) {
    Sessions.setBookmarkArticle(article, !isAdd);
    initData();
  }
}
