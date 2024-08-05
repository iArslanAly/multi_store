import 'package:flutter/material.dart';
import 'package:multi_store/utilities/categ_list.dart';

import 'package:multi_store/widgets/search_widget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchWidget(),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black45,
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: sideNavigator(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: categView(),
          ),
        ],
      ),
    );
  }

  Widget sideNavigator() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.2,
      child: ListView.builder(
          itemCount: maincateg.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                for (var i = 0; i < isSelected.length; i++) {
                  isSelected[i] = false;
                }
                setState(() {
                  // Assuming maincateg is a list of objects with an 'isSelected' property
                  isSelected[index] = !isSelected[index];
                });
              },
              child: Container(
                height: 80,
                color: isSelected[index]
                    ? Colors.deepPurple.shade100
                    : Colors.deepPurple,
                child: Center(
                  child: Text(
                    maincateg[index],
                    style: TextStyle(
                      color:
                          isSelected[index] ? Colors.deepPurple : Colors.white,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget categView() {
    return Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.8,
        color: Colors.deepPurple.shade100,
        child: PageView(
          children: const [
            Center(
              child: Text(
                'Men CAtegorie',
              ),
            )
          ],
        ));
  }
}

//copping the acutal length of the list ''maincateg''
List<bool> isSelected = List.generate(maincateg.length, (index) => false);
