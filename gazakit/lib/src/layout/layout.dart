import 'package:flutter/material.dart';
import 'package:gazakit/src/features/Home/view/home.dart';
import 'package:gazakit/src/features/informMe/view/informMe.dart';
import 'package:gazakit/src/layout/widgets/bottomNavBarItem.dart';
import 'package:gazakit/src/utils/extentions.dart';
import '../features/contribute/view/contribute.dart';
import '../utils/assets.dart';
import '../utils/strings.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  void updateIndex(int index_) {
    setState(() {
      index = index_;
    });
  }

  final homeWidgets = [
    const Home(),
    const ContributeView(),
    const InformMeView(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: index==1? const Color.fromARGB(255, 105, 35, 30):const Color.fromARGB(255, 105, 35, 30),
      body: Container(
        decoration: BoxDecoration(
          image: index == 0
              ? const DecorationImage(
                  image: AssetImage(kBackgroundImage),
                  fit: BoxFit.cover,
                )
              :null ,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: homeWidgets[index],
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 6, left: 35, right: 30),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavBarItem(
                    filledImage: "assets/home.png",
                    emptyImage: "assets/homee.png",
                    label: "Home",
                    index: 0,
                    updateIndex: updateIndex,
                    currentIndex: index,
                  ),
                  BottomNavBarItem(
                    filledImage: "assets/contribute-full.png",
                    emptyImage: "assets/contribute.png",
                    label: "Contribute",
                    index: 1,
                    updateIndex: updateIndex,
                    currentIndex: index,
                  ),
                  BottomNavBarItem(
                    filledImage: "assets/discover-full.png",
                    emptyImage: "assets/inform.png",
                    label: "Discover",
                    index: 2,
                    updateIndex: updateIndex,
                    currentIndex: index,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
