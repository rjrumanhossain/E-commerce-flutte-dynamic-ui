import 'package:flutter/cupertino.dart';

class ProfileComponents extends StatefulWidget {
  const ProfileComponents({super.key});

  @override
  State<ProfileComponents> createState() => _ProfileComponentsState();
}

class _ProfileComponentsState extends State<ProfileComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Profile"),
    );
  }
}
