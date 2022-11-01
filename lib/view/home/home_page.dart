import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yo_bray/ulits/constant.dart';
import 'package:yo_bray/widgets/drawer_widget.dart';
import 'component/job_list.dart';
import 'component/product_list.dart';
import 'controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        drawer: DrawerWidget(),
        appBar: AppBar(
          leadingWidth: leadingWidth,
          title: Text('Home'),
          // actions: [
          //   IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          // ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 45,
              child: TabBar(
                labelColor: kPrimary,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(icon: Text("Products")),
                  Tab(icon: Text("Jobs")),
                ],
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  ProductTab(),

                  // second tab bar viiew widget
                  JobTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
