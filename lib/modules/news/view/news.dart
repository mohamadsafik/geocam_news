import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocam_news/data/models/base/article.dart';
import 'package:geocam_news/engine/engine.dart';
import 'package:geocam_news/modules/news/cubit/news_cubit.dart';
import 'package:geocam_news/modules/news/view/card_vertical_news.dart';
import 'package:geocam_news/routes/routes.dart';
import 'package:geocam_news/themes/themes.dart';
import 'package:go_router/go_router.dart';

import '../../../widgets/widgets.dart';
import 'card_news.dart';

class ListNews extends StatelessWidget {
  const ListNews({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NewsCubit>();
    return Scaffold(
      body: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          return ContainerStateHandler(
            loading: const Center(child: CircularProgressIndicator()),
            emptyOptions: EmptyOptions(empty: "No News"),
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
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.file(
                                height: 60,
                                File(state.pathFileImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome",
                                  style: AppFont.small(
                                    context,
                                  )?.copyWith(fontSize: 20),
                                ),
                                Text(
                                  state.latLng,
                                  style: AppFont.smallBold(
                                    context,
                                  )?.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                shape: BoxShape.circle,
                              ),

                              child: Badge(
                                isLabelVisible: state.bookmarkNews.isNotEmpty,
                                label: Text(
                                  state.bookmarkNews.length.toString(),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    context.pushNamed(RouteNames.bookmark).then(
                                      (_) {
                                        cubit.getListArticleBookmark();
                                      },
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.bookmark_border_outlined,
                                    size: 28,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications_active_outlined,
                                  size: 28,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Trending Now",
                      style: AppFont.largeBold(context)?.copyWith(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: state.news.length,
                      itemBuilder: (context, index) {
                        final article = state.news[index];
                        bool isBookmark = state.bookmarkNews.any(
                          (a) => a.urlToImage == article.urlToImage,
                        );
                        return CardNews(
                          article: article,
                          isAddBookmark:
                              () => cubit.addToBookmark(article, isBookmark),
                          isMark: isBookmark,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "All News",
                      style: AppFont.largeBold(context)?.copyWith(fontSize: 20),
                    ),
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.vertical,
                    itemCount: state.news.length,
                    itemBuilder: (context, index) {
                      final article = state.news[index];
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
