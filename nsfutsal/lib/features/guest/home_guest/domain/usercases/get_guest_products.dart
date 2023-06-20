import 'package:dartz/dartz.dart';

import '../../../../../core/failure.dart';
import '../../../../../core/service_locator.dart';
import '../../data/models/products/product_guest_model.dart';
import '../repository/home_guest_repository.dart';

class GetProductsGuestFromServer {
  Future<Either<Failure, ProductGuestList>> getProductsFromServer() {
    return serviceLocator<HomeGuestRepository>().getProductsFromServer();
  }
}
