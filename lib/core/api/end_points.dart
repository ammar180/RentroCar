class EndPoints {
  static String baseUrl = "https://xhlo-lkyx-rhhz.n7c.xano.io/api:ebq6sPqW/";
  static String login = "auth/login";

  static String getUserDataEndPoint(id) {
    return "user/get-user/$id";
  }
  static String signUp = 'auth/signup';

  static String getHomeCars = 'cars';
}

class ApiKeys {
  static String status = "status";
  static String errorMessage = "ErrorMessage";
  static String message = "message";
  static String token = "token";
  static String id = "Id";

  static String email = 'email';
  static String password = 'password';
  static String name = 'Name';
  static String phone = 'Phone';
  static String profileImg = 'ProfileImg';
  static String location = 'Location';

  static String confirmPassword = '';

  // car model keys
  static String carId = 'CarId';
  static String carModel = 'Model';
  static String carAvailableDays = 'AvailableDays';
  static String carRentingPrice = 'RentingPrice';
  static String carIsAvailable = 'IsAvailable';
  static String carPhotos = 'CarPhotos';

  static String topRatedCars = 'TopRatedCars';

  static String mostPopularCars = 'mostPopularCars';
}
