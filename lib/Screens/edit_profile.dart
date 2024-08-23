import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
   EditProfile() ;

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _namecontroller = TextEditingController();
    TextEditingController _aboutcontroller = TextEditingController();
    TextEditingController _phonecontroller = TextEditingController();
    TextEditingController _locationcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Complete Your Profile",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Let's know yu get better.This will help us connect you with right customers",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Buisness Name",
              style: TextStyle(
                  color: Color(
                    0xff6F6F6F,
                  ),
                  fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffF0F2F5),
              ),
              child: TextFormField(
                controller: _namecontroller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Buisness name',
                  hintStyle: TextStyle(fontSize: 13),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "About Your Buisness",
              style: TextStyle(color: Color(0xff6F6F6F), fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffF0F2F5),
              ),
              child: TextFormField(
                controller: _aboutcontroller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Tell Customers About Your Buisness',
                  hintStyle: TextStyle(fontSize: 13),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Phone Number",
              style: TextStyle(
                  color: Color(
                    0xff6F6F6F,
                  ),
                  fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffF0F2F5),
              ),
              child: TextFormField(
                controller: _phonecontroller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(fontSize: 13),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Location",
              style: TextStyle(
                  color: Color(
                    0xff6F6F6F,
                  ),
                  fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffF0F2F5),
              ),
              child: TextFormField(
                controller: _locationcontroller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Location',
                  hintStyle: TextStyle(fontSize: 13),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFF6624),

                  elevation: 5, // Elevation
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Update',
                  style: TextStyle(
                      fontSize: 16, color: Colors.white), // Text style
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
