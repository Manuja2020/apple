import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.apple),
            style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(Colors.grey.shade800)),
          ),
          Text('Apple Store',
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(Colors.grey.shade800)),
          ),
        ],
      ),
    );
  }
}
