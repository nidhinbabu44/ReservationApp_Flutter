import 'package:flutter/material.dart';
import 'reservation.dart';

void main() {
  runApp(const ReservationApp());
}

class ReservationApp extends StatefulWidget {
  const ReservationApp({super.key});

  @override
  State<ReservationApp> createState() => _ReservationAppState();
}

class _ReservationAppState extends State<ReservationApp> {
  String pageCaption = "Home Page";
  String pageName = "home";

  Widget homePageButtons() {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              pageName = "register";
              pageCaption = "Registration Page";
            });

            
          },
          child: const Text("Registration Page"),
        ),
        const SizedBox(
          height: 10,
        ),
       
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Reservation App",
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(pageCaption),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      pageName = "home";
                      pageCaption = "Home Page";
                    });
                  },
                  child: const Icon(Icons.close)),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
        body: Builder(builder: (context) {
          switch (pageName) {
            case "register":
              return const ReservationPage();

            

            default:
              return homePageButtons();
          }
        }),
      ),
    );
  }
}