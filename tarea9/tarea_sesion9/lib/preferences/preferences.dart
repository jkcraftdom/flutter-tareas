import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _img = '';
  static String _firstName = '';
  static String _lastName = '';
  static String _profession = '';
  static String _city = '';
  static String _country = '';
  static int _gender = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //GET & SET
  static String get img {
    return _prefs.getString('img') ?? _img;
  }

  static set img(String img) {
    _img = img;
    _prefs.setString('img', img);
  }

  // firstName
  static String get firstName {
    return _prefs.getString('firstName') ?? _firstName;
  }

  static set firstName(String firstName) {
    _firstName = firstName;
    _prefs.setString('firstName', firstName);
  }

  // lastname
  static String get lastName {
    return _prefs.getString('lastName') ?? _lastName;
  }

  static set lastName(String lastName) {
    _lastName = lastName;
    _prefs.setString('lastName', lastName);
  }

  // profession
  static String get profession {
    return _prefs.getString('profession') ?? _profession;
  }

  static set profession(String profession) {
    _profession = profession;
    _prefs.setString('profession', profession);
  }

  // city
  static String get city {
    return _prefs.getString('city') ?? _city;
  }

  static set city(String city) {
    _city = city;
    _prefs.setString('city', city);
  }

  // country
  static String get country {
    return _prefs.getString('country') ?? _country;
  }

  static set country(String country) {
    _country = country;
    _prefs.setString('country', country);
  }

  // gender
  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int gender) {
    _gender = gender;
    _prefs.setInt('gender', gender);
  }

  // username
  static String get username {
    return '${Preferences.firstName} ${Preferences.lastName}';
  }

  static String get genderText {
    return Preferences.gender == 1 ? 'Male' : 'Female';
  }

  static String get backgroundImage {
    return 'https://img.freepik.com/free-vector/abstract-business-professional-background-banner-design-multipurpose_1340-16858.jpg?w=1380&t=st=1668902819~exp=1668903419~hmac=812fa7b83629c20c8c62a7836890a8261cc3fd875f42033b71cb8466196089a7';
  }
}
