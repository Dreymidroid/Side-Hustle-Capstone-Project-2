// ignore: file_names
import 'package:flutter/material.dart';

class FixMicrowave extends StatelessWidget {
  const FixMicrowave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(111, 255, 215, 203),
              // Color(0xFFF3B29E),
              child: Stack(
                children: [
                  Container(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "assets/images/fixImg.png",
                        scale: 0.5,
                        color: const Color.fromARGB(101, 0, 0, 0)
                      )),
                  Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.navigate_before,
                              size: 48,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: size.size.width * 0.25),
                            child: Text(
                              "Fix Microwave",
                              style: TextStyle(
                                  color: const Color(0xff1B1B1D),
                                  fontSize: size.size.width * 0.06,
                                  fontFamily: "Gotham"),
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.08),
                        child: Image.asset(
                          "assets/images/microwave.png",
                          scale: 1.2,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.025),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(111, 255, 215, 203),
                          borderRadius: BorderRadius.circular(12)),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.085,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const Text("Reviews")),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.02),
                    height: MediaQuery.of(context).size.height * 0.085,
                    width: MediaQuery.of(context).size.width * 0.17,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(
                      Icons.sms_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.062),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color.fromRGBO(232, 232, 232, 1)),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Repair"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  const Text("(\$52")
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.062),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color.fromRGBO(232, 232, 232, 1)),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Setup"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  const Text("\$12")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.032,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.34,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: const Text(
                      "Order repair",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),// 
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.34,
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.7, color: const Color.fromRGBO(232, 232, 232, 1)),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text("Order setup"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
