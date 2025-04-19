import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/base/article.dart';
import '../../../engine/engine.dart';

import '../../../routes/routes.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';

class CardVerticalNews extends StatelessWidget {
  const CardVerticalNews({
    super.key,
    required this.article,
    required this.isAddBookmark,
    required this.isMark,
  });

  final void Function()? isAddBookmark;
  final Article article;
  final bool isMark;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(RouteNames.detailArticle, extra: article),
      child: Container(
        width: 300, // Atur lebar per item biar rapi scroll-nya
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: ImageLoad(
                          height: 100,
                          width: 100,
                          imageUrl: article.urlToImage ?? "",
                          fit: BoxFit.cover,
                          radius: 26,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              article.title ?? "",
                              style: AppFont.mediumBold(context),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    width: 100,
                                    child: Text(
                                      article.author ?? "",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppFont.medium(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                  ),
                                  child: Icon(Icons.circle, size: 5),
                                ),
                                Expanded(
                                  child: Text(
                                    article.publishedAt?.toddMMMyyyy() ?? "",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFont.medium(context),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: -5,
              top: -5,
              child: IconButton(
                onPressed: isAddBookmark,
                icon: Icon(
                  (isMark) ? Icons.bookmark : Icons.bookmark_border_outlined,
                  size: 28,
                  color: AppColor.appColor.warning,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
