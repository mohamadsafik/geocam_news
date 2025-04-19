import 'package:flutter/material.dart';
import 'package:geocam_news/data/models/base/article.dart';
import 'package:geocam_news/engine/extensions/date_time.dart';
import 'package:go_router/go_router.dart';

import '../../../engine/base/app.dart';
import '../../../themes/themes.dart';
import '../../../widgets/components/image_load.dart';

class DetailNewsPage extends StatelessWidget {
  final Article article;
  const DetailNewsPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),

                      child: IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 28,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    Text(
                      "",
                      style: AppFont.largeBold(context)?.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                article.title ?? "",
                style: AppFont.largeBold(context)?.copyWith(fontSize: 20),
              ),
              SizedBox(height: 16),
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
              SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: ImageLoad(
                  height: 260,
                  width: baseWidth,
                  imageUrl: article.urlToImage ?? "",
                  fit: BoxFit.cover,
                  radius: 26,
                ),
              ),
              SizedBox(height: 24),
              Text(
                article.description ?? "",
                style: AppFont.medium(context),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8),
              Text(
                article.content ?? "",
                style: AppFont.medium(context),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
