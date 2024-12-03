import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../blocs/home_bloc/home_bloc.dart';

class IntoActions extends StatelessWidget {
  const IntoActions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      CustomButton(
        label: 'My CV', 
        icon: Icons.download, 
        backgroundColor: AppColors.primaryColor,
        onPressed: _downloadCV, 
        width: 160,
      ),
      context.width < DeviceType.ipad.getMaxWidth()
          ? const SizedBox(height: 6)
          : const SizedBox(width: 32),
      CustomButton(
        label: AppBarHeaders.projects.getString(),
        icon: Icons.remove_red_eye,
        borderColor: AppColors.primaryColor,
        onPressed: () {
          context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(2));
        },
        width: 160,
      ),
    ];
    return context.width < DeviceType.ipad.getMaxWidth()
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: actions,
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: actions,
          );
  }

  void _downloadCV() async {
    const url = 'https://drive.google.com/file/d/1gazFnFHElZTTb15yUy2K_qJbgN93gzXf/view?usp=sharing'; 
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
