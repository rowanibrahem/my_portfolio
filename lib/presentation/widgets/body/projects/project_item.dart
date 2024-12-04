import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/project.dart';
import 'project_actions.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primaryLight,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipOval(
                  child: Image.network(
                    project
                        .imageUrl, // Assume your project model has an `imageUrl`
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover, // Ensure the image fills the circle
                  ),
                ),
              ),
            ),
            // ProjectImage(imageUrl: project.imageUrl),
            const SizedBox(height: 20),
            FittedBox(
              child: Text(
                project.name,
                style: AppStyles.s24.copyWith(color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: AutoSizeText(
                project.description,
                style: AppStyles.s18,
                minFontSize: 12,
                maxLines: 4,
              ),
            ),
            const SizedBox(height: 8),
            // if (project.previewLink != null || project.githubRepoLink != null)
            ProjectActions(project: project),
          ],
        ),
      );
  }
}
