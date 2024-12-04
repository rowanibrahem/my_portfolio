import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'Flutter DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'Crafting high-performance, user-friendly apps with features like API integration, state management (Bloc/Provider), and secure payment gateways',
    ),
    CustomService(
      service: 'Project Manager',
      logo: AppAssets.uiDesignLogo,
      description:
          'Leading Agile projects, gathering requirements, managing teams, and ensuring on-time delivery.',
    ),
    CustomService(
      service: 'Tech Writing & Training',
      logo: AppAssets.scrappingLogo,
      description:
          'Creating technical documentation, mentoring on Flutter, and delivering development workshops.',
    ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'Educational App',
      imageUrl:
          'assets/images/Afro logo 1.png',
      description:
          'Educational App show courses in diffrent category and details of them  with ability to add to cart and pay it with paybal',
      githubRepoLink: 'https://github.com/rowanibrahem/afro_app.git',
      previewLink: 'https://drive.google.com/file/d/1-TeRzaO19VKidAVVDgGIploHsHLc4h9W/view?usp=drive_link',
    ),
    Project(
      name: 'Rabeh App',
      imageUrl:
          'assets/images/rabeh.png',
      description:
          'App used by drivers to to easy settelement , show thier invoices and thier orders ',
      previewLink: 'https://play.google.com/store/apps/details?id=com.rabeh.rabehdriver',
    ),
    Project(
      name: 'Meal App',
      imageUrl:
          'assets/images/meal2.png',
      description:
          'App to preview Meals in diffrent categories with thier ingredients and recipes have two themes and two languages',
      githubRepoLink: 'https://github.com/rowanibrahem/Meal-App',
      previewLink: 'https://www.linkedin.com/posts/rowanibrahem_flutterdeveloper-fluttercommunity-fluterapps-activity-7054887126403850240-OIFJ?utm_source=share&utm_medium=member_desktop',
    ),
    Project(
      name: 'Dar Elsoker',
      imageUrl:
          'assets/images/ii.png',
      description: 'As a project manager , I lead this project about clinical management system',
      githubRepoLink:
          '',
      previewLink: 'https://www.linkedin.com/posts/rowanibrahem_projectmanagement-agile-softwaredevelopment-activity-7228808337008541697-9Q7T?utm_source=share&utm_medium=member_android',
    ),
    Project(
      name: 'MidLink Hub',
      imageUrl:
          'assets/images/logoo.png',
      description:
          'It is about referring systems in hospitals and I just made it as prototype.',
      previewLink: 'https://www.linkedin.com/posts/rowanibrahem_innovegypt-midlinkhub-innovegypt-activity-7237907549885259776-iKRF?utm_source=share&utm_medium=member_android',
    ),
    Project(
      name: 'My Articles',
      imageUrl:
          'assets/images/_b9de772c-df1b-4060-b527-8b055f95baf6.jpg',
      description:
          'I wrote articles in diffrent topics such as clan code , CI/CD in flutter and text overflow ',
      previewLink: 'https://www.linkedin.com/newsletters/tech-tales-7214681089842307073/',
    ),
    // Project(
    //   name: 'Ghaslah',
    //   imageUrl:
    //       'https://drive.google.com/uc?id=1ed4H2-cH6yk_kVkDdxOLcUkgP1xpuo72',
    //   description:
    //       'An application for add wash cars reservation with location in map and the picker will come to wash the cars',
    //   previewLink: 'https://youtu.be/gkeRSAfCZaI',
    // ),
    // Project(
    //   name: 'Zawilan',
    //   imageUrl:
    //       'https://drive.google.com/uc?id=1ElTwguynMLqhS295-IE7bTTabsZGZp8s',
    //   description:
    //       'Zwailan is an education app based on units and sections system, you start by sign up on app and wait until the teacher accept your join request.',
    //   previewLink: 'https://youtu.be/g92W-SmfkKc',
    //   googlePlay:
    //       'https://play.google.com/store/apps/details?id=com.radyhaggag.zawilan',
    // ),
  ];
  static const defaultPadding = 20.0;
}
