import 'package:auto_route/auto_route.dart';
import 'package:nsfutsal/features/checkout/presentation/screens/checkout_screen.dart';
import 'package:nsfutsal/features/checkout/presentation/screens/checkout_success_screen.dart';
import 'package:nsfutsal/features/credit/presentation/screens/credit_checkout_screen.dart';
import 'package:nsfutsal/features/credit/presentation/screens/credit_checkout_success_screen.dart';
import 'package:nsfutsal/features/credit/presentation/screens/credit_screen.dart';
import 'package:nsfutsal/features/order/presentation/screens/order_screen.dart';
import 'package:nsfutsal/features/profile/presentation/screens/profile_screen.dart';
import 'package:nsfutsal/features/booking_lapangan/presentation/screens/booking_lapangan_screen.dart';
import 'package:nsfutsal/features/lapangan/presentation/screen/lapangan_screen.dart';
import 'package:nsfutsal/features/lapangan_detail/presentation/screens/lapangan_detail_screen.dart';
import 'package:nsfutsal/features/guest/lapangan_guest/presentation/screen/lapangan_guest_screen.dart';
import '../features/cart/presentation/screens/cart_screen.dart';
import '../features/event/presentation/screens/event_screen.dart';
import '../features/guest/home_guest/presentation/screens/home_guest_screen.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/login/presentation/screens/login_screen.dart';
import '../features/product_detail/presentation/screens/product_detail_screen.dart';
import '../features/register/presentation/screens/register_screen.dart';
import '../features/splash/presentation/splash_screen.dart';


@MaterialAutoRouter(
  routes: [
    AutoRoute<bool>(page: SplashScreen, initial: true),
    AutoRoute<bool>(page: LoginScreen, path: LoginScreen.routeName),
    AutoRoute<bool>(page: RegisterScreen, path: RegisterScreen.routeName),
    AutoRoute<bool>(page: HomeScreen, path: HomeScreen.routeName),
    AutoRoute<bool>(page: ProductDetailScreen,path: ProductDetailScreen.routeName,),
    AutoRoute<bool>(page: CreditScreen, path: CreditScreen.routeName),
    AutoRoute<bool>(
        page: CreditCheckoutScreen, path: CreditCheckoutScreen.routeName),
    AutoRoute<bool>(
        page: CreditCheckoutSuccessScreen,
        path: CreditCheckoutSuccessScreen.routeName),
    AutoRoute<bool>(page: LapanganScreen, path: LapanganScreen.routeName),
    AutoRoute<bool>(page: LapanganDetailScreen, path: LapanganDetailScreen.routeName),
    AutoRoute<bool>(page: CartScreen, path: CartScreen.routeName),
    AutoRoute<bool>(page: CheckoutScreen, path: CheckoutScreen.routeName),
    AutoRoute<bool>(
        page: CheckoutSuccessScreen, path: CheckoutSuccessScreen.routeName),
    AutoRoute<bool>(page: ProfileScreen, path: ProfileScreen.routeName),
    AutoRoute<bool>(page: OrderScreen, path: OrderScreen.routeName),
    AutoRoute<bool>(page: BookingLapanganScreen, path: BookingLapanganScreen.routeName),
    AutoRoute<bool>(page: EventScreen, path: EventScreen.routeName),
    AutoRoute<bool>(page: EventScreen, path: EventScreen.routeName),
    AutoRoute<bool>(page: LapanganGuestScreen, path: LapanganGuestScreen.routeName),
    AutoRoute<bool>(page: HomeGuestScreen, path: HomeGuestScreen.routeName),  
  
  ],
  replaceInRouteName: 'Page,Route',
)
class $FlutterRouter {}
