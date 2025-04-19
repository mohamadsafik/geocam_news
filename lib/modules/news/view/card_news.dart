import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/base/article.dart';
import '../../../engine/engine.dart';
import '../../../routes/routes.dart';
import '../../../themes/themes.dart';
import '../../../widgets/widgets.dart';

class CardNews extends StatelessWidget {
  const CardNews({
    super.key,
    required this.article,
    this.isAddBookmark,
    required this.isMark,
  });

  final Article article;
  final void Function()? isAddBookmark;

  final bool isMark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            context.pushNamed(RouteNames.detailArticle, extra: article);
          },
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
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: ImageLoad(
                      height: 160,
                      width: baseWidth,
                      imageUrl: article.urlToImage ?? "",
                      fit: BoxFit.cover,
                      radius: 26,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    article.title ?? "",
                    style: AppFont.mediumBold(context),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        article.author ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppFont.medium(context),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.circle, size: 5),
                      SizedBox(width: 8),
                      Text(
                        article.publishedAt?.toddMMMyyyy() ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppFont.medium(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 15,
          top: 15,
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
    );
  }
}
