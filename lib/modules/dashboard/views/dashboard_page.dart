import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rs_ui/themes/themes.dart';

import '../../../engine/base/app.dart';
import '../../../widgets/widgets.dart';
import '../cubit/dashboard_cubit.dart';

///
/// Created by alfianhpratama on 26/10/22
///

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = baseWidth;

    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          body: PageStorage(
            bucket: context.read<DashboardCubit>().bucket,
            child: state.currentScreen,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,

          resizeToAvoidBottomInset: false,
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BottomNavigation(
                centerTitle: 'Scan',
                items: [
                  BottomNavigationItemData(
                    label: 'Beranda',
                    icon: Icon(Icons.home, color: Colors.white, size: 26),
                    activeIcon: Icon(
                      Icons.home,
                      color: AppColor.appColor.orange,
                      size: 26,
                    ),
                  ),
                  BottomNavigationItemData(
                    label: 'Riwayat',
                    icon: Icon(Icons.list, color: Colors.white, size: 26),
                    activeIcon: Icon(
                      Icons.list,
                      color: AppColor.appColor.orange,
                      size: 26,
                    ),
                  ),
                  BottomNavigationItemData(
                    label: 'Akun',
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 26,
                    ),
                    activeIcon: Icon(
                      Icons.account_circle,
                      color: AppColor.appColor.orange,
                      size: 26,
                    ),
                  ),
                ],
                onChangePage: context.read<DashboardCubit>().changeTab,
                selectedColor: AppColor.appColor.orange,
                unselectedColor: Colors.white,
                currentPage: state.currentTab,
              ),
              Container(
                width: width,
                height: width * 0,
                color: AppColor.appColor.primary,
              ),
            ],
          ),
        );
      },
    );
  }
}
