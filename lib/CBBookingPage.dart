import 'package:flutter/material.dart';
import 'functions.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250.0,
              width: 400.0,
              decoration: const BoxDecoration(
                border: Border.fromBorderSide(BorderSide.none),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 250.0,
                      width: 200.0,
                      child: Image.asset('assets/images/bicycle.png'),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.0, vertical: 2.0),
                        child: Text(
                          'Kind of Bicycle :',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.0, vertical: 2.0),
                        child: Text(
                          'Booking ID        :',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.0, vertical: 2.0),
                        child: Text(
                          'Student ID         :',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ), //bike info and student ID
                ],
              ),
            ), //image and bike info and student ID
            const Text(
              'Booking Time',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Container(
              alignment: AlignmentDirectional.topEnd,
              height: 50.0,
              width: 150.0,
              child: const Text(
                'DD/MM/YY \n14:00',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ToggleWidget(),
                ),
              ],
            ), //complete/cancel button>>from>>functions.dart
          ],
        ),
      ),
    );
  }
}
