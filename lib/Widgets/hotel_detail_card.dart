import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tripdetail/Constants/colors.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        // Image widget
        Column(
          children: [
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: CustomColors.hotelname,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Text(
              "Hotle name",
              style: TextStyle(fontSize: 18, color: CustomColors.hotelname),
            ),
            Text(
              "Location",
              style: TextStyle(fontSize: 18, color: CustomColors.hotelname),
            ),
            Row(
              children: [
                const Text(
                  "From",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
                Text(
                  "rate in Usd",
                  style: TextStyle(fontSize: 18, color: CustomColors.hotelname),
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: null,
                    child: Text(
                      "Available",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ))
              ],
            )
          ],
        )
      ]),
    );
  }
}
