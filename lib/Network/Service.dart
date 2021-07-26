import 'package:api_training/Network/Responses/GetBrandsResponse.dart';
import 'package:api_training/Network/Responses/GetInfoResponse.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'Responses/LoginResponse.dart';
import 'Requests/LoginRequest.dart';
import 'Responses/RegisterResponse.dart';
import 'Requests/RegisterRequest.dart';
part 'Service.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @POST('https://khaled-cars.magdsoft.com/api/login')
  Future<LoginResponse> login(
    @Body() LoginRequest loginRequest,
  );

  @POST('https://khaled-cars.magdsoft.com/api/register')
  Future<RegisterResponse> register(
    @Body() RegisterRequest registerRequest,
  );

  @GET('https://khaled-cars.magdsoft.com/api/getInfo')
  Future<GetInfoResponse> getInfo();

  @GET('https://khaled-cars.magdsoft.com/api/getBrands')
  Future<GetBrandsResponse> getBrands();
}
