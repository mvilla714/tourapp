import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tourapp/models/country_model.dart';

class CardCountry extends StatelessWidget {
  CountryModel countryModel;
  CardCountry({required this.countryModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      width: 160,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(countryModel.img),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Stack(
            //alignment: Alignment.bottomRight,
            children: [
              Container(
                alignment: Alignment.center,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.40),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(6),
                child: Text(
                  "New",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 20,
                child: CircleAvatar(
                  minRadius: 14,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                ),
              ),
              Positioned(
                right: 43,
                child: CircleAvatar(
                  minRadius: 14,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                ),
              ),
              CircleAvatar(
                minRadius: 14,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1600"),
              )
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        countryModel.country,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "${countryModel.cantTours.toString()} tours",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.40),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      countryModel.rating.toString(),
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Icon(
                      Icons.grade_sharp,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
