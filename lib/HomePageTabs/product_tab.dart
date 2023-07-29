import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Text(
          "For Your Business",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),

        //Horizontall Scroll View...YourBusinessCard
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Expanded(
            child: Row(
              children: [
                YourBusinessCard(
                  text: "All Categories",
                  color: const Color(0xFFFF7300),
                  icon: Icons.category_sharp,
                  press: () {},
                ),
                const SizedBox(width: 15),
                YourBusinessCard(
                  text: "Request for\nQuotation",
                  color: Color(0xFF2D538D),
                  icon: Icons.request_page_sharp,
                  press: () {
                    print("Request for Quotation");
                  },
                ),
                const SizedBox(width: 15),
                YourBusinessCard(
                  text: "Ready to Ship",
                  color: Color(0xFF8D2C72),
                  icon: Icons.sailing_sharp,
                  press: () {},
                ),
                const SizedBox(width: 15),
                YourBusinessCard(
                  text: "Worldwide\nSelection",
                  color: Color(0xFF5342B7),
                  icon: Icons.assured_workload_sharp,
                  press: () {},
                ),
                const SizedBox(width: 15),
                YourBusinessCard(
                  text: "Logistics\nServices",
                  color: Color(0xFF166D4E),
                  icon: Icons.room_service_sharp,
                  press: () {},
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        // Top Ranking..
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Top Rating",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward,
              size: 24,
              color: Colors.black,
            ),
          ],
        ),

        // TopRating  Card..
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TopRankingCard(
                text: "Boat Speaker",
                imagePath: "assets/product/speaker1.png",
                press: () {},
              ),
              const SizedBox(width: 15),
              TopRankingCard(
                text: "Gopro Camera",
                imagePath: "assets/product/gopro.png",
                press: () {},
              ),
              const SizedBox(width: 15),
              TopRankingCard(
                text: "Sony Speaker",
                imagePath: "assets/product/speaker2.png",
                press: () {},
              ),
              const SizedBox(width: 15),
              TopRankingCard(
                text: "Amazon Echo Dot",
                imagePath: "assets/product/speaker3.png",
                press: () {},
              ),
              const SizedBox(width: 15),
            ],
          ),
        ),

        const SizedBox(height: 30),
        // Top Ranking product list..
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Top Rating",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward,
              size: 24,
              color: Colors.black,
            ),
          ],
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TopRankingProductCard(
                productPrice: "860",
                productQuntity: "1",
                imagePath: "assets/product/speaker3.png",
                press: () {},
              ),
              const SizedBox(width: 15),
              TopRankingProductCard(
                productPrice: "990",
                productQuntity: "1",
                imagePath: "assets/product/speaker2.png",
                press: () {},
              ),
              const SizedBox(width: 15),
              TopRankingProductCard(
                productPrice: "750",
                productQuntity: "1",
                imagePath: "assets/product/gopro.png",
                press: () {},
              ),
              const SizedBox(width: 15),
              TopRankingProductCard(
                productPrice: "300",
                productQuntity: "1",
                imagePath: "assets/product/speaker1.png",
                press: () {},
              ),
              const SizedBox(width: 15),
            ],
          ),
        ),
      ],
    );
  }
}

class TopRankingCard extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback press;

  const TopRankingCard({
    super.key,
    required this.text,
    required this.imagePath,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: 160,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF1F5F9),
        ),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 170,
              padding: const EdgeInsets.all(8),
              child: Image(
                image: AssetImage(imagePath),
              ),
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ]),
      ),
    );
  }
}

class TopRankingProductCard extends StatelessWidget {
  final String productPrice;
  final String productQuntity;
  final String imagePath;
  final VoidCallback press;

  const TopRankingProductCard({
    super.key,
    required this.imagePath,
    required this.press,
    required this.productPrice,
    required this.productQuntity,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        width: 160,
        height: 210,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 150,
            child: Image(
              image: AssetImage(imagePath),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 2),
            child: Text(
              'Rs: $productPrice.00',
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          // SizedBox(
          //   height: 2,
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 2),
            child: Text(
              'MOQ: $productQuntity piece',
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
      ),
    );
  }
}

class YourBusinessCard extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final VoidCallback press;

  const YourBusinessCard(
      {super.key,
      required this.text,
      required this.color,
      required this.icon,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          width: 150,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(width: 5),
              Icon(
                icon,
                size: 24,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
