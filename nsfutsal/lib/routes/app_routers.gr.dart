// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../features/booking_lapangan/presentation/screens/booking_lapangan_screen.dart'
    as _i13;
import '../features/cart/presentation/screens/cart_screen.dart' as _i8;
import '../features/checkout/data/models/order/order_model.dart' as _i16;
import '../features/checkout/presentation/screens/checkout_screen.dart' as _i9;
import '../features/checkout/presentation/screens/checkout_success_screen.dart'
    as _i10;
import '../features/home/presentation/screens/home_screen.dart' as _i4;
import '../features/lapangan/presentation/screen/lapangan_screen.dart' as _i6;
import '../features/lapangan_detail/presentation/screens/lapangan_detail_screen.dart'
    as _i7;
import '../features/login/presentation/screens/login_screen.dart' as _i2;
import '../features/order/presentation/screens/order_screen.dart' as _i12;
import '../features/product_detail/presentation/screens/product_detail_screen.dart'
    as _i5;
import '../features/profile/presentation/screens/profile_screen.dart' as _i11;
import '../features/register/presentation/screens/register_screen.dart' as _i3;
import '../features/splash/presentation/splash_screen.dart' as _i1;

class FlutterRouter extends _i14.RootStackRouter {
  FlutterRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    RegisterScreen.name: (routeData) {
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i3.RegisterScreen(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    ProductDetailScreen.name: (routeData) {
      final args = routeData.argsAs<ProductDetailScreenArgs>();
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: _i5.ProductDetailScreen(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    LapanganScreen.name: (routeData) {
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i6.LapanganScreen(),
      );
    },
    LapanganDetailScreen.name: (routeData) {
      final args = routeData.argsAs<LapanganDetailScreenArgs>();
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: _i7.LapanganDetailScreen(
          key: args.key,
          lapanganId: args.lapanganId,
        ),
      );
    },
    CartScreen.name: (routeData) {
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i8.CartScreen(),
      );
    },
    CheckoutScreen.name: (routeData) {
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i9.CheckoutScreen(),
      );
    },
    CheckoutSuccessScreen.name: (routeData) {
      final args = routeData.argsAs<CheckoutSuccessScreenArgs>();
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: _i10.CheckoutSuccessScreen(
          key: args.key,
          order: args.order,
        ),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i11.ProfileScreen(),
      );
    },
    OrderScreen.name: (routeData) {
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i12.OrderScreen(),
      );
    },
    BookingLapanganScreen.name: (routeData) {
      return _i14.MaterialPageX<bool>(
        routeData: routeData,
        child: const _i13.BookingLapanganScreen(),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i14.RouteConfig(
          LoginScreen.name,
          path: '/login',
        ),
        _i14.RouteConfig(
          RegisterScreen.name,
          path: '/register',
        ),
        _i14.RouteConfig(
          HomeScreen.name,
          path: '/home',
        ),
        _i14.RouteConfig(
          ProductDetailScreen.name,
          path: '/product-detail',
        ),
        _i14.RouteConfig(
          LapanganScreen.name,
          path: '/lapangan',
        ),
        _i14.RouteConfig(
          LapanganDetailScreen.name,
          path: '/lapangan-detail',
        ),
        _i14.RouteConfig(
          CartScreen.name,
          path: '/cart',
        ),
        _i14.RouteConfig(
          CheckoutScreen.name,
          path: '/checkout',
        ),
        _i14.RouteConfig(
          CheckoutSuccessScreen.name,
          path: '/checkout-success',
        ),
        _i14.RouteConfig(
          ProfileScreen.name,
          path: '/profile',
        ),
        _i14.RouteConfig(
          OrderScreen.name,
          path: '/order',
        ),
        _i14.RouteConfig(
          BookingLapanganScreen.name,
          path: '/Booking-lapangan',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i14.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i14.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.RegisterScreen]
class RegisterScreen extends _i14.PageRouteInfo<void> {
  const RegisterScreen()
      : super(
          RegisterScreen.name,
          path: '/register',
        );

  static const String name = 'RegisterScreen';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreen extends _i14.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '/home',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i5.ProductDetailScreen]
class ProductDetailScreen extends _i14.PageRouteInfo<ProductDetailScreenArgs> {
  ProductDetailScreen({
    _i15.Key? key,
    required int productId,
  }) : super(
          ProductDetailScreen.name,
          path: '/product-detail',
          args: ProductDetailScreenArgs(
            key: key,
            productId: productId,
          ),
        );

  static const String name = 'ProductDetailScreen';
}

class ProductDetailScreenArgs {
  const ProductDetailScreenArgs({
    this.key,
    required this.productId,
  });

  final _i15.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailScreenArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i6.LapanganScreen]
class LapanganScreen extends _i14.PageRouteInfo<void> {
  const LapanganScreen()
      : super(
          LapanganScreen.name,
          path: '/lapangan',
        );

  static const String name = 'LapanganScreen';
}

/// generated route for
/// [_i7.LapanganDetailScreen]
class LapanganDetailScreen
    extends _i14.PageRouteInfo<LapanganDetailScreenArgs> {
  LapanganDetailScreen({
    _i15.Key? key,
    required int lapanganId,
  }) : super(
          LapanganDetailScreen.name,
          path: '/lapangan-detail',
          args: LapanganDetailScreenArgs(
            key: key,
            lapanganId: lapanganId,
          ),
        );

  static const String name = 'LapanganDetailScreen';
}

class LapanganDetailScreenArgs {
  const LapanganDetailScreenArgs({
    this.key,
    required this.lapanganId,
  });

  final _i15.Key? key;

  final int lapanganId;

  @override
  String toString() {
    return 'LapanganDetailScreenArgs{key: $key, lapanganId: $lapanganId}';
  }
}

/// generated route for
/// [_i8.CartScreen]
class CartScreen extends _i14.PageRouteInfo<void> {
  const CartScreen()
      : super(
          CartScreen.name,
          path: '/cart',
        );

  static const String name = 'CartScreen';
}

/// generated route for
/// [_i9.CheckoutScreen]
class CheckoutScreen extends _i14.PageRouteInfo<void> {
  const CheckoutScreen()
      : super(
          CheckoutScreen.name,
          path: '/checkout',
        );

  static const String name = 'CheckoutScreen';
}

/// generated route for
/// [_i10.CheckoutSuccessScreen]
class CheckoutSuccessScreen
    extends _i14.PageRouteInfo<CheckoutSuccessScreenArgs> {
  CheckoutSuccessScreen({
    _i15.Key? key,
    required _i16.OrderModel order,
  }) : super(
          CheckoutSuccessScreen.name,
          path: '/checkout-success',
          args: CheckoutSuccessScreenArgs(
            key: key,
            order: order,
          ),
        );

  static const String name = 'CheckoutSuccessScreen';
}

class CheckoutSuccessScreenArgs {
  const CheckoutSuccessScreenArgs({
    this.key,
    required this.order,
  });

  final _i15.Key? key;

  final _i16.OrderModel order;

  @override
  String toString() {
    return 'CheckoutSuccessScreenArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i11.ProfileScreen]
class ProfileScreen extends _i14.PageRouteInfo<void> {
  const ProfileScreen()
      : super(
          ProfileScreen.name,
          path: '/profile',
        );

  static const String name = 'ProfileScreen';
}

/// generated route for
/// [_i12.OrderScreen]
class OrderScreen extends _i14.PageRouteInfo<void> {
  const OrderScreen()
      : super(
          OrderScreen.name,
          path: '/order',
        );

  static const String name = 'OrderScreen';
}

/// generated route for
/// [_i13.BookingLapanganScreen]
class BookingLapanganScreen extends _i14.PageRouteInfo<void> {
  const BookingLapanganScreen()
      : super(
          BookingLapanganScreen.name,
          path: '/Booking-lapangan',
        );

  static const String name = 'BookingLapanganScreen';
}
