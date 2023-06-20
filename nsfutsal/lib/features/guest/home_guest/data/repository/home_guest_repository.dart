import 'package:nsfutsal/core/service_locator.dart';
import 'package:nsfutsal/features/guest/home_guest/data/datasource/home_guest_product_remote_source.dart';
import 'package:nsfutsal/features/guest/home_guest/data/models/products/product_guest_model.dart';
import 'package:dartz/dartz.dart';
import 'package:nsfutsal/features/guest/home_guest/domain/repository/home_guest_repository.dart';
import 'package:nsfutsal/core/failure.dart';

class HomeGuestRepositoryImpl extends HomeGuestRepository {
  @override
  Future<Either<Failure, ProductGuestList>> getProductsFromServer() {
    return serviceLocator<ProductsGuestRemoteDataSource>().getProductFromServer();
  }
}
