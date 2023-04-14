import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // Crear instancia del repositorio y datasource
    final videoRepository = VideoPostsRepositoryImpl(
      videosDatasource: LocalVideoDatasource()
    );


    return MultiProvider(
      providers: [
        // lazy: false, // si queremos que se cargue de inmediato el constructor
        ChangeNotifierProvider(create: (_) => DiscoverProvider(videoRepository: videoRepository)..loadNextPage()), // cargados de manera perezosa por defecto
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TokTik',
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}