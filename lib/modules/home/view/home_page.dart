import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rs_ui/engine/base/app.dart';
import 'package:rs_ui/modules/home/cubit/cubit/home_cubit.dart';
import 'package:rs_ui/modules/home/view/news_widget.dart';
import 'package:rs_ui/resources/resources.dart';
import 'package:rs_ui/routes/routes.dart';
import 'package:rs_ui/themes/themes.dart';
import 'package:rs_ui/widgets/components/container_state_handler.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'card_feature_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SafeArea(
            child: ContainerStateHandler(
              loading: Center(child: CircularProgressIndicator()),
              refresherOptions: cubit.defaultRefresh,
              status: state.status,
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Resources.images.logoRsui.image(height: 60),
                            SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Selamat Datang",
                                  style: AppFont.small(context)?.copyWith(
                                    color: const Color.fromARGB(
                                      255,
                                      95,
                                      95,
                                      95,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Test user",
                                  style:
                                      AppFont.mediumBold(context)?.copyWith(),
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Badge(
                            backgroundColor: AppColor.appColor.primary,
                            label: Text(
                              "2",
                              style: AppFont.whiteSmall(context),
                            ),
                            child: Icon(
                              color: AppColor.appColor.orange,
                              Icons.notifications_active_outlined,
                              size: 36,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        // Hitung lebar berdasarkan total padding dan spacing
                        CardFeature(
                          title: "Registrasi Rawat Jalan",
                          svg: Resources
                              .icons
                              .appRegistration24dpE3E3E3FILL0Wght400GRAD0Opsz24
                              .svg(
                                height: 46,
                                color: AppColor.appColor.primary,
                              ),
                        ),
                        const SizedBox(width: 8),
                        CardFeature(
                          title: "Registrasi Rawat Inap",
                          svg: Resources.icons.rawatInap.svg(
                            height: 46,
                            color: AppColor.appColor.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        // Hitung lebar berdasarkan total padding dan spacing
                        Expanded(
                          child: CardFeature(
                            onTap:
                                () => context.pushNamed(RouteNames.listDoctor),
                            title: "Informasi Dokter",
                            svg: Resources
                                .icons
                                .stethoscope24dpE3E3E3FILL0Wght400GRAD0Opsz24
                                .svg(
                                  height: 46,
                                  color: AppColor.appColor.primary,
                                ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: CardFeature(
                            title: "Informasi Kamar",
                            svg: Resources.icons.bed.svg(
                              height: 46,
                              color: AppColor.appColor.primary,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: CardFeature(
                            title: "Informasi Layanan",
                            svg: Resources
                                .icons
                                .medicalInformation24dpE3E3E3FILL0Wght400GRAD0Opsz24
                                .svg(
                                  height: 46,
                                  color: AppColor.appColor.primary,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      height: 100,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 90,
                            width: baseWidth,
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppColor.appColor.orange.withOpacity(0.8),
                                  AppColor.appColor.orange.withOpacity(0.8),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.appColor.orange.withOpacity(
                                    0.08,
                                  ),
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.event,
                                  color: Colors.white,
                                  size: 46,
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Anda memiliki jadwal temu",
                                      style: AppFont.mediumBold(
                                        context,
                                      )?.copyWith(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      "• Dokter: dr. Tirta\n"
                                      "• Poli: Poli Gigi\n"
                                      "• Tanggal: 20 April 2025, 10:00 WIB",
                                      style: AppFont.whiteSmall(
                                        context,
                                      )?.copyWith(fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: -8,
                            right: -8,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: AppColor.appColor.error,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Berita",
                              style: AppFont.mediumPrimary(context),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Lihat semua",
                                  style: AppFont.mediumPrimary(context),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: AppColor.appColor.primary,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 0.8,
                          height: 160,
                          enlargeCenterPage: false,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                        ),
                        items:
                            cubit.listOfNews.map((news) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return NewsCard(
                                    title: news['title'].toString(),
                                    desc: news['description'].toString(),
                                    pathImage: news['image'].toString(),
                                  );
                                },
                              );
                            }).toList(),
                      ),
                      SizedBox(height: 24),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Poliklinik",
                              style: AppFont.mediumPrimary(context),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Lihat semua",
                                  style: AppFont.mediumPrimary(context),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: AppColor.appColor.primary,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 0.8,
                          height: 160,
                          enlargeCenterPage: false,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                        ),
                        items:
                            cubit.listOfPoli.map((news) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return NewsCard(
                                    title: news['title'].toString(),
                                    desc: news['description'].toString(),
                                    pathImage: news['image'].toString(),
                                  );
                                },
                              );
                            }).toList(),
                      ),
                    ],
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
