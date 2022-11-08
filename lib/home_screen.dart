import 'package:bookstore/components/bookcard.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/detail_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> urls = [
    "https://images.ctfassets.net/usf1vwtuqyxm/2DCs73x6P8seNobQ9zBSbO/1a5dfd6ed5fc0ed9545370470fc3d74c/English_Harry_Potter_1_Epub_9781781100219.jpg?w=914&q=70&fm=webp",
    "https://m.media-amazon.com/images/I/61rHaJAJHdL._SX331_BO1,204,203,200_.jpg",
    "data:image/jpeg;base64,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"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage();
                  }));
                },
                child: Text(
                  "Ke Halaman Detail Page",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome To Everyone Book Store',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Silahkan Pilih Buku Yang Anda Suka',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadiusDirectional.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Cari Buku Yang Anda Inginkan...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black26,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                        indicatorColor: Color(0xFFFE8C68),
                        unselectedLabelColor: Color(0xFF555555),
                        labelColor: Color(0xFFFE8C68),
                        labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                        tabs: [
                          Tab(
                            text: "Novel",
                          ),
                          Tab(
                            text: "Komik",
                          ),
                          Tab(
                            text: "Cerita Anak-anak",
                          ),
                        ]),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [bookCard(urls[0], "", "Novel", 5)],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                bookCard(urls[1], "", "Best Recomendation", 5)
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                bookCard(urls[2], "",
                                    "Best Recomendation For Kids", 5)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
