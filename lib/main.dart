import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.karla().fontFamily,
      ),
      home: const MyHomePage(),
    );
  }
}

final Color lightGray = const HSLColor.fromAHSL(1, 204, 0.43, 0.93).toColor();
final Color cyan = const HSLColor.fromAHSL(1, 179, 0.62, 0.43).toColor();
final Color brightYellow = const HSLColor.fromAHSL(1, 71, 0.73, 0.54).toColor();
final Color grayishBlue = const HSLColor.fromAHSL(1, 218, 0.22, 0.67).toColor();

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 600;
    return Scaffold(
      backgroundColor: lightGray,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - 128,
          ),
          child: Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: 600,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(24),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Join our community",
                              style: TextStyle(
                                color: cyan,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 24, bottom: 24),
                              child: Text(
                                "30-day, hassle-free money back guarantee",
                                style: TextStyle(
                                  color: brightYellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Text(
                              "Gain access to our full library of tutorials along with expert code reviews. Perfect for any developers who are serious about honing their skills.",
                              style: TextStyle(
                                color: grayishBlue,
                                height: 2,
                                fontSize: 13,
                              ),
                            )
                          ],
                        )),
                    IntrinsicHeight(
                      child: Flex(
                        direction:
                            isScreenWide ? Axis.horizontal : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              padding: const EdgeInsets.all(24),
                              color: cyan,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Monthly Subscription",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 16, bottom: 8, right: 8),
                                        child: const Text(
                                          "\$29",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "per month",
                                        style: TextStyle(
                                          color: lightGray,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Full access for less than \$1 a day",
                                    style: TextStyle(
                                      color: lightGray,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 24),
                                    width: double.infinity,
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        backgroundColor: brightYellow,
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 22,
                                        ),
                                      ),
                                      child: const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              padding: const EdgeInsets.all(24),
                              color: const HSLColor.fromAHSL(1, 179, 0.75, 0.45)
                                  .toColor(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "Why Us",
                                      style: TextStyle(
                                        color: lightGray,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Tutorials by industry experts\nPeer & expert code review\nCoding exercises\nAccess to our GitHub repos\nCommunity forum \nFlashcard decks \nNew videos every week",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: lightGray,
                                      height: 1.4,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
