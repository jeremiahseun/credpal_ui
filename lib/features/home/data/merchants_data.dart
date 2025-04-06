import 'package:credpal_test/models/merchant.dart';

class MerchantsData {
  static List<Merchant> getMerchants() {
    return [
      Merchant(
        id: '1',
        name: 'Justrite',
        logoUrl: 'assets/images/merchants/dw.png',
        isOnline: true,
      ),
      Merchant(
        id: '2',
        name: 'Orile Restaurant',
        logoUrl: 'assets/images/merchants/orile.png',
        isOnline: true,
      ),
      Merchant(
        id: '3',
        name: 'Slot',
        logoUrl: 'assets/images/merchants/slot.png',
        isOnline: true,
      ),
      Merchant(
        id: '4',
        name: 'Pointek',
        logoUrl: 'assets/images/merchants/dw.png',
        isOnline: true,
      ),
      Merchant(
        id: '5',
        name: 'ogabassey',
        logoUrl: 'assets/images/merchants/ogabassey.png',
        isOnline: true,
      ),
      Merchant(
        id: '6',
        name: 'Casper Stores',
        logoUrl: 'assets/images/merchants/orile.png',
        isOnline: true,
      ),
      Merchant(
        id: '7',
        name: 'Dreamworks',
        logoUrl: 'assets/images/merchants/dw.png',
        isOnline: false,
      ),
      Merchant(
        id: '8',
        name: 'Hubmart',
        logoUrl: 'assets/images/merchants/slot.png',
        isOnline: true,
      ),
      Merchant(
        id: '9',
        name: 'Just Used',
        logoUrl: 'assets/images/merchants/dw.png',
        isOnline: true,
      ),
      Merchant(
        id: '10',
        name: 'Just Tones',
        logoUrl: 'assets/images/merchants/orile.png',
        isOnline: false,
      ),
    ];
  }
}
