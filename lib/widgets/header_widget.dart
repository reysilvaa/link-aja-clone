import 'package:flutter/material.dart';
import 'package:link_aja/widgets/quick_actions_widget.dart';
import 'balance_card_widget.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/kota.png',
                  fit: BoxFit.cover,
                  opacity: AlwaysStoppedAnimation(0.25),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icon.png', height: 50, width: 50),
                  Row(
                    children: [
                      _buildIcon(Icons.favorite_border),
                      SizedBox(width: 16),
                      _buildIcon(Icons.chat_bubble_outline),
                    ],
                  ),
                ],
              ),
              BalanceCardWidget(),
            ],
          ),
        ),
        SizedBox(height: 10),
        QuickActionsWidget(),
      ],
    );
  }

  Widget _buildIcon(IconData icon) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: Colors.black),
    );
  }
}
