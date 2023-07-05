import 'package:flutter/cupertino.dart';

class Flight{
  String ?Name;
  String ?Location;
  String ?Img;
  String ?Des;
  int ?Price;
  double ?Rating;
  String ? Discount;
  Agent ? Owner1;
  Flight(String name,String location,String des, int price, double rating,String discount, String img ,Agent owner ){
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

class Agent{
  String ?AgentImage;
  String ?AgentName;
  String ?AgentRatings;
  Agent(String agentImage,String agentName,String agentRatings){
    AgentImage=agentImage;
    AgentName=agentName;
    AgentRatings=agentRatings;
  }


}