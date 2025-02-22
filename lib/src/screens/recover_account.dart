import 'package:backpack/src/components/app_bars/back_app_bar.dart';
import 'package:backpack/src/components/buttons/primary_button.dart';
import 'package:backpack/src/screens/phone_number.dart';

import 'package:flutter/material.dart';

class RecoverAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Text(
              'Recover your account',
              // style: Theme.of(context).textTheme.headline,
              style: Theme.of(context).textTheme.headline4,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 30.0, bottom: 10.0),
                labelStyle: TextStyle(color: Colors.black),
                hintText: 'Enter email, username or phone number',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
            ),
            PrimaryButton(
              isOutline: true,
              text: 'Next',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhoneNumber()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
