import 'package:exam_five/data/repository/nbu_repository.dart';
import 'package:exam_five/screens/router.dart';
import 'package:exam_five/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/home/home_cubit.dart';
import 'data/services/open_api_client.dart';
import 'data/services/open_api_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  OpenApiService openApiService =
      OpenApiService(openApiClient: OpenApiClient());
  // I will not use Multi repository. However I don't need to it.
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(
            nbuRepository: NbuRepository(
              openApiService: openApiService,
            ),
          )..getCategories(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: home,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
