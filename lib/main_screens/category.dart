import 'package:flutter/material.dart';
import 'package:multi_store/categories/men_categ.dart';
import 'package:multi_store/utilities/categ_list.dart';
import 'package:multi_store/widgets/search_widget.dart';

List<ItemsData> items = [
  ItemsData(label: 'Men'),
  ItemsData(label: 'Women'),
  ItemsData(label: 'Electronics'),
  ItemsData(label: 'Accessories'),
  ItemsData(label: 'Shoes'),
  ItemsData(label: 'Home & garden'),
  ItemsData(label: 'Beauty'),
  ItemsData(label: 'Kids'),
  ItemsData(label: 'Bags'),
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
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
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _pageController.jumpToPage(
                  index,
                );

                /* for (var i = 0; i < isSelected.length; i++) {
                  isSelected[i] = false;
                }
                setState(() {
                  // Assuming maincateg is a list of objects with an 'isSelected' property
                  isSelected[index] = true;
                });*/
              },
              child: Container(
                height: 80,
                color: isSelected[index] ? Colors.white : Colors.deepPurple,
                child: Center(
                  child: Text(
                    items[index].label,
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
      color: Colors.white,
      child: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          for (var i = 0; i < isSelected.length; i++) {
            isSelected[i] = false;
          }
          setState(() {
            // Assuming maincateg is a list of objects with an 'isSelected' property
            isSelected[index] = true;
          });
        },
        children: const [
          MenCateg(),
          Center(child: Text('Women Category')),
          Center(child: Text('Electronics Category')),
          Center(child: Text('Accessories Category')),
          Center(child: Text('Shoes Category')),
          Center(child: Text('Home & GArden Category')),
          Center(child: Text('Beauty Category')),
          Center(child: Text('Kids Category')),
          Center(child: Text('Bags Category')),
        ],
      ),
    );
  }
}

//copping the acutal length of the list ''maincateg''
List<bool> isSelected = List.generate(maincateg.length, (index) => false);

class ItemsData {
  ItemsData({required this.label, this.isSelected = false});

  String label;
  bool isSelected;
}
