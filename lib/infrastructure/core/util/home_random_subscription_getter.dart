import 'dart:math';

class HomeRandomSubscriptionGetter {
  static String getRandomImageAsset() {
    final List<String> assetsPaths = [
      'assets/images/subscription_home_1.png',
      'assets/images/subscription_home_2.png',
    ];
    // random instance for getting the random index
    final random = Random();
    return assetsPaths[random.nextInt(
      assetsPaths.length,
    )];
  }
}
