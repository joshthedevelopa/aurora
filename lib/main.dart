import 'imports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PenzilCharlie's UI Challenge",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoard(),
    );
  }
}




