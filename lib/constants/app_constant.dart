class AppConstant {
  static const String baseUrl = 'http://192.168.18.10:8000/api/';

  // Endpoint
  static const String loginEndpoint = 'login';
  static const String logoutEndpoint = 'logout';
  static const String registerEndpoint = 'register';
  static const String leaveRequestEndpoint = 'form-leave';
  
  // Shared Pref
  static const String tokenKey = 'access_token';
  static const String userKey = 'user_data';
}
