import 'package:flutter/material.dart';

class CardPopularsTours extends StatelessWidget {
  const CardPopularsTours({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://a.cdn-hotels.com/gdcs/production146/d585/aa60115c-bdfc-479f-88ba-5cb0f15a5af8.jpg?impolicy=fcrop&w=1600&h=1066&q=medium"),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Thailand",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "10 night for toe/all inlcusive",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "\$ 245.50",
                style: TextStyle(fontSize: 14, color: Colors.black87),
              )
            ],
          ),
          SizedBox(
            width: 35,
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(3),
            height: 60,
            decoration: BoxDecoration(
                color: Color(0xff169F6B),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "4.5",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Icon(
                  Icons.grade_sharp,
                  color: Colors.white,
                  size: 16,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
