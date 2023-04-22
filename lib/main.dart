import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assalomu alaykum',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Assalomu alaykum'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceAround ,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "«Astag'firullooha va atuubu ilayh»",style: TextStyle(
                fontWeight: FontWeight.w700,fontSize: 24.0
              ),
              ),
            ),
          ),
          Text(
            '$count',
            style:const TextStyle(
                fontSize: 72.0,fontWeight: FontWeight.w300,

            ),
          ),
          Text(
            '$counter',
            style:const TextStyle(
                fontSize: 72.0,fontWeight: FontWeight.w300,

            ),
          ),
          ElevatedButton(onPressed: _incrementCounter,
              child: Text("Alhamdulillah"),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              ),
            ),

          ),
        ],
      ),
    );
  }
  void _incrementCounter() {
    setState(() {
      count++;
      if(count==101){
        count=0;
        counter++;
      }
    });
  }
}
