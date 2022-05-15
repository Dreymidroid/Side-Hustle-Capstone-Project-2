import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/offers.dart';
import 'package:flutter_application_1/pages/cart_screen.dart';

import 'fixMicrowave.dart';
// import 'package:repair_home_capstone2/models/offers.dart';

class Broker extends StatefulWidget {
  const Broker({Key? key}) : super(key: key);

  @override
  State<Broker> createState() => _BrokerState();
}

class _BrokerState extends State<Broker> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> sections = ["Offers", "Kitchen", "Livingroom", "Bathroom"];
    List<OffersModel> offer = [
      OffersModel(
        title: "Fix Microwave",
        sub: "Kitchen",
        leading: Icons.microwave,
      ),
      OffersModel(
        title: "Fix tv set",
        sub: "Livingroom",
        leading: Icons.tv,
      )
    ];

    TextStyle commonStyle =
        const TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF9F9F9),
        body: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: 0,
                child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      "assets/images/right_logo.png",
                      fit: BoxFit.cover,
                    ))),
            SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.02),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 5),
                                    width: 15,
                                    height: 2,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 5),
                                    width: 30,
                                    height: 2,
                                    color: Colors.black,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 5),
                                      width: 15,
                                      height: 2,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => const Cart()));
                                  },
                                  child: const Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 28,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "What's Broken?",
                                style: TextStyle(
                                    color: Color(0xff1B1B1D),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Gotham'),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xffD3D3D3),
                                        width: 1)),
                                child: Row(
                                  children: const [
                                    Expanded(
                                      child: SizedBox(
                                        height: 50,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Search appliances",
                                              hintStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 199, 199, 199),
                                                  fontFamily: 'Gotham',
                                                  fontWeight: FontWeight.w100),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.speaker,
                                      size: 26,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Offers",
                                style: commonStyle,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: const [
                                    OfferCard(
                                      title: "valid untill june 30th",
                                      description:
                                          "Cashback 5% from each repair",
                                      image: "assets/images/landing_page.png",
                                      headerColor: Color(0xffCAE8F2),
                                      mainColor: Colors.white,
                                    ),
                                    OfferCard(
                                      title: "valid untill june 30th",
                                      description: "Sale on appliances repair!",
                                      image: "assets/images/kind.png",
                                      headerColor: Color(0xffEEEDF3),
                                      mainColor: Color(0xffD1D3FA),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "We can fix it",
                                style: commonStyle,
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children:
                                        List.generate(sections.length, (index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = index;
                                          });
                                        },
                                        child: Container(
                                          decoration: selectedIndex == index
                                              ? BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(19))
                                              : null,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 8),
                                          child: Text(
                                            sections[index],
                                            style: TextStyle(
                                                color: selectedIndex == index
                                                    ? Colors.white
                                                    : Colors.grey),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: IndexedStack(
                                  index: selectedIndex,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      const FixMicrowave()));
                                        },
                                        child: Offers(
                                            list: offer, index: selectedIndex)),
                                    Container(
                                      alignment: Alignment.center,
                                      width: double.maxFinite,
                                      height: 200,
                                      child: const Text(
                                        'Kitchen',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gotham",
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: double.maxFinite,
                                      height: 200,
                                      child: const Text(
                                        'Livingroom',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gotham",
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: double.maxFinite,
                                      height: 200,
                                      child: const Text(
                                        'Bathroom',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: "Gotham",
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ])),
            ),
          ],
        ),
      ),
    );
  }
}

class Offers extends StatelessWidget {
  final List<OffersModel> list;
  final int index;
  const Offers({
    required this.list,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: index == 0
            ? List.generate(list.length, (index) {
                return ListCustom(
                  leading: list[index].leading,
                  title: list[index].title,
                  sub: list[index].sub,
                );
              })
            : []);
  }
}

class ListCustom extends StatelessWidget {
  const ListCustom({
    Key? key,
    required this.leading,
    required this.title,
    required this.sub,
  }) : super(key: key);

  final IconData leading;
  final String title;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          tileColor: const Color(0xffD6E3FF),
          leading: Container(
            margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.05),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
                color: const Color(0xffC7D9FF),
                borderRadius: BorderRadius.circular(5)),
            child: Icon(
              leading,
              color: Colors.white,
            ),
          ),
          trailing: const Icon(
            Icons.navigate_next,
            size: 32,
            color: Colors.black,
          ),
          title: Text(
            title,
            style: const TextStyle(fontFamily: "Gotham", fontSize: 15),
          ),
          subtitle: Text(
            sub,
            style: const TextStyle(fontFamily: "Gotham", fontSize: 10),
          ),
        ),
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Color headerColor;
  final Color mainColor;
  const OfferCard({
    required this.title,
    Key? key,
    required this.description,
    required this.image,
    required this.headerColor,
    required this.mainColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle common = const TextStyle(
        fontFamily: "Gotham", height: 1.4, fontWeight: FontWeight.w600);
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 20),
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.26,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: headerColor),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        width: double.maxFinite,
                        child: Text(
                          description,
                          style: common,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // alignment: Alignment.bottomLeft,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(30)),
                            image: DecorationImage(
                                image: AssetImage(image), fit: BoxFit.cover)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
