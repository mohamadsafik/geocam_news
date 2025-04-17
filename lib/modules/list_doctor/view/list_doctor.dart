import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rs_ui/engine/engine.dart';
import 'package:rs_ui/modules/list_doctor/cubit/list_doctor_cubit.dart';
import 'package:rs_ui/resources/resources.dart';
import 'package:rs_ui/themes/themes.dart';
import 'package:rs_ui/widgets/widgets.dart';

class ListDoctorPage extends StatelessWidget {
  const ListDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ListDoctorCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 16),
        ),
        title: Text('Informasi Dokter', style: AppFont.whiteLarge(context)),
        backgroundColor: AppColor.appColor.primary,
      ),
      body: BlocBuilder<ListDoctorCubit, ListDoctorState>(
        builder: (context, state) {
          return ContainerStateHandler(
            loading: Center(child: CircularProgressIndicator()),
            status: state.status,
            refresherOptions: cubit.defaultRefresh,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              shrinkWrap: true,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Icon(
                        Icons.dashboard_outlined,
                        color: AppColor.appColor.primary,
                        size: 24,
                      ),
                      SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.appColor.primary,
                          border: Border.all(
                            color:
                                AppColor
                                    .appColor
                                    .primary, // Ubah ke warna yang diinginkan
                            width: 0.4,
                          ),
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Semua Dokter",
                          style: AppFont.medium(
                            context,
                          )?.copyWith(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue, // Ubah ke warna yang diinginkan
                            width: 0.4,
                          ),
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Dokter Gigi",
                          style: AppFont.medium(context),
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue, // Ubah ke warna yang diinginkan
                            width: 0.4,
                          ),
                          borderRadius: BorderRadius.circular(36),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Dokter Mata",
                          style: AppFont.medium(context),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.listOfDoctor.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Card(
                        child: Container(
                          width: baseWidth,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 8,
                                spreadRadius: 1,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            state.listOfDoctor[index]["name"]
                                                .toString(),
                                            style: AppFont.mediumBold(context),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            state
                                                .listOfDoctor[index]["specialist"]
                                                .toString(),
                                            textAlign: TextAlign.center,
                                            style: AppFont.small(context),
                                          ),
                                          SizedBox(height: 4),
                                          Container(
                                            width: baseWidth / 2,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.event_available,
                                                  color:
                                                      AppColor.appColor.primary,
                                                  size: 16,
                                                ),
                                                Text(
                                                  " 12 Nov, 2024 ",
                                                  style: AppFont.small(context),
                                                ),
                                                Icon(
                                                  Icons.fiber_manual_record,
                                                  color: Colors.black,
                                                  size: 12,
                                                ),
                                                Text(
                                                  " 09:00 am",
                                                  style: AppFont.small(context),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          state.listOfDoctor[index]["image"]
                                              .toString(),
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color:
                                              Colors
                                                  .blue, // Ubah ke warna yang diinginkan
                                          width: 0.4,
                                        ),
                                        borderRadius: BorderRadius.circular(36),
                                      ),
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Lihat Jadwal",
                                        style: TextStyle(
                                          color:
                                              Colors
                                                  .blue, // Sesuaikan dengan warna border
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color:
                                              Colors
                                                  .blue, // Ubah ke warna yang diinginkan
                                          width: 0.4,
                                        ),
                                        borderRadius: BorderRadius.circular(36),
                                      ),
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Buat Janji",
                                        style: TextStyle(
                                          color:
                                              Colors
                                                  .blue, // Sesuaikan dengan warna border
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 16);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
