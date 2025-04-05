import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

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
                    // Praktikum 5
                    handleError();

                    // returnError().then((value) {
                    //   setState(() {
                    //     result = 'sukses';
                    //   });
                    // }).catchError((onError){
                    //   setState(() {
                    //     result = onError.toString();
                    //   });
                    // // ignore: avoid_print
                    // }).whenComplete(() => print('Kelar nih'));

                    // Praktikum 4
                    // returnFG();

                    // getNumber().then((value) {
                    //   setState(() {
                    //     result = value.toString();
                    //   });
                    // }).catchError((e) {
                    //   result = 'An error occurred';
                    // });

                    // count();
                    // setState(() {});
                    // getData().then((value) {
                    //   result = value.body.toString().substring(0, 450);
                    //   setState(() {});
                    // }).catchError((_) {
                    //   result = 'An error occurred';
                    //   setState(() {});
                    // });
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

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;

    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  late Completer completer;

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future calculate() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
    } catch (_) {
      completer.completeError({});
    }
  }

  // Praktikum 4
  void returnFG() {
    final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);
    futures.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    });

    // FutureGroup<int> futureGroup = FutureGroup<int>();
    // futureGroup.add(returnOneAsync());
    // futureGroup.add(returnTwoAsync());
    // futureGroup.add(returnThreeAsync());
    // futureGroup.close();
    // futureGroup.future.then((List<int> value) {
    //   int total = 0;
    //   for (int i = 0; i < value.length; i++) {
    //     total += value[i];
    //   }
    //   setState(() {
    //     result = total.toString();
    //   });
    // }).catchError((e) {
    //   setState(() {
    //     result = 'An error occurred';
    //   });
    // });
  }

  // Praktikum 5
  Future<String> returnError() async {
    await Future.delayed(Duration(seconds: 1));
    throw Exception('Error nehh!!!');
  }

  Future handleError() async {
    try {
      await returnError();
    } catch (e) {
      setState(() {
        result = e.toString();
      });
    }
    finally{
      // ignore: avoid_print
      print('COMPLETE!!!');
    }
  }
  
}
