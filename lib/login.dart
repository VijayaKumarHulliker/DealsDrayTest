

import 'dart:convert';

import 'package:deals/otpverification.dart';
import 'package:deals/register.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController phonecontroller = TextEditingController();

  Future<void> getOtp(BuildContext context, String phone) async {
    print("Came inside the get OTP function");
    print("phone number is $phone");
    try {
      final response = await http.post(
        Uri.parse("http://devapiv4.dealsdray.com/api/v2/user/otp"),
        body: {
          "mobileNumber": phone,
          "deviceId": "62b341aeb0ab5ebe28a758a3",
        },
      );
      if (response.statusCode == 200) {
        print("Response received successfully");
        final data = jsonDecode(response.body);
        print("user phone number verified successfully");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => verification(phone: phone),
          ),
        );
      } else {
        print(
            "Error: Server responded with status code ${response.statusCode}");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyWidget(),
          ),
        );
      }
    } catch (err) {
      print("Catch error occurred while getting the OTP: $err");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyWidget(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Container(
                    height: 180,
                    width: 180,
                    child: Image.asset('assets/images/logodd.jpg')),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Glad to see you!",
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Please provide your phone number",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: phonecontroller,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(fontSize: 15),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.red.shade200,
                      borderRadius: BorderRadius.circular(13)),
                  child: Center(
                      child: Text(
                    "SEND CODE",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                onTap: () {
                  getOtp(context, phonecontroller.text);
                },
              ),
            ]),
          ),
        ));
  }
}