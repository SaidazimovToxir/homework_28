// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// import 'artboard2.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       width: double.infinity,
//       padding: const EdgeInsets.only(top: 490),
//       decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("images/image.png"), fit: BoxFit.fill)),
//       child: Container(
//         alignment: Alignment.center,
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(30), topLeft: Radius.circular(30)),
//           color: Colors.white,
//         ),
//         child: Column(
//           children: [
//             Image.asset(
//               "images/scroll.png",
//               width: 40,
//               height: 40,
//             ),
//             const SizedBox(
//               height: 80,
//             ),
//             const Text(
//               "Building Better",
//               style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
//             ),
//             const Text(
//               "Workplaces",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             const Text(
//               "Create a unique emotional story that",
//               style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey,
//                   fontWeight: FontWeight.bold),
//             ),
//             const Text(
//               "describes better than words",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey,
//                   fontSize: 16),
//             ),
//             const SizedBox(
//               height: 45,
//             ),
//             Container(
//               decoration: const BoxDecoration(boxShadow: [
//                 BoxShadow(
//                     color: Color(0XFF5945FB),
//                     offset: Offset(0, 10),
//                     blurRadius: 20,
//                     spreadRadius: 1)
//               ]),
//               child: SizedBox(
//                 height: 60,
//                 width: 340,
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.pushReplacement(context,
//                         MaterialPageRoute(builder: (context) => Artboard2()));
//                   },
//                   style: ButtonStyle(
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16))),
//                     backgroundColor: MaterialStateProperty.all<Color>(
//                         const Color(0XFF5945FB)),
//                   ),
//                   child: const Text(
//                     "Get Started",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 410),
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("images/image.png"))),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "images/scroll.png",
                height: 20,
                width: 45,
              ),
              const Column(
                children: [
                  Text(
                    "Building Better Workplaces",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create a unique emotional story that describes better than words",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8D8D8D)),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 60),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xff5451D6),
                        offset: Offset(0, 5),
                        blurRadius: 14,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                        end: Alignment.bottomRight,
                        begin: Alignment.topLeft,
                        colors: [Color(0xff8B78FF), Color(0xff5451D6)])),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
