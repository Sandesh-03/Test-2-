import 'package:flutter/material.dart';
import '../constants.dart';

class SeeAll extends StatefulWidget {
  String title;
  List seeAllList;
  bool   isPlaceSelected;
   SeeAll({Key? key,required this.title,required this.seeAllList,required this.isPlaceSelected}) : super(key: key);

  @override
  State<SeeAll> createState() => _SeeAllState(seeAllList: seeAllList, title: title, isPlaceSelected: isPlaceSelected);
}

class _SeeAllState extends State<SeeAll> {
  _SeeAllState({required this.seeAllList,required this.title,required this.isPlaceSelected});
  String title;
  List seeAllList;
  bool   isPlaceSelected;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text(title,style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
      ),
      body: ListView.builder(
        itemCount: seeAllList.length,
          itemBuilder: (BuildContext context,int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                opacity: 70,
                image: AssetImage('${seeAllList[index].Img}'),
              ),
              color: Colors.black26,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${seeAllList[index].Name}',
                    style: kTileHeading,
                    maxLines: 1,
                  ),
                  isPlaceSelected? Row(): Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      ),

                      Text(
                        '${seeAllList[index].Location}',
                        style: kTileDescription,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      FittedBox(
                        child: Text(
                          '\$ ${seeAllList[index].Price}/ ',
                          style: kTileHeading,
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          'night',
                          style: kTileDescription,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            FittedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 1.5),
                                child: Text(
                                  '${seeAllList[index].Rating}',
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
        );
      }),
    );
  }
}
