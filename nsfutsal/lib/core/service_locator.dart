import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/cart/data/datasource/cart_remote_source.dart';
import '../features/cart/data/repository/cart_repository.dart';
import '../features/cart/domain/repository/cart_repository.dart';
import '../features/cart/domain/usecases/decrease_quantity.dart';
import '../features/cart/domain/usecases/delete_from_cart.dart';
import '../features/cart/domain/usecases/get_cart.dart' as cart;
import '../features/cart/domain/usecases/increase_quantity.dart';
import '../features/checkout/data/datasource/checkout_remote_source.dart';
import '../features/checkout/data/repository/checkout_repository.dart';
import '../features/checkout/domain/repository/checkout_repository.dart';
import '../features/checkout/domain/usecases/checkout_usecase.dart';
import '../features/checkout/domain/usecases/get_cart.dart' as checkout;
import '../features/home/data/datasource/home_product_remote_source.dart'
    as home;
import '../features/home/data/datasource/home_user_local_data_source.dart';
import '../features/home/data/repository/home_repository.dart';
import '../features/home/domain/repository/home_repository.dart';
import '../features/home/domain/usercases/get_local_user.dart' as home;
import '../features/home/domain/usercases/get_products.dart' as home;
import '../features/login/data/datasource/login_remote_datasource.dart';
import '../features/login/data/repository/login_user_repository.dart';
import '../features/login/domain/repository/login_user_repository.dart';
import '../features/login/domain/usecases/login_usecase.dart';
import '../features/order/data/datasource/order_remote_source.dart';
import '../features/order/data/repository/order_repository.dart';
import '../features/order/domain/repository/order_repository.dart';
import '../features/order/domain/usecases/cancel_order_usecase.dart';
import '../features/order/domain/usecases/get_order.dart' as order;
import '../features/product_detail/data/datasource/product_detail_remote_source.dart';
import '../features/product_detail/data/repository/product_detail_repository.dart';
import '../features/product_detail/domain/repository/product_detail_repository.dart';
import '../features/product_detail/domain/usecases/add_to_cart.dart';
import '../features/product_detail/domain/usecases/get_detail_product.dart';
import '../features/profile/data/datasource/profile_user_local_data_source.dart';
import '../features/profile/data/repository/profile_repository.dart';
import '../features/profile/domain/repository/profile_repository.dart';
import '../features/profile/domain/usecases/get_local_user.dart' as profile;
import '../features/register/data/datasource/register_remote_datasource.dart';
import '../features/register/data/repository/register_user_repository.dart';
import '../features/register/domain/repository/register_user_repository.dart';
import '../features/register/domain/usecases/register_usecase.dart';
import '../features/booking_lapangan/data/datasource/booking_lapangan_remote_source.dart';
import '../features/booking_lapangan/data/repository/booking_lapangan_repository.dart';
import '../features/booking_lapangan/domain/repository/bookinglapangan_repository.dart';
import '../features/booking_lapangan/domain/usecases/cancel_booking.dart';
import '../features/booking_lapangan/domain/usecases/get_booking_lapangan.dart';
import '../features/lapangan/data/datasource/lapangan_remote_source.dart';
import '../features/lapangan/data/datasource/lapangan_user_local_data_source.dart';
import '../features/lapangan/data/repository/lapangan_repository.dart';
import '../features/lapangan/domain/repository/lapangan_repository.dart';
import '../features/lapangan/domain/usecases/get_local_user.dart' as room;
import '../features/lapangan/domain/usecases/get_lapangan.dart';
import '../features/lapangan_detail/data/datasource/lapangan_detail_remote_source.dart';
import '../features/lapangan_detail/data/repository/lapangan_detail_repository.dart';
import '../features/lapangan_detail/domain/repository/lapangan_detail_repository.dart';
import '../features/lapangan_detail/domain/usecases/get_detail_lapangan.dart';
import '../features/lapangan_detail/domain/usecases/booking_lapangan.dart';
import '../features/splash/domain/usecase/check_user_login_status.dart';
import '../services/user_cache_service.dart';
import 'Request.dart';

final serviceLocator = GetIt.instance;
Future<void> setUpServiceLocator() async {
  //check if user logged in or not
  serviceLocator.registerFactory<CheckUserLoginStatus>(
    () => CheckUserLoginStatusImpl(),
  );
  //usecase
  serviceLocator.registerFactory<LoginUserUsecase>(() => LoginUserUsecase());

  //datasource
  serviceLocator.registerFactory<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl());

  // repositories
  serviceLocator
      .registerFactory<LoginUserRepository>(() => LoginUserRepositoryImpl());

//register user
  //usecase
  serviceLocator
      .registerFactory<RegisterUserUsecase>(() => RegisterUserUsecase());

  // datasource
  serviceLocator.registerFactory<RegisterRemoteDataSource>(
      () => RegisterRemoteDataSourceImpl());

  // repositories
  serviceLocator.registerFactory<RegisterUserRepository>(
      () => RegisterUserRepositoryImpl());

//home user
// usecase
  serviceLocator.registerFactory<home.GetLocalUserUsecase>(
      () => home.GetLocalUserUsecase());

  // datasource
  serviceLocator.registerFactory<HomeLocalUserDataSource>(
      () => HomeLocalUserDataSourceImlp());
// home products
// usecase
  serviceLocator.registerFactory<home.GetProductsFromServer>(
      () => home.GetProductsFromServer());

  // datasource
  serviceLocator.registerFactory<home.ProductsRemoteDataSource>(
      () => home.ProductsRemoteDataSourceImpl());

// repositories
  serviceLocator.registerFactory<HomeRepository>(() => HomeRepositoryImpl());

// detail product
// usecase
  serviceLocator.registerFactory<GetDetailProductFromServer>(
      () => GetDetailProductFromServer());
  serviceLocator.registerFactory<AddToCartUseCase>(() => AddToCartUseCase());

// datasource
  serviceLocator.registerFactory<DetailProductRemoteDataSource>(
      () => DetailProductRemoteDataSourceImpl());
// repositories
  serviceLocator.registerFactory<ProductDetailRepository>(
      () => ProductDetailRepositoryImpl());

// credit
// usecase
// room
// room user
// usecase
  serviceLocator.registerFactory<room.GetLocalUserUsecase>(
      () => room.GetLocalUserUsecase());
  serviceLocator
      .registerFactory<GetLapangansFromServer>(() => GetLapangansFromServer());

  // datasource
  serviceLocator.registerFactory<LapanganLocalUserDataSource>(
      () => LapanganLocalUserDataSourceImlp());
  serviceLocator
      .registerFactory<LapanganRemoteDataSource>(() => LapanganRemoteDataSourceImpl());
// repositories
  serviceLocator.registerFactory<LapanganRepository>(() => LapanganRepositoryImpl());

// room detail
// usecase
  serviceLocator.registerFactory<GetLapanganDetailFromServer>(
      () => GetLapanganDetailFromServer());
  serviceLocator
      .registerFactory<BookingLapanganUseCase>(() => BookingLapanganUseCase());

// datasource
  serviceLocator.registerFactory<LapanganDetailRemoteDataSource>(
      () => LapanganDetailRemoteDataSourceImpl());

// repositories
  serviceLocator
      .registerFactory<LapanganDetailRepository>(() => LapanganDetailRepositoryImpl());
// cart
// usecase
  serviceLocator
      .registerFactory<cart.GetCartFromServer>(() => cart.GetCartFromServer());
  serviceLocator.registerFactory<IncreaseQuantity>(() => IncreaseQuantity());
  serviceLocator.registerFactory<DecreaseQuantity>(() => DecreaseQuantity());
  serviceLocator.registerFactory<DeleteFromCart>(() => DeleteFromCart());
// datasource
  serviceLocator
      .registerFactory<CartRemoteDataSource>(() => CartRemoteDataSourceImpl());
// repositories
  serviceLocator.registerFactory<CartRepository>(() => CartRepositoryImpl());

// checkout
// usecase
  serviceLocator.registerFactory<checkout.GetCartFromServer>(
      () => checkout.GetCartFromServer());
  serviceLocator.registerFactory<CheckoutUseCase>(() => CheckoutUseCase());
// datasource
  serviceLocator.registerFactory<CheckoutRemoteDataSource>(
      () => CheckoutRemoteDataSourceImpl());
// repositories
  serviceLocator
      .registerFactory<CheckoutRepository>(() => CheckoutRepositoryImpl());

// order
// usecase
  serviceLocator.registerFactory<order.GetOrdersFromServer>(
      () => order.GetOrdersFromServer());
  serviceLocator
      .registerFactory<CancelOrderUseCase>(() => CancelOrderUseCase());

// datasource
  serviceLocator.registerFactory<OrderRemoteDataSource>(
      () => OrderRemoteDataSourceImpl());
// repositories
  serviceLocator.registerFactory<OrderRepository>(() => OrderRepositoryImpl());
// profile
// usecase
  serviceLocator.registerFactory<profile.GetLocalUserUsecase>(
      () => profile.GetLocalUserUsecase());
// datasource
  serviceLocator.registerFactory<ProfileLocalUserDataSource>(
      () => ProfileLocalUserDataSourceImlp());
// repositories
  serviceLocator
      .registerFactory<ProfileRepository>(() => ProfileRepositoryImpl());

// request room
// usecase
  serviceLocator.registerFactory<GetBookingLapangansFromServer>(
      () => GetBookingLapangansFromServer());
  serviceLocator
      .registerFactory<CancelBookingUseCase>(() => CancelBookingUseCase());
// datasource
  serviceLocator.registerFactory<BookingLapanganRemoteDataSource>(
      () => BookingLapanganRemoteDataSourceImpl());

// repositories
  serviceLocator.registerFactory<BookingLapanganRepository>(
      () => BookingLapanganRepositoryImpl());

  // services
  serviceLocator.registerSingleton<UserCacheService>(UserCacheService());
  //external
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);
  // request
  serviceLocator.registerSingleton<Request>(Request());
}
