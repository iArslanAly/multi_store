import 'package:flutter/material.dart';
import 'package:multi_store/minor_screens/search_screen.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.deepPurple,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(25)),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchScreen(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.search,
                    color: Colors.black45,
                  ),
                ),
                Text(
                  'What are you looking for',
                  style: TextStyle(color: Colors.black45, fontSize: 18),
                ),
              ],
            ),
            Container(
              height: 35,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.deepPurple,
              ),
              child: const Center(
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
