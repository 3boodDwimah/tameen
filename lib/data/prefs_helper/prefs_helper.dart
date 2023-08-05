
import 'package:shared_preferences/shared_preferences.dart';
import 'iprefs_helper.dart';


class PrefsHelper implements IPrefsHelper {

  @override
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }
  //
  // @override
  // Future<int> getAppLanguage() async {
  //   return (await getPrefs()).getInt(APP_LANGUAGE)
  //       // ?? AppLanguageKeys.EN
  //   ;
  // }
  //
  // @override
  // Future<void> setAppLanguage(int value) async {
  //   (await getPrefs()).setInt(APP_LANGUAGE, value);
  // }
  //
  //
  // @override
  // Future<String> getToken() async {
  //   return ((await getPrefs()).getString(TOKEN));
  // }
  //
  // @override
  // Future<int> getUserId() async {
  //   return ((await getPrefs()).getInt(ID));
  // }
  //
  //
  // @override
  // Future<bool> getIsLogin() async {
  //   // TODO: implement getIsLogin
  //   return (await getPrefs()).getBool(IS_LOGIN) ?? false;
  // }
  //
  //
  //
  // Future<String> getMobileNumber() async {
  //   // TODO: implement getToken
  //   return ((await getPrefs()).getString(MOBILE));
  // }
  //
  // // @override
  // // Future<void> saveUser(UserData user, String token,bool active) async {
  // //   // TODO: implement saveUser
  // //   (await getPrefs()).setInt(ID, user.id);
  // //   (await getPrefs()).setString(NAME, user.first_name ?? "");
  // //   (await getPrefs()).setString(NAME, user.last_name ?? "");
  // //   (await getPrefs()).setString(MOBILE, user.mobile ?? "");
  // //   (await getPrefs()).setString(EMAIL, user.email ?? "");
  // //   (await getPrefs()).setString(IMAGE, user.image_profile ?? "");
  // //   (await getPrefs()).setString(IMAGE, user.access_token ?? "");
  // //   (await getPrefs()).setString(IMAGE, user.latitude ?? "");
  // //   (await getPrefs()).setString(IMAGE, user.longitude ?? "");
  // //   (await getPrefs()).setString(IMAGE, user.remember_token ?? "");
  // //   (await getPrefs()).setString(IMAGE, user.status ?? "");
  // //   (await getPrefs()).setString(IMAGE, user.type ?? "");
  // //   (await getPrefs()).setString(IMAGE, user.username ?? "");
  // //   (await getPrefs()).setString(TOKEN, "Bearer $token");
  // //   if(active){
  // //     (await getPrefs()).setBool(IS_LOGIN, true);
  // //   }
  // //
  // // }
  // //
  // // @override
  // // Future<UserData> getUser() async {
  // //   String first_name = (await getPrefs()).getString(NAME) ?? "Full Name";
  // //   String email = (await getPrefs()).getString(EMAIL) ?? "Email";
  // //   String image_profile = (await getPrefs()).getString(IMAGE) ?? "";
  // //   int id = (await getPrefs()).getInt(ID);
  // //   String mobile = (await getPrefs()).getString(MOBILE) ?? "";
  // //   String last_name = (await getPrefs()).getString(MOBILE) ?? "";
  // //   String remember_token = (await getPrefs()).getString(MOBILE) ?? "";
  // //   String username = (await getPrefs()).getString(MOBILE) ?? "";
  // //   String latitude = (await getPrefs()).getString(MOBILE) ?? "";
  // //   String longitude = (await getPrefs()).getString(MOBILE) ?? "";
  // //   String status = (await getPrefs()).getString(MOBILE) ?? "";
  // //   String type = (await getPrefs()).getString(MOBILE) ?? "";
  // //   String access_token = (await getPrefs()).getString(MOBILE) ?? "";
  // //
  // //   UserData user = UserData((b) => b
  // //     ..first_name = first_name
  // //     ..email = email
  // //     ..image_profile = image_profile
  // //     ..id = id
  // //     ..mobile = mobile
  // //     ..last_name = last_name
  // //     ..remember_token = remember_token
  // //     ..username = username
  // //     ..latitude = latitude
  // //     ..longitude = longitude
  // //     ..status = status
  // //     ..type = type
  // //     ..access_token = access_token
  // //   );
  // //   return user;
  // // }
  //
  //
  //
  // @override
  // Future<bool> logout() async{
  //   // TODO: implement logout
  //   (await getPrefs()).setBool(IS_LOGIN, false);
  // }
  //
  // @override
  // Future<void> setIsLogin() async{
  //   // TODO: implement setIsLogin
  //   (await getPrefs()).setBool(IS_LOGIN, true);
  // }
  //
  // @override
  // Future<String> getCurrency() async{
  //   // TODO: implement getCurrency
  //   return (await getPrefs()).getString(APP_Currency) ?? 'USD';
  // }
  //
  // @override
  // Future<void> setCurrency(String value)async {
  //   // TODO: implement setCurrency
  //   (await getPrefs()).setString(APP_Currency, value);
  // }
  //
  // @override
  // Future<bool> getNotification() async{
  //   // TODO: implement getCurrency
  //   return (await getPrefs()).getBool(NOTIFI) ?? false;
  // }
  //
  // @override
  // Future<void> setNotification(bool value)async {
  //   // TODO: implement setCurrency
  //   (await getPrefs()).setBool(NOTIFI, value);
  // }
  //


}
