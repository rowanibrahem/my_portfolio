import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/constants.dart';
import 'package:portfolio/presentation/widgets/body/projects%20copy/components/project_info.dart';
import 'package:portfolio/presentation/widgets/body/projects%20copy/components/project_model.dart';
import 'package:portfolio/presentation/widgets/body/projects%20copy/components/projects_controller.dart';

class ProjectGrid2 extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  ProjectGrid2({super.key, this.crossAxisCount = 3,  this.ratio=1.3});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: projectList.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return Obx(() => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(colors: [
                  Colors.pinkAccent,
                  Colors.blue,
                ]),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.pink,
                    offset: const Offset(-2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                  BoxShadow(
                      color: Colors.blue,
                      offset: const Offset(2, 0),
                      blurRadius: controller.hovers[index] ? 20 : 10,),
                ]),
            child: ProjectStack(index: index)
        ));
      },
    );
  }
}