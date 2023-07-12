// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: constant_identifier_names

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';


const String Uid = 'UID_TOKEN';
const String EMAIL = 'EMAI;';
const String PASSWORD = 'PASSWORD';
const String TOKEN = 'TOKEN';
const String USERLOGGEDIN = 'USERLOGGEDIN';
const String LAT = 'LAT';
const String LONG = 'LONG';
const String SAFEZONENAME = 'SAFEZONENAME';
const String RADIUS = 'RADIUS';

const String ISlOVEDONE = 'ISlOVEDONE';
const String ISDENIEDLOCATION = 'ISDENIEDLOCATION';

const String IGNORE = 'IGNORE';

const String BATTERYLOW = 'BATTERYLOW';

@Order(-4)
@Injectable()
class AppPreferences {
  SharedPreferences sharedPreferences;
  AppPreferences({
    required this.sharedPreferences,
  });

  Future<void> saveUserUid(String uid) async {
    await sharedPreferences.setString(Uid, uid);
  }

  Future<void> saveToken(String token) async =>
      await sharedPreferences.setString(TOKEN, token);

  String? getPushToken() => sharedPreferences.getString(TOKEN);

  Future<void> saveUserEmail(String email) async {
    sharedPreferences.setString(EMAIL, email);
  }

  Future<void> saveUserPassword(String password) async {
    await sharedPreferences.setString(PASSWORD, password);
  }

  String getUid()  {
    return  sharedPreferences.getString(Uid) ?? '';
  }

  Future<String> getEmail() async {
    return sharedPreferences.getString(EMAIL) ?? '';
  }

  Future<String> getPassword() async {
    return sharedPreferences.getString(PASSWORD) ?? '';
  }

  Future<void> removeUid() async {
    await sharedPreferences.remove(Uid);
  }

  Future<void> setIsUserLoggedIn(bool logged) async {
   await sharedPreferences.setBool(USERLOGGEDIN, logged);
  }

  bool isUserLoggedIn()  {
    return sharedPreferences.getBool(USERLOGGEDIN) ?? false;
  }

  Future<void> setIsLovedOne(bool isloveedone) async {
   await sharedPreferences.setBool(ISlOVEDONE, isloveedone);
  }

  bool getIsLovedOne()  {
    return sharedPreferences.getBool(ISlOVEDONE) ?? false;
  }

// if denide locaation for no safezone notif to user not duplicated
  Future<void> setIsDenidedLocation(bool isDeniedLoc) async {
   await sharedPreferences.setBool(ISDENIEDLOCATION, isDeniedLoc);
  }

  bool getIsDeniedLocation()  {
    return sharedPreferences.getBool(ISDENIEDLOCATION) ?? false;
  }

  // if battery low  not duplicated  notif
  Future<void> setIsBatteryLowNotifSent(bool isBatteryLowNotifSend) async {
    await sharedPreferences.setBool(BATTERYLOW, isBatteryLowNotifSend);
  }

  bool getIsBatteryNotifSent() {
    return sharedPreferences.getBool(BATTERYLOW) ?? false;
  }

    Future<void> setIsIgnore(bool ignore) async {
   await sharedPreferences.setBool(IGNORE, ignore);
  }

  bool getIsIgnore()  {
    return sharedPreferences.getBool(IGNORE) ?? false;
  }

  // Future<void> setSaveZone(SafeZoneModel safeZone) async {
  //   sharedPreferences.setDouble(LAT, safeZone.lat);
  //   sharedPreferences.setDouble(LONG, safeZone.long);
  //   sharedPreferences.setString(SAFEZONENAME, safeZone.safeZoneName);
  //   sharedPreferences.setDouble(RADIUS, safeZone.radius);
  // }

  // Future<SafeZoneModel?> getSaveZone() async {
  //   final lat = sharedPreferences.getDouble(LAT);
  //   final long = sharedPreferences.getDouble(LONG);
  //   final name = sharedPreferences.getString(SAFEZONENAME);

  //   final red = sharedPreferences.getDouble(RADIUS);
  //   if (lat != null && long != null && name != null && red != null) {
  //     return SafeZoneModel(
  //         lat: lat,
  //         long: long,
  //         safeZoneName: name,
  //         radius: red,
  //         isFindMyHome: true);
  //   } else {
  //     return null;
  //   }
  // }
}
