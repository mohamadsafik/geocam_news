import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocam_news/data/models/base/article.dart';
import 'package:geocam_news/data/services.dart';
import 'package:geocam_news/engine/engine.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends BaseCubit<NewsState> {
  NewsCubit(BuildContext context) : super(context, NewsState());

  @override
  Future<void> initData({bool showLoading = true}) async {
    loadingState(showLoading: showLoading);
    final List<Article> listOfArticleBookmark = getListArticleBookmark();
    final String? pathImage = Sessions.getImage();
    final String? latLng = Sessions.getLatlong();
    final ApiResponseList<Article> data = await ApiService.getNews(
      context,
      idCart: [1],
    );
    if (data.isSuccess) {
      emit(
        state.copyWith(
          status:
              data.articles!.isEmpty
                  ? DataStateStatus.empty
                  : DataStateStatus.success,
          news: data.articles ?? [],
          bookmarkNews: listOfArticleBookmark,
          latLng: latLng ?? "",
          pathFileImage: pathImage ?? "",
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: DataStateStatus.error,
          news: data.articles ?? [],
          bookmarkNews: listOfArticleBookmark,
        ),
      );
    }
    finishRefresh(state.status);
  }

  @override
  void loadingState({bool showLoading = true}) => emit(
    state.copyWith(
      status: showLoading ? DataStateStatus.initial : DataStateStatus.loading,
    ),
  );

  @override
  Future<void> refreshData() => initData();

  List<Article> getListArticleBookmark() {
    List<Article> listOfArticle = Sessions.getListArticleBookmark() ?? [];
    emit(state.copyWith(bookmarkNews: listOfArticle));
    return listOfArticle;
  }

  void addToBookmark(Article article, bool isAdd) {
    Sessions.setBookmarkArticle(article, !isAdd);
    getListArticleBookmark();
  }
}
