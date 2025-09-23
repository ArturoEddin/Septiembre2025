import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/infrastruture/datasources/local_video_datasource_impl.dart';
import 'package:toktik/infrastruture/repositories/video_post_repository_impl.dart';
import 'package:toktik/presentation/provider/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart'; 

void main() {
  // Asegura que los bindings de Flutter estén inicializados
  WidgetsFlutterBinding.ensureInitialized();
  // Configura el estilo de la UI del sistema
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Hacemos la barra de estado transparente
  ));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    final  videoPostReposity = VideoPostRepositoryImpl(videosDatasource: LocalVideoDatasource());
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:  (_)=>DiscoverProvider(videosRepository: videoPostReposity)..loadingNextPage() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        title: 'TokTik',
        home: const DiscoverScreen(), 
      ),
    );
  }
}