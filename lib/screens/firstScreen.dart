import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test2/lists/FlightList.dart';
import 'package:test2/lists/FoodList.dart';
import 'package:test2/lists/hotelList.dart';
import 'package:test2/lists/place%20list.dart';
import 'package:test2/screens/secondScreen.dart';
import 'package:test2/screens/seeAll.dart';

import '../constants.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int discoutItemIndex = Random().nextInt(4);
  double itemHeight = 130;
  double itemWidth = 85;
  String item = 'Hotel';
  List itemList = hotelList;
  bool isFlightSelected = false;
  bool isHotelSelected = true;
  bool isPlaceSelected = false;
  bool isFoodSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Where you\nwanna go",
                    style: kHeading,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(
                        child: IconButton(
                            onPressed: () {

                            },
                            icon: const Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              isFoodSelected = false;
                              isPlaceSelected = false;
                              isHotelSelected = !isHotelSelected;
                              isFlightSelected = false;
                              itemList = hotelList;
                              item = 'Hotel';
                            });
                          },
                          child: Container(
                            height: itemHeight,
                            width: itemWidth,
                            decoration: BoxDecoration(
                                color: isHotelSelected
                                    ? kLightPrimaryColour
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black12,
                                )),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.hotel,
                                    color: isHotelSelected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  Text(
                                    'Hotel',
                                    style: TextStyle(
                                        color: isHotelSelected
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              isFoodSelected = false;
                              isPlaceSelected = false;
                              isHotelSelected = false;
                              isFlightSelected = !isFlightSelected;
                              itemList = flightList;
                              item = 'Plane';
                            });
                          },
                          child: Container(
                            height: itemHeight,
                            width: itemWidth,
                            decoration: BoxDecoration(
                                color: isFlightSelected
                                    ? kLightPrimaryColour
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black12,
                                )),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.airplanemode_active,
                                    color: isFlightSelected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  Text(
                                    'Plane',
                                    style: TextStyle(
                                        color: isFlightSelected
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              isFoodSelected = false;
                              isPlaceSelected = !isPlaceSelected;
                              isHotelSelected = false;
                              isFlightSelected = false;
                              itemList = placeList;
                              item = 'Place';
                            });
                          },
                          child: Container(
                            height: itemHeight,
                            width: itemWidth,
                            decoration: BoxDecoration(
                                color: isPlaceSelected
                                    ? kLightPrimaryColour
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black12,
                                )),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on_outlined,
                                      color: isPlaceSelected
                                          ? Colors.white
                                          : Colors.black),
                                  Text(
                                    'Place',
                                    style: TextStyle(
                                        color: isPlaceSelected
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              isFoodSelected = !isFoodSelected;
                              isPlaceSelected = false;
                              isHotelSelected = false;
                              isFlightSelected = false;
                              itemList = foodList;
                              item = 'Food';
                            });
                          },
                          child: Container(
                            height: itemHeight,
                            width: itemWidth,
                            decoration: BoxDecoration(
                                color: isFoodSelected
                                    ? kLightPrimaryColour
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black12,
                                )),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.dinner_dining_outlined,
                                    color: isFoodSelected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  Text(
                                    'Food',
                                    style: TextStyle(
                                        color: isFoodSelected
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular ${item}s',
                    style: kSecHeading,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SeeAll(
                                  title: item,
                                  seeAllList: itemList,
                                  isPlaceSelected: isPlaceSelected,
                                )));
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(color: Colors.redAccent.shade200),
                      ))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              //data widgets

              Expanded(
                child: ListView.builder(

                    scrollDirection: Axis.horizontal,
                    itemCount: hotelList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> SecondScreen(displayList: itemList, ind: index, isPlaceSelected: isPlaceSelected,

                          )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 260,
                            width: MediaQuery.of(context).size.width *.55,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                opacity: 70,
                                image: AssetImage('${itemList[index].Img}'),
                              ),
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${itemList[index].Name}',
                                    style: kTileHeading,
                                    maxLines: 1,
                                  ),
                                  isPlaceSelected
                                      ? Row()
                                      : Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              '${itemList[index].Location}',
                                              style: kTileDescription,
                                            )
                                          ],
                                        ),
                                  Row(
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          '\$${itemList[index].Price}/',
                                          style: kTileHeading,
                                        ),
                                      ),
                                      FittedBox(
                                        child: Text(
                                          'night',
                                          style: kTileDescription,
                                        ),
                                      ),
                                      const Spacer(),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.orangeAccent,
                                            ),
                                            FittedBox(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 1.5),
                                                child: Text(
                                                  '${itemList[index].Rating}',
                                                  style: kTileHeading,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hot Deals',
                      style: kSecHeading,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SecondScreen(displayList: itemList, ind: discoutItemIndex, isPlaceSelected: isPlaceSelected)));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * .90,
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black45,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image:
                                AssetImage('${itemList[discoutItemIndex].Img}'))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '${itemList[discoutItemIndex].Discount} off',
                                      style: kTileDescription,
                                    ),
                                  ),
                                ),
                              )),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${itemList[discoutItemIndex].Name} ',
                                style: kTileHeading,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                  ),
                                  Text(
                                    '${itemList[discoutItemIndex].Rating}',
                                    style: kTileHeading,
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              isPlaceSelected
                                  ? Row()
                                  : Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          '${itemList[discoutItemIndex].Location}',
                                          style: kTileDescription,
                                        )
                                      ],
                                    ),
                              const Spacer(),
                              Text(
                                '\$ ${itemList[discoutItemIndex].Price}/ ',
                                style: kTileHeading,
                              ),
                              Text(
                                'night',
                                style: kTileDescription,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
