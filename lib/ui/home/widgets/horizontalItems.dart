import 'package:flutter/material.dart';

class HorizontalItems extends StatelessWidget {
  const HorizontalItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      margin: EdgeInsets.symmetric(vertical: 15),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < dataImages.length; i++)
            Container(
              margin: EdgeInsets.only(
                  right: (i == dataImages.length - 1) ? 18 : 0, left: 18),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    // SUMMON GAMBAR
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.network(dataImages[i],
                          width: 200, height: 150, fit: BoxFit.cover),
                    ),
                    Container(
                        width: 180,
                        height: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "2.0 km",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                            ),
                            Text(
                              "AYAM GEPREK BENSU KABUPATEN BANDUNG",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_rate,
                                    size: 14, color: Colors.yellow.shade900),
                                Container(
                                  width: 6,
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// DATA GAMBAR
List dataImages = [
  "https://media-cdn.tripadvisor.com/media/photo-s/15/03/79/e3/otto-s-anatolian-food.jpg",
  "https://images2.minutemediacdn.com/image/upload/c_crop,h_1126,w_2000,x_0,y_181/f_auto,q_auto,w_1100/v1554932288/shape/mentalfloss/12531-istock-637790866.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDddyz9pSzqTILY2E2qT7i8jAiddfPYn9QMA&usqp=CAU"
];