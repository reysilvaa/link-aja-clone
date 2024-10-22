import 'package:flutter/material.dart';

class BalanceCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      margin: const EdgeInsets.only(right: 4, left: 4, top: 70),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 224, 24, 24),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(children: [
            SizedBox(width: 5),
            Text('Hi, Reynald Silva 2241720203',
                style: TextStyle(fontSize: 15, color: Colors.white))
          ]),
          SizedBox(height: 10),
          Row(
            children: [
              _buildCard('Your Balance', 'Rp 10.184', Icons.arrow_forward),
              SizedBox(width: 10),
              _buildCard('Bonus Balance', '0', Icons.arrow_forward),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String title, String balance, IconData icon) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 12, color: const Color.fromARGB(255, 85, 75, 75))),
              SizedBox(height: 2),
              Text(balance,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          Icon(icon, color: Colors.red),
        ],
      ),
    );
  }
}
