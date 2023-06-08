import 'package:dreamhouse_marketplace/model/house_list.dart';
import 'package:dreamhouse_marketplace/pages/detail_house_screen.dart';
import 'package:flutter/material.dart';

class ListHouseScreen extends StatefulWidget {
  const ListHouseScreen({Key? key}) : super(key: key);

  @override
  _ListHouseScreenState createState() => _ListHouseScreenState();
}

class _ListHouseScreenState extends State<ListHouseScreen> {
  String _search = '';
  List<House> tempHouse = houseList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 12.0, left: 24.0, right: 24.0),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              "Rumah Impian Dalam Genggaman",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 24.0),
          TextField(
            onChanged: (String value) {
              setState(() {
                tempHouse = houseList
                    .where((house) =>
                        house.title.toLowerCase().contains(value.toLowerCase()))
                    .toList();
              });
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 8.0),
              hintText: "Cari rumah impian anda",
              prefixIcon: const Icon(Icons.search, color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  width: 0.4,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Terdekat",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: tempHouse.length,
            itemBuilder: (context, index) {
              final House house = tempHouse[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailHouseScreen(house: house);
                  }));
                },
                child: ItemDreamHouse(dreamHouse: house),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ItemDreamHouse extends StatelessWidget {
  final House dreamHouse;
  const ItemDreamHouse({Key? key, required this.dreamHouse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.network(
                    dreamHouse.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        dreamHouse.title,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        dreamHouse.price,
                        style: const TextStyle(color: Colors.blue),
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              dreamHouse.getRoom(),
                              style: const TextStyle(fontSize: 11.0),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(dreamHouse.getSized(),
                                style: const TextStyle(fontSize: 11.0)),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
