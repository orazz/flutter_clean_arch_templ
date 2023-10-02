import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arch_templ/config/routes/routes.dart';
import 'package:flutter_clean_arch_templ/config/theme/app_themes.dart';
import 'package:flutter_clean_arch_templ/features/home/presentation/bloc/character/remote/remote_character_bloc.dart';
import 'package:flutter_clean_arch_templ/features/home/presentation/bloc/character/remote/remote_character_event.dart';
import 'package:flutter_clean_arch_templ/features/home/presentation/bloc/theme_mode/theme_bloc.dart';
import 'package:flutter_clean_arch_templ/features/home/presentation/pages/home/home.dart';
import 'package:flutter_clean_arch_templ/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RemoteCharactersBloc>(
          create: (context) => sl()..add(const GetCharacters()),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => sl<ThemeBloc>()..add(ThemeLoad()),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeData>(
        builder: (context, theme) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: theme.brightness == Brightness.dark
              ? ThemeMode.dark
              : ThemeMode.light,
              onGenerateRoute: AppRoutes.onGenerateRoutes,
              home: const HomePage());
        },
      ),
    );
  }
}
