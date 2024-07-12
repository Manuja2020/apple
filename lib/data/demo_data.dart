import 'package:apple/model/product_model.dart';

class DemoData {
  static List<String> sliderImages = [
    'https://s.yimg.com/os/creatr-uploaded-images/2022-05/1cd0cb70-d6d0-11ec-bffb-4773eeb8ae79',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRceq7x8Il_YEJyHoUd_BK9rQTIO9pkjYhc1A&s',
    'https://i0.wp.com/battellemedia.com/wp-content/uploads/2022/09/ApplePrivacyAd.png?resize=840%2C482&ssl=1',
    'https://qph.cf2.quoracdn.net/main-qimg-59095bbc22b3fae668c669009573fe22-lq',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDH0BNSX7zHrW4AVmA8ryMtxZKgiU9wNIEYA&s'
  ];

  List<ProductModel> productList = [
    ProductModel(name: 'MacBook Air M2', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwnYUwoh83VQuEqp91_Jf8XVd_ZpBEv4G0Eg&s', price: 400000, description: 'description'),
    ProductModel(name: 'MacBook Air M3', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM9yjwBMhoRAW0uB_dSEdjnN_m6ip-Ck44YQ&s', price: 400000, description: 'description'),
    ProductModel(name: 'IPad 1st Gen', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwnYUwoh83VQuEqp91_Jf8XVd_ZpBEv4G0Eg&s', price: 400000, description: 'description'),
    ProductModel(name: 'IPad 2nd Gen', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwnYUwoh83VQuEqp91_Jf8XVd_ZpBEv4G0Eg&s', price: 400000, description: 'description'),
    ProductModel(name: '11 Pro Max', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwnYUwoh83VQuEqp91_Jf8XVd_ZpBEv4G0Eg&s', price: 400000, description: 'description')
  ];
}
