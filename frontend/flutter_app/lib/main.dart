import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // O bloc/provider
import 'package:mi_app_web/app/app.dart';
import 'package:mi_app_web/core/theme/app_theme.dart';

// 1. Punto de entrada asíncrono (común en apps reales para inicializar BD, Firebase, etc.)
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inicialización de servicios (Supabase, Firebase, Local Storage)
  // await Firebase.initializeApp(options: ...);
  
  // 2. Uso de un ProviderScope para gestión de estado (ej. Riverpod)
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// 3. MyApp: Stateless, solo configura MaterialApp
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 4. Configuración de Rutas, Temas y Localización
    return MaterialApp.router(
      title: 'Mi App Real Web',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // Usando GoRouter para rutas web robustas
      routerConfig: ref.watch(appRouterProvider), 
    );
  }
}