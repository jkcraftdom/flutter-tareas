import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class RetoUI1 extends StatelessWidget {
  const RetoUI1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    'https://img.icons8.com/sf-ultralight/25/null/airport.png'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'TRAVEL AGENCY',
                  style: GoogleFonts.notoSans(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              width: 250,
              height: 250,
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2017/06/05/11/01/airport-2373727_960_720.jpg',
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 300,
              child: Text(
                'Holidays in New-York',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                    fontSize: 48,
                    height: 1,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff3E59FB)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50, top: 10),
              child: Text(
                'View our tour packages  today',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6A6A6A),
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: MaterialButton(
                onPressed: () {},
                minWidth: 40,
                height: 58,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: const Color(0xff3E59FB),
                child: SizedBox(
                    width: 140,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SWIPE',
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 24),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.east,
                            size: 30,
                            color: Colors.white,
                          )
                        ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
