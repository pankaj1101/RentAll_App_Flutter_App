import 'package:flutter/material.dart';
import 'package:rentall/config/color.dart';

class LiveView extends StatefulWidget {
  const LiveView({super.key});

  @override
  State<LiveView> createState() => _LiveViewState();
}

class _LiveViewState extends State<LiveView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.25,
                  color: AppColor.primaryColor,
                  child: Stack(
                    children: [
                      Column(children: [
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              const Text(
                                "Where Do you\nwant to go?",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Icon(
                                  Icons.person_2_sharp,
                                  size: 60,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 140,
              child: SizedBox(
                width: size.width,
                // height: 100,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                      elevation: 6,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 600,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    LiveViewDataCard(
                                      text: "Airplan",
                                      iconData:
                                          Icons.airplanemode_active_outlined,
                                    ),
                                    Spacer(),
                                    LiveViewDataCard(
                                      text: "Train",
                                      iconData: Icons.train_outlined,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    LiveViewDataCard(
                                      text: "Bus",
                                      iconData: Icons.bus_alert_outlined,
                                    ),
                                    Spacer(),
                                    LiveViewDataCard(
                                      text: "Tour",
                                      iconData: Icons.tour,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    LiveViewDataCard(
                                      text: "Hotel",
                                      iconData: Icons.hotel,
                                    ),
                                    Spacer(),
                                    LiveViewDataCard(
                                      text: "House",
                                      iconData: Icons.home,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const CustomTextFiled(hintText: 'From'),
                                SizedBox(height: 10),
                                CustomTextFiled(hintText: 'To'),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                      width: 140,
                                      height: 50,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFF5F5F5),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: const Color(0xFFB7B7B7))),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Departure",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFB7B7B7)),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.calendar_month_outlined,
                                            size: 20,
                                            color: Color(0xFFB7B7B7),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      width: 140,
                                      height: 50,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFF5F5F5),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xFFB7B7B7))),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Return",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFB7B7B7)),
                                          ),
                                          // const SizedBox(width: 10),
                                          Spacer(),
                                          Icon(
                                            Icons.calendar_month_outlined,
                                            size: 20,
                                            color: Color(0xFFB7B7B7),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Row(
                                    children: [
                                      SizedBox(width: 15),
                                      Expanded(
                                          child: Text(
                                        "1 Traveller",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      )),
                                      Icon(Icons.arrow_drop_down_outlined),
                                      SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: size.width,
                                  height: 60,
                                  child: ElevatedButton(
                                      onPressed: () {}, child: Text("Search")),
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextFiled extends StatelessWidget {
  final String hintText;
  const CustomTextFiled({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class LiveViewDataCard extends StatelessWidget {
  final IconData iconData;
  final String text;
  const LiveViewDataCard({
    super.key,
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 80,
      decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Color(0xFFB7B7B7))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 30,
            color: const Color(0xFFB7B7B7),
          ),
          const SizedBox(width: 20),
          Text(
            text,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFFB7B7B7)),
          ),
        ],
      ),
    );
  }
}
