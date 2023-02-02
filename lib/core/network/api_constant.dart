class ApiConstant {
  static const String baseUrl = 'https://colorz.co.il/arabia/public/api';
  static const String base = 'https://colorz.co.il/arabia/public';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/main';
  static const String category = '/category';
  static const String showProductMainCategory = '/showProductMainCategory/';
  static const String showProductSubCategory = '/showProductSubCategory/';
  static const String showProduct = '/showProduct/';
  static const String country = '/country';
  static const String updateUser = '/update-User';
  static const String user = '/user';
  static const String productFeatured = '/product_featured';
  static const String products = '/products';
  static const String favProduct = '/favProduct';

  //---------Cart --------------//
  static const String addCart = '/cart/add';
  static const String showCart = '/cart/show-cart';
  static const String updateCountCart = '/cart/update-count-cart';
  static const String clearItemCart = '/cart/clear-item-cart';
  static const String clearAllCart = '/cart/clear-all-cart';
  static const String setDiscount = '/cart/set-discount-cart';
  static const String createOrder = '/create-order';
  static const String searchProduct = '/searchProduct';
  static const String completeCreateOrder = '/completeCreateOrder';
  static const String cancelOrder = '/status-cancel-order/';

  //--------Profile -----------//
  static const String addAddress = '/profile/addAdress';
  static const String myAddress = '/profile/myAddress';
  static const String deleteAddress = '/profile/deleteAddress';
  static const String myFavProduct = '/profile/myFavProduct';
  static const String myOrder = '/profile/myOrder';
  static const String myNotification = '/profile/myNotification';

  static const int apiTimeOut = 60000;
  static String imageUrl(String path) => '$base$path';
}
