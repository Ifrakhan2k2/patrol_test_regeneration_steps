import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
//com.nikahforever
void main() {
 
 patrolTest(
  'First Test',
  ($)async{
      const String appId='com.nikahforever';
      await $.native.pressHome();
      await $.native.openApp(appId: appId);
      await $.pumpAndSettle();
     await Future.delayed(Duration(seconds:5));
    //await $.pumpAndSettle();
    await $.pumpAndTrySettle();
    await $.pump(const Duration(seconds: 10));
    
      await $(#profileCreatingFor).tap();
      await $(#loginReg).tap();

      // ✅ Enter Email and Password
      await $(#EmailLoginUsingEmail).enterText('khan.ifra2k2@gmail.com');
      await $(#passwordLoginUsingEmail).enterText('q');

      // ✅ Tap Login button
      await $(#loginButtonUsingEmail).tap();

      // ✅ Navigate to home and search pages
      await $(#homePage).tap();
      await $(#searchPage).tap();

      // ✅ Click Search by Profile ID
      await $(#byProfileId).tap();

      // ✅ Go back using **native back button**
      await $.native.pressBack();

      // ✅ Open Search by Profile ID again
      await $(#byProfileId).tap();

      // ✅ Enter Member ID and confirm search
      await $(#enterProfileMemberId).enterText('23C7E1475845');
      await $(#searchConfirm).tap();

      // ✅ Send Interest from User Profile
      await $(#sendInterestThroughUserProfile).tap();

      // ✅ Request for Photo & Confirm
      await $(#requestForPhoto).tap();
      await $(#confirmPhototRequest).tap();

      // ✅ Open Message Feature
      await $(#messageIconUserProfile).tap();
      await $(#messageField).tap();
      await $(#sendMessage).tap();

      // ✅ Go back from Messages using **native back button**
      await $.native.pressBack();

      // ✅ Call Now Feature
      await $(#callNowIconUserProfile).tap();
      await $(#callNowOkay).tap();
    },
  );
}