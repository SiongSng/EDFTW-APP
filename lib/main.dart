import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

void main() {
  runApp(const EEPTWAPP());

  if (kIsWeb) {
    final loaderContainer = document.getElementsByClassName('container');
    if (loaderContainer.isNotEmpty) {
      loaderContainer.first.remove();
    }
  }
}

class EEPTWAPP extends StatelessWidget {
  const EEPTWAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EEPTW | 輕菘教育平台",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.indigo,
          useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 48,
        leading: Image.asset("assets/images/logo_no_outline.png"),
        titleSpacing: 0,
        title: const Text("輕菘教育平台"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildIdentityButton("我是學生"),
            const SizedBox(width: 20),
            _buildIdentityButton("我是老師"),
            const SizedBox(width: 20),
            _buildIdentityButton("我是家長"),
          ],
        ),
      ),
    );
  }

  SizedBox _buildIdentityButton(String text) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
          onPressed: () {}),
    );
  }
}
