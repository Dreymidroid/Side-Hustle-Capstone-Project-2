import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color(0xffF9F9F9),
        body: Stack(
          children: [
            Opacity(
              opacity: 0.1,
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/images/left_logo.png",)
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 43.0),
              child: SingleChildScrollView(
                child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.15, bottom: size.height * 0.07),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/rep.png"),
                          Text(
                            'REPAIR HOME',
                            style: TextStyle(
                                color: const Color(0xff1F319D),
                                fontSize: size.width * 0.06,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    'Create new account',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 14, bottom: 56),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 31),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 223, 223, 223),
                                    blurRadius: 5,
                                    offset: Offset(2, 3))
                              ]),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 31),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 223, 223, 223),
                                    blurRadius: 5,
                                    offset: Offset(2, 3))
                              ]),
                          // height: 5,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 31),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 223, 223, 223),
                                    blurRadius: 5,
                                    offset: Offset(2, 3))
                              ]),
                          // height: 5,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Confirm password",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          padding: const EdgeInsets.symmetric(
                              vertical: 22, horizontal: 10),
                          decoration: BoxDecoration(
                              color: const Color(0xff1F319D),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(185, 31, 50, 157),
                                    blurRadius: 5,
                                    offset: Offset(-2, 3))
                              ]),
                          child: const Text(
                            'Sign up',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey),
                        ),
                        const Text(
                          'Or sign up with',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 2),
                          height: 2,
                          width: 5,
                          decoration: const BoxDecoration(
                              // shape: BoxShape.circle,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:45.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Social(image: "assets/images/google.png"),
                        Social(image: "assets/images/fb.png"),
                        Social(image: "assets/images/twitter.png")
                        ],
                    ),
                  )
                ]),
              ),
            ),
          ],
        ));
  }
}

class Social extends StatelessWidget {
  final String image;
  const Social({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 18),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Image.asset(
        image,
        width: 24,
        height: 24,
        fit: BoxFit.cover,
      ),
    );
  }
}
