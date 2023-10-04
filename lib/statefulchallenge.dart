import 'package:flutter/material.dart';

class Quote extends StatefulWidget {
  const Quote({super.key});

  @override
  State<Quote> createState() => QuoteState();
}

class QuoteState extends State<Quote> {
  int index = 0;

  List<String> quotes = [
    "It's not the years in your lives that count but the lives in your years!",
    "Don't give up, the best is yet to come!",
    "The most sucessful people work hard!",
    "Faith is a journey not a guilt trip!",
    "An idle man is the devil's workshop!",
    "Your body is the temple of the most high!",
    "Run and not be weary for God is with you!",
    "Joy comes in the morning!",
    "Not everyone are your friends!",
    "Anyone who has never made a mistake has never tried something new!",
    "Always have faith!"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              width: 305,
              child: Card(
                child: Text(
                  quotes[index % quotes.length],
                  style: const TextStyle(
                      letterSpacing: 1.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey),
                ),
              ),
            ),
            const Divider(
              height: 50,
              
              thickness: 1,
            ),
            Center(
              child: TextButton.icon(
                onPressed: showQuotes,
                icon: const Icon(Icons.sunny, color: Colors.white),
                label: const Text(
                  "Motivate me",
                  style: TextStyle(color: Colors.white, letterSpacing: 1.0),
                ),
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    padding: MaterialStatePropertyAll(EdgeInsets.all(10.0))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showQuotes() {
    setState(() {
      index += 1;
    });
  }
}
