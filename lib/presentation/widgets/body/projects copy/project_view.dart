import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/core/constants.dart';
import 'package:portfolio/presentation/widgets/body/projects%20copy/components/projects_controller.dart';
import 'package:portfolio/presentation/widgets/body/projects%20copy/components/title_text.dart';
import 'package:portfolio/responsive.dart';
import 'components/projects_grid2.dart';
class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isLargeMobile(context))const SizedBox(
              height: defaultPadding,
            ),
            const TitleText(prefix: 'Latest', title: 'Projects'),
            const SizedBox(
              height: defaultPadding,
            ),
            Responsive(
                desktop: ProjectGrid(crossAxisCount: 3,),
                extraLargeScreen: ProjectGrid(crossAxisCount: 4,),
                largeMobile: ProjectGrid(crossAxisCount: 1,ratio: 1.8),
                mobile: ProjectGrid(crossAxisCount: 1,ratio: 1.5),
                tablet: ProjectGrid(ratio: 1.4,crossAxisCount: 2,))
          ],
        ),
      ),
    );
  }
}







