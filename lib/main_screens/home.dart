import 'package:flutter/material.dart';
import 'package:multi_store/utilities/categ_list.dart';
import 'package:multi_store/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 4.0,
          backgroundColor: Colors.white,
          title: const SearchWidget(),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 3;
          },
          bottom: TabBar(
              labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              isScrollable: true,
              tabAlignment: TabAlignment.center,
              tabs: <Widget>[
                Tab(
                  text: maincateg[0],
                ),
                Tab(
                  text: maincateg[1],
                ),
                Tab(
                  text: maincateg[2],
                ),
                Tab(
                  text: maincateg[3],
                ),
                Tab(
                  text: maincateg[4],
                ),
                Tab(
                  text: maincateg[5],
                ),
                Tab(
                  text: maincateg[7],
                ),
                Tab(
                  text: maincateg[8],
                ),
              ]),
        ),
        body: const Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}
