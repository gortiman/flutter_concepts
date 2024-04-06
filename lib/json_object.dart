// import 'package:flutter/material.dart';
//
// ///Serialization:---
// //kisi bhi object ko json me convert kr dena( object---> JSON )
//
// /// De-Serialization:---
// //Kisi json ko object me convert kr dena ( JSON--->Object )
//
// //Process of these ---
// //--------------------------------------------
//                                //toMap()                                    encode
// //Serialization--> Object(class)--------------> Map("name" : " rohit" ) ---------------> JSON(encode)
// //fromMap() constructor bnana h
// // De-Serialization--> JSON(decode)---------------> Map-------------------------------------------> Object
//
// // CODE======================>
//
// // UserModel.dart
// // ______________
// class UserModel {
// late String id;
// late String fullname;
// late String email;
//
// UserModel({ required this.id, required this.fullname, required this email});
// /// jb v construct krenge tb ye sb chize chahiye hogi
// /// named constructor v bnate h (alg alg name wale)
//
// //Map to Object
// UserModel.fromMap(Map<String, dynamic> map){
// this.id = map["id"];
// this.fullname = map["fullname"];
// this.email = map["email"];
// }
//
// // Object to Map
// Map<String,dynamic> toMap(){
// return {
// "id" : this.id,
// "fullname" : this.fullname,
// "email" : this.email,
// }
// }
// }
//
// // main.dart
// // _____________
// class _HomePageState extends State<HomePage>{
// //  (--jo class bnaye h wo (UserModel) iska ek naam denge(userObject) fir new userModel na lenge default contructor se . ye user ka object ban gya--)
// UserModel userObject = new UserModel(id: "0001", fullname: kanchan",email: "kanchan@gmail.com");
//
// // ab user json v bnana h . isme json file likh denge
// String userJSON = '{id: "0001", fullname: kanchan",email: "kanchan@gmail.com"}';
//
//
// // ab object se json bana ske or json se object bna ske
//
// @override
// Widget build(BuildContext context) {
//
// return Scaffold(
//
// body: Center(
// child: Row(
// mainAxisALignment : MainAixisAlignment.center,
// children: [
// ElevatedButton(
// onPressed : () {
// //Serialization
// Map<String, dynamic> userMap = userObject.toMap(); // userObject se toMap me convert kr denge
// // ab is map ko json me convert kr denge
// var json = jsonEncode(userMap);
// print(json.toString());
// },
// child: Text("serialization"),
// ),
// SizeBox(width:20),
// ElevatedButton(
// onPressed : () {
// //De-Serialization
// // json encode kiye the ab decode kr lenge. source hmara userJSON h
// var decoded= jsonDecode(userJSON);
// //jo v json decode kr ke mila usse map bna liye
// Map<String, dynamic> userMap = decoded;
// // ab is map se object bna lenge
// UserModel newUser = new UserModel.fromMap(userMap);
// print(newUser.toString());
// // print(newUser.fullname.toString());
// },
// child: Text("De-serialization"),
// ),
// ],
// ),
//
// ),
//
// );
// }
// }
// }