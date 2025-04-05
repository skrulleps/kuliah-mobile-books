import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Books Fadhlan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Future Page Fadhlan'),
        ),
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    getData().then((value) {
                      result = value.body.toString().substring(0, 450);
                      setState(() {});
                    }).catchError((_) {
                      result = 'An error occurred';
                      setState(() {});
                    });
                  },
                  child: const Text('Go')),
              const Spacer(),
              Text(result),
              const CircularProgressIndicator(),
              const Spacer(),
            ],
          ),
        ));
  }

  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/oFUEAAAAMBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
}
