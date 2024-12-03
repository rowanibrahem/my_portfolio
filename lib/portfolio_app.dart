import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/presentation/widgets/body/splash/splash_view.dart';

import 'config/theme_manager.dart';
import 'presentation/blocs/home_bloc/home_bloc.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(), 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomTheme.darkTheme(),
        title: 'Rowan Ibrahim',
        home: const SplashView(),
      ),
    );
  }
}
