import 'package:flutter/cupertino.dart';

class Hotel{
  String ?Name;
  String ?Location;
  String ?Img;
  String ?Des;
  int ?Price;
  double ?Rating;
  String ? Discount;
  Owner ? Owner1;
  Hotel(String name,String location,String des, int price, double rating,String discount, String img ,Owner owner ){
 Name =name;
 Owner1=owner;
 Img =img;
 Des=des;
 Location=location;
 Price=price;
 Rating=rating;
 Discount=discount;
  }
}

class Owner{
  String ?OwnerImage;
  String ?OwnerName;
  String ?OwnerRatings;
  Owner(String ownerImage,String ownerName,String ownerRatings){
    OwnerImage=ownerImage;
    OwnerName=ownerName;
    OwnerRatings=ownerRatings;
  }


}