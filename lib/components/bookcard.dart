import 'package:flutter/material.dart';

Widget bookCard(String imgUrl, String bookName, String kategori, int rating) {
  return Card(
      margin: EdgeInsets.only(right: 22.0),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      elevation: 0.0,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
            scale: 2.0,
          )),
          width: 200.0,
          child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      for (var i = 0; i < rating; i++)
                        Icon(
                          Icons.star,
                          color: Color(0xFFFE8C68),
                        ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bookName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          kategori,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ));
}
