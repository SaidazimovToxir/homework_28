import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class Artboard2 extends StatelessWidget {
  Widget getContainer(
      String text, String number, List<Color> colors1, double boyi) {
    return Container(
      width: 170,
      height: boyi,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors1,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$number",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Text(
            "$text",
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFE5E5E5),
        appBar: AppBar(
          backgroundColor: Color(0XFFE5E5E5),
          title: const Padding(
            padding: EdgeInsets.only(left: 10, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  "25 October",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                    child: const Icon(
                      Icons.search,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/avatar.png"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Hi Surf.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "5 Tasks are predning",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              OngoingSection(
                  color_1: Color(0xff8B78FF),
                  color_2: Color(0xff5451D6),
                  title: "Information architecture",
                  name: "Saber",
                  allClock: "Now"),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Monthly Preview",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      getContainer(
                        "Done",
                        "22",
                        const [Color(0XFFA9FFEA), Color(0XFF00B288)],
                        190,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      getContainer("Ongoing", "12",
                          const [Color(0XFFFFA0BC), Color(0XFFFF1B5E)], 140),
                    ],
                  ),
                  Column(
                    children: [
                      getContainer(
                        "In Progres",
                        "7",
                        const [Color(0XFFFFD29D), Color(0XFFFF9E2D)],
                        140,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      getContainer(
                        "Ongoing",
                        "12",
                        const [Color(0XFFB1EEFF), Color(0XFF29BAE2)],
                        190,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Image.asset("images/bottom_home.png"));
  }
}

class OngoingSection extends StatelessWidget {
  final Color color_1;
  final Color color_2;
  final String title;
  final String name;
  final String allClock;

  const OngoingSection({
    super.key,
    required this.color_1,
    required this.color_2,
    required this.title,
    required this.name,
    required this.allClock,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Container(
              height: 130,
              // width: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    color_1,
                    color_2,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Image.asset("images/man.png",
                                height: 30, width: 30),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: Image.asset("images/woman.png",
                                  height: 30, width: 30),
                            ),
                          ],
                        ),
                        Text(
                          allClock,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
