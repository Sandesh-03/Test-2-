import 'package:flutter/cupertino.dart';

class Place{
  String ?Name;
  String ?Img;
  String ?Des;
  int ?Price;
  double ?Rating;
  String ? Discount;
  Place(String name,String des, int price, double rating,String discount, String img ,  ){
    Name =name;
    Img =img;
    Des=des;
    Price=price;
    Rating=rating;
    Discount=discount;
  }
}



