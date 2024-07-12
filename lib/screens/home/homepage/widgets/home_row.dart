import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeRow extends StatelessWidget {
  const HomeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _CustomIconButton(
          text: 'Profile',
          iconColor: Colors.green.shade700,
          icon: Icons.person,
          onTap: () {},
        ),
        _CustomIconButton(
          text: 'Favorite',
          iconColor: Colors.red.shade700,
          icon: Icons.favorite,
          onTap: () {},
        ),
        _CustomIconButton(
          text: 'Cart',
          iconColor: Colors.blue.shade700,
          icon: Icons.shopping_cart,
          onTap: () {},
        ),
        _CustomIconButton(
          text: 'Web',
          iconColor: Colors.purple.shade700,
          icon: FontAwesomeIcons.globe,
          onTap: () {},
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton(
      // ignore: unused_element
      {super.key,
      required this.text,
      required this.iconColor,
      required this.onTap,
      required this.icon});
  final String text;
  final Color iconColor;
  final VoidCallback onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: iconColor.withOpacity(0.4),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
