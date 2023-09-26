import 'package:flutter/material.dart';
import 'package:stylish/widgets/app_text_field.dart';
import 'package:stylish/widgets/product_card.dart';

class SearchScreen extends StatefulWidget {
  static const String screenRoute = '/search_screen';

  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

late TextEditingController _searchEditingController;

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
    _searchEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _searchEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_outlined),
          color: Colors.black,splashColor: Colors.transparent,highlightColor: Colors.transparent,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Colors.black,highlightColor: Colors.transparent,splashColor: Colors.transparent,
          )
        ],
        title: AppTextField(radiusTop: 15,radiusBottom: 15,paddingTop: 20,paddingBottom: 10,
            controller: _searchEditingController,
            hint: 'Sarech',
            keyboard: TextInputType.name,
            constraints: 50,
            suffix: Icons.search_rounded,
            backGroundSuffixColor: const Color(0xff4030FF),
            suffixColor: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(top: 20),
        child: GridView.builder(
          itemCount: 80,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 156 / 167),
          itemBuilder: (context, index) {
            return  ProductCard(
                price: 115, productTitle: ' Artboard in good condition.');
          },
        ),
      ),
    );
  }
}
