import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utility/theme.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main()async
{

  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://uokmuvrcunrdovpgvara.supabase.co',
    anonKey: 'sb_publishable_JesPLhUpIO7z83O0Nyv1Qw_psc3aIcq',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context) => CartProvider(),)
      ],
      child: MaterialApp(
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: ThemeMode.system,  //set according to phone system theme
      home:HomePage(),
        debugShowCheckedModeBanner: false,

      ),
    );
  }
}
