import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/body/certifications/components/title_text.dart';
import 'package:portfolio/presentation/widgets/body/projects/projects_grid.dart';



class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const ProjectsIntro(),
          TitleText(prefix: 'Featured', title: 'Projects',),
          SizedBox(height: 52),
          ProjectsGrid(),
        ],
      ),
    );
  }
}
