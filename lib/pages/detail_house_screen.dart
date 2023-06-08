import 'package:flutter/material.dart';
import '../model/house_list.dart';

class DetailHouseScreen extends StatelessWidget {
  final House house;
  const DetailHouseScreen({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(
              house.image,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                house.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Harga ${house.price}",
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Icon(Icons.room),
                        Text(house.getRoom())
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.area_chart),
                        Text(house.getSized())
                      ],
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
