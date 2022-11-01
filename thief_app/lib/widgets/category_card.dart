
import 'package:flutter/material.dart';
import '../model/category.dart';
import '../screens/category_page.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    Key? key,
    required this.category
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CategoryPage(category: category))
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              //padding: EdgeInsets.all(10),
              //height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(category.imgUrl),
                  fit: BoxFit.cover
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(1.0, 2.0),
                    blurRadius: 4.0
                  )
                ]
              ),
            ),
          ),
          SizedBox(height: 14),
          Text(category.categoryName, style: Theme.of(context).textTheme.headline6)
        ],
      ),
    );
  }
}
