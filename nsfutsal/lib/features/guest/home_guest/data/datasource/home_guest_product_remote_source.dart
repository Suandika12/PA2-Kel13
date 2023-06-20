import 'package:dartz/dartz.dart';
import '../../../../../core/Request.dart';
import '../../../../../core/failure.dart';
import '../../../../../core/service_locator.dart';
import '../models/products/product_guest_model.dart';

abstract class ProductsGuestRemoteDataSource {
  Future<Either<Failure, ProductGuestList>> getProductFromServer();
}

class ProductsGuestRemoteDataSourceImpl extends ProductsGuestRemoteDataSource {
  @override
  Future<Either<Failure, ProductGuestList>> getProductFromServer() async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/products_guest');
      if (response.statusCode == 200) {
        ProductGuestList productGuestList = [];
        final productGuestListMap = response.data['data'];
        for (var product in productGuestListMap) {
          try {
            productGuestList.add(Product.fromJson(product));
          } catch (e) {
            return const Left(
              ParsingFailure('Unable to parse the response'),
            );
          }
        }
        return Right(productGuestList);
      }
      return Left(
        ConnectionFailure(response.data['message']),
      );
    } catch (e) {
      return const Left(
        ParsingFailure('Unable to parse the response'),
      );
    }
  }
  //
}
