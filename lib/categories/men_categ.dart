import 'package:flutter/material.dart';

import 'package:multi_store/categories/sub_categ_product.dart';
import 'package:multi_store/utilities/categ_list.dart';

/*List<String> images = [
  'images/try/image0.jpg',
  'images/try/image1.jpg',
  'images/try/image2.jpg',
  'images/try/image3.jpg',
];
*/

class MenCateg extends StatelessWidget {
  const MenCateg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.all(25),
        child: Text(
          'Men',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.68,
        child: GridView.count(
          crossAxisSpacing: 15,
          mainAxisSpacing: 50,
          crossAxisCount: 3,
          children: List.generate(men.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SubCategProduct(
                              mainCategName: 'men',
                              subCategName: men[index],
                            )));
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Image(
                      image: AssetImage('images/men/men$index.jpg'),
                    ),
                  ),
                  Text(men[index]),
                ],
              ),
            );
          }),
        ),
      ),
    ]);
  }
}
