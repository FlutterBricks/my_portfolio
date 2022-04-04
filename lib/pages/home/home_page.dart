import 'package:flutter/material.dart';
import 'package:my_portfolio/example/projects.dart';
import 'package:my_portfolio/responsive.dart';
import '../../widgets/Cards/project_card.dart';
import '../../widgets/Header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.share,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          onPressed: () {
            print("Button Pressed");
          }),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Projects",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Responsive(
                      mobile: mobileTabletBuilder(350),
                      tablet: mobileTabletBuilder(450),
                      desktop: desktopBuilder())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget mobileTabletBuilder(double height) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ProjectCard(project: projects[index]);
        },
      ),
    );
  }

  Widget desktopBuilder() {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ProjectCard(project: projects[index]);
        });
  }
}
