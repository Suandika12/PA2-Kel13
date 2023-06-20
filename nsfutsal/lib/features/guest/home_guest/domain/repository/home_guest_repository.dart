import 'package:dartz/dartz.dart';
import '../../../../../core/failure.dart';
import '../../data/models/products/product_guest_model.dart';

abstract class HomeGuestRepository {
  Future<Either<Failure, ProductGuestList>> getProductsFromServer();
}
