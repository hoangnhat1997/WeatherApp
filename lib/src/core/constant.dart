class Urls {
  static const String weatherBaseUrl =
      'https://api.openweathermap.org/data/2.5';
  static const String apiKey = '7cf6679ea6f3dd94c16274b5a29189ef';
  static String currentWeatherByName(String city) =>
      '$weatherBaseUrl/weather?q=$city&appid=$apiKey';
  static String weatherIcon(String iconCode) =>
      'http://openweathermap.org/img/wn/$iconCode@2x.png';
}
