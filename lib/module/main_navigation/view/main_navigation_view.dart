import 'package:flutter/material.dart';
import 'package:medhub/core.dart';
import '../controller/main_navigation_controller.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({super.key});

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 5,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            DashboardView(),
            NotificationView(),
            AddView(),
            CheckoutView(),
            MyProfileView()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icon/home_icon.png",
                  width: 23,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icon/notification_icon.png",
                  width: 23,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Stack(
                  children: [
                    Image.asset(
                      "assets/icon/add_icon.png",
                      width: 55,
                    ),
                    const Positioned(
                      top: 14,
                      left: 16,
                      child: ImageIcon(
                        AssetImage(
                          "assets/icon/plus_icon.png",
                        ),
                        size: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 50,
                  width: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Image.asset(
                      "assets/icon/shop_icon.png",
                      width: 36,
                    ),
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icon/profil_icon.png",
                  width: 24,
                ),
                label: ""),
          ],
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
