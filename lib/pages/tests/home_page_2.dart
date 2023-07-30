import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import 'package:trilhaapp/pages/tests/mobx/counter_mobx_page.dart';
import 'package:trilhaapp/pages/tests/mobx/counter_mobx_store_page.dart';
import 'package:trilhaapp/pages/tests/provider/counter_provider_page.dart';
import 'package:trilhaapp/pages/tests/provider/task_provider_page.dart';
import 'package:trilhaapp/service/dark_mode_service.dart';
import '../../shared/widgets/custom_drawer.dart';
import 'brasil_fields_page.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustonDrawer(),
      appBar: AppBar(
        title: Text(
          "APP_TITLE".tr(),
          style: GoogleFonts.roboto(),
        ),
        actions: [
          Center(child: Text("Dark mode")),
          Consumer<DarkModeService>(builder: (_, darkModeService, widget) {
            return Switch(
                value: darkModeService.darkMode,
                onChanged: (bool value) {
                  darkModeService.darkMode = value;
                });
          })
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          const CounterProviderPage(),
          TaskProviderPage(),
          CounterMobXPage(),
          CounterMobXStorePage(),
          const BrasilFieldsPage()
        ],
      ),
      bottomNavigationBar: ConvexAppBar.badge(
        const {0: '99+', 1: Icons.assistant_photo, 2: Colors.redAccent},
        items: const [
          TabItem(icon: Icons.home, title: 'P_1'),
          TabItem(icon: Icons.map, title: 'P_2'),
          TabItem(icon: Icons.add, title: 'MobX'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Brasil'),
        ],
        onTap: (int i) => tabController.index = i,
        controller: tabController,
      ),
    );
  }
}
