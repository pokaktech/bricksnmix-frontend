import 'package:bricksnmix/Widgets/Base_App_Bar.dart';
import 'package:bricksnmix/generated/appColors.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController? nameController;
  TextEditingController? aboutController;
  TextEditingController? phoneController;
  TextEditingController? locationController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    aboutController = TextEditingController();
    phoneController = TextEditingController();
    locationController = TextEditingController();
  }

  @override
  void dispose() {
    nameController?.dispose();
    aboutController?.dispose();
    phoneController?.dispose();
    locationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        appBar: AppBar(),
        title: const Text("Edit Profile"),
        centerResult: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Complete Your Profile",
                style: TextStyle(
                  color: Appcolors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Let's know yu get better.This will help us connect you with right customers",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Buisness Name",
                style: TextStyle(
                  color: Appcolors.textGrey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Appcolors.textfieldColor,
                ),
                child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
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
              const Text(
                "About Your Buisness",
                style: TextStyle(
                  color: Appcolors.textGrey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Appcolors.textfieldColor,
                ),
                child: TextFormField(
                  controller: aboutController,
                  decoration: const InputDecoration(
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
              const Text(
                "Phone Number",
                style: TextStyle(
                  color: Appcolors.textGrey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Appcolors.textfieldColor,
                ),
                child: TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
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
              const Text(
                "Location",
                style: TextStyle(
                  color: Appcolors.textGrey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Appcolors.textfieldColor,
                ),
                child: TextFormField(
                  controller: locationController,
                  decoration: const InputDecoration(
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Appcolors.forestGreen,
                    elevation: 5,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Update',
                    style: TextStyle(
                      fontSize: 18,
                      color: Appcolors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
