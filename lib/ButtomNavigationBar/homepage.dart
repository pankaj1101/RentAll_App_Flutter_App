import 'package:flutter/material.dart';
import 'package:rentall/config/path.dart';
import '../HomePageTabs/product_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchField = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    // var edgeInsets = const EdgeInsets.only(top: 8.0, bottom: 8, left: 15);
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // AppLogo...
              const SizedBox(width: 5),
              Image(
                image: AssetImage(ImagePath.logoPath),
                width: 100,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F5F9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Icon(Icons.search, color: Colors.grey.shade500),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: _searchField,
                          autofocus: false,
                          decoration: const InputDecoration(
                            hintText: 'What are you looking for...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 1),
          // Tabbar...
          Product(),
        ],
      ),
    );
  }
}
