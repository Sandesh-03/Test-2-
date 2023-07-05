import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:share_plus/share_plus.dart';
import 'package:test2/constants.dart';
import 'package:test2/screens/firstScreen.dart';

class SecondScreen extends StatefulWidget {
  List displayList;
  int ind;
  bool isPlaceSelected;
   SecondScreen({Key? key,required this.displayList,required this.ind,required this.isPlaceSelected}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState(ind: ind, displayList: displayList, isPlaceSelected: isPlaceSelected

  );
}

class _SecondScreenState extends State<SecondScreen> {
  _SecondScreenState({required this.ind,required this.displayList,required this.isPlaceSelected});
  List displayList;
  bool isPlaceSelected;
  int ind;
  double itemHeight = 100;
  double profSize = 50;
  double itemWidth = 85;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration:  BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('${displayList[ind].Img}'),
                )),
              ),
            ),
            Positioned(
                left: 20,
                top: 30,
                right: 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(
                          CupertinoIcons.arrow_left,
                          color: Colors.black,
                          fill: .5,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const FirstScreen()));
                        },
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(
                            Icons.share,
                            color: Colors.black,
                            fill: .5,
                          ),
                          onPressed: () {
                  Share.share('<====>appLink<====>');
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: const Icon(
                            CupertinoIcons.heart,
                            color: Colors.black,
                            fill: .5,
                          ),
                          onPressed: () {
                            showDialog(
                                context: (context),
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Added to likes'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Ok'))
                                    ],
                                  );
                                });
                          },
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
                left: (MediaQuery.of(context).size.width / 2) - 40,
                top: 260,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '240 Photos',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
            Positioned(
                top: 300,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 570,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            '${displayList[ind].Name}',
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          isPlaceSelected
                              ? Row():  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              const Icon(Icons.location_on_outlined),
                              Text(
                                ' ${displayList[ind].Location}',
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Row(
                            children:  [
                              const Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                              ),
                              Text(
                                '${displayList[ind].Rating}(4.7 reviews)',
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const Spacer(),
                              Text(
                                '\$${displayList[ind].Price}/',
                                style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const Text(
                                'night',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(
                              color: Colors.black26,
                              thickness: 1.5,
                            ),
                          ),
                           ReadMoreText(
                            '${displayList[ind].Des}',
                            trimLines: 3,
                             colorClickableText: Colors.redAccent,
                             trimMode: TrimMode.Line,
                             trimCollapsedText: 'Show more',
                             trimExpandedText: 'Show less',
                             moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.redAccent),
                             lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.redAccent),
                          ),
                           Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("What we offer",style: kSecpHeading,),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                WhatWeOffer(
                                  itemHeight: itemHeight,
                                  itemWidth: itemWidth,
                                  dealIcon: const Icon(
                                    Icons.bed,
                                    color: Colors.black,
                                  ),
                                  deal: '2 beds',
                                ),
                                WhatWeOffer(
                                  itemHeight: itemHeight,
                                  itemWidth: itemWidth,
                                  dealIcon: const Icon(
                                    Icons.dinner_dining_outlined,
                                    color: Colors.black,
                                  ),
                                  deal: 'Dinner',
                                ),
                                WhatWeOffer(
                                  itemHeight: itemHeight,
                                  itemWidth: itemWidth,
                                  dealIcon: const Icon(
                                    Icons.hot_tub,
                                    color: Colors.black,
                                  ),
                                  deal: 'Hot Tub',
                                ),
                                WhatWeOffer(
                                  itemHeight: itemHeight,
                                  itemWidth: itemWidth,
                                  dealIcon: const Icon(
                                    Icons.air_sharp,
                                    color: Colors.black,
                                  ),
                                  deal: '2 beds',
                                ),
                              ],
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text('Hosted BY',style: kSecpHeading,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: profSize,
                                width: profSize,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'images/owner.png'
                                    )
                                  ),
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black12)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Harleen Smith.}'),
                                    Row(
                                      children: const [Icon(
                                        Icons.star,
                                        color: Colors.orangeAccent,
                                      ),
                                        Text(
                                          '4.9 (4.7k Reviews)',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),],

                                    )
                                  ],
                                ),
                              ),

                              const Spacer(),
                              InkWell(
                                onTap: (){
                                  showDialog(context: (context), builder: (context)=> AlertDialog(
                                    title: const Text('Chart Screen will be available Shortly'),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.of(context).pop();
                                      }, child: const Text('Ok'))
                                    ],
                                  ));
                                },
                                child: Container(
                                  height: profSize,
                                  width: profSize,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: const Icon(
                                    Icons.mark_unread_chat_alt_rounded
                                  ),
                                ),
                              )
                            ],

                          ),
                          const SizedBox(height: 10,),
                          InkWell(
                            onTap: (){
                              showDialog(context: (context), builder: (context)=> AlertDialog(
                                title: const Text('You will be directed to checkout Screen Shortly'),
                                actions: [
                                  TextButton(onPressed: (){
                                    Navigator.of(context).pop();
                                  }, child: const Text('Ok'))
                                ],
                              ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              width: double.maxFinite,
                              child: const Padding(
                                padding:  EdgeInsets.symmetric(vertical: 20.0),
                                child: Center(
                                  child: Text(
                                    'Book Now'
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class WhatWeOffer extends StatelessWidget {
  WhatWeOffer({
    super.key,
    required this.dealIcon,
    required this.deal,
    required this.itemHeight,
    required this.itemWidth,
  });
  Icon dealIcon;
  String deal;
  double itemHeight;
  double itemWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: itemHeight,
        width: itemWidth,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.black12,
            )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              dealIcon,
              Text(
                deal,
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
