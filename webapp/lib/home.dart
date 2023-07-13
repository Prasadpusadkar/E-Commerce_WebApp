import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(139, 208, 237, 1),
        title: Title(
            color: Colors.white,
            child: const Text(
              'LoL',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
        elevation: 2,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notification_add,
              color: Colors.white,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const AlertDialog(
                    title: Text(
                      'Feels so Empty!',
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
      drawer: const Drawer(
        backgroundColor: Colors.amber,
      ),
    );
  }
}
