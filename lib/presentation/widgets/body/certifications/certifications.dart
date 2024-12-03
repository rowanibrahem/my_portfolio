import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/presentation/widgets/body/certifications/components/certification_controller.dart';
import 'package:portfolio/presentation/widgets/body/certifications/components/title_text.dart';
import 'package:portfolio/responsive.dart';
import 'components/certification_grid.dart';

class Certifications extends StatelessWidget {
  final controller=Get.put(CertificationController());
   Certifications({super.key});
   static const defaultPadding = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'Certifications & ', title: 'License'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: CertificateGrid(crossAxisCount: 3,ratio: 1.5,),
                  extraLargeScreen: CertificateGrid(crossAxisCount: 4,ratio: 1.6),
                  largeMobile: CertificateGrid(crossAxisCount: 1,ratio: 1.8),
                  mobile: CertificateGrid(crossAxisCount: 1,ratio: 1.4),
                  tablet: CertificateGrid(ratio: 1.7,crossAxisCount: 2,)))
        ],
      ),
    );
  }
}










