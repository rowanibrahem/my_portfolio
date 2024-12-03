import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/body/certifications/components/title_text.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

import 'detailed_services_grid.dart';

class DetailedServicesSection extends StatelessWidget {
  const DetailedServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child:  TitleText(prefix: 'The Service', title: 'I offer',),
          // Text(
          //   AppStrings.servicesIOffer,
          //   style: AppStyles.s32,
          // ),
        ),
        SizedBox(height: 32),
        DetailedServicesGrid(),
      ],
    );
  }
}
