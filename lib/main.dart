import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:music_player/src/theme/theme.dart';
import 'package:music_player/src/pages/music_player_page.dart';
import 'package:provider/provider.dart';

import 'src/models/audioplayer_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AudioPlayerModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Player App',
        theme: miTema,
        home: const MusicPlayerPage(),
      ),
    );
  }
}
