import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocam_news/engine/engine.dart';
import 'package:geocam_news/modules/bookmark/cubit/bookmark_article_cubit.dart';
import 'package:geocam_news/modules/news/view/card_vertical_news.dart';
import 'package:geocam_news/themes/themes.dart';
import 'package:go_router/go_router.dart';

import '../../../widgets/widgets.dart';
import '../../news/cubit/news_cubit.dart';

class BookmarkArticle extends StatelessWidget {
  const BookmarkArticle({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BookmarkArticleCubit>();
    return Scaffold(
      body: BlocBuilder<BookmarkArticleCubit, BookmarkArticleState>(
        builder: (context, state) {
          return ContainerStateHandler(
            loading: const Center(child: CircularProgressIndicator()),
            emptyOptions: EmptyOptions(
              customEmpty: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 60),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                context.pop();
                              },
                              icon: Icon(Icons.arrow_back_ios_new, size: 20),
                            ),
                            Text(
                              "Bookmark News",
                              style: AppFont.largeBold(
                                context,
                              )?.copyWith(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 200),
                      Center(
                        child: Text(
                          "No Bookmark News",
                          style: AppFont.large(context),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            refresherOptions: cubit.defaultRefresh,
            errorOptions: ErrorOptions(
              onRefresh: () => cubit.refreshData(),
              error: "Error fetch news",
            ),
            status: state.status,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            context.pop();
                          },
                          icon: Icon(Icons.arrow_back_ios_new, size: 20),
                        ),
                        Text(
                          "Bookmark News",
                          style: AppFont.largeBold(
                            context,
                          )?.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.vertical,
                    itemCount: state.bookmarkNews.length,
                    itemBuilder: (context, index) {
                      final article = state.bookmarkNews[index];
                      bool isBookmark = state.bookmarkNews.any(
                        (a) => a.urlToImage == article.urlToImage,
                      );

                      return CardVerticalNews(
                        article: article,
                        isAddBookmark:
                            () => cubit.addToBookmark(article, isBookmark),
                        isMark: isBookmark,
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
