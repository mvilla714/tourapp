import 'package:flutter/material.dart';
import 'package:tourapp/models/popular_tours_model.dart';

class CardPopularsTours extends StatelessWidget {
  PopularsToursModel popularsToursModel;
  CardPopularsTours({required this.popularsToursModel});

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
                image: NetworkImage(popularsToursModel.img),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  popularsToursModel.country,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  popularsToursModel.descriptionTours,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "\$ ${popularsToursModel.price.toString()}",
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20,
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
                  popularsToursModel.rating.toString(),
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
