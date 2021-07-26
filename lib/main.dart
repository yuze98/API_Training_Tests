import 'package:api_training/Network/Requests/RegisterRequest.dart';
import 'package:api_training/Network/Responses/GetBrandsResponse.dart';
import 'package:api_training/Network/Responses/GetInfoResponse.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Network/Requests/LoginRequest.dart';
import 'Network/Responses/LoginResponse.dart';
import 'Network/Responses/RegisterResponse.dart';
import 'Network/Service.dart';

RestClient client;
Dio dio;
Future<void> main() async {
  dio = Dio();
  dio.interceptors.add(
    DioCacheManager(
      CacheConfig(
        defaultMaxAge: Duration(minutes: 15),
        defaultMaxStale: Duration(minutes: 15),
      ),
    ).interceptor,
  );
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options) async {
// Both apis require this parameter
        debugPrintThrottled(options.method + ' ' + options.path);
        debugPrintThrottled(options.uri.toString());
        debugPrintThrottled(options.queryParameters.toString());
        return options;
      },
      onResponse: (Response response) async {
        debugPrintThrottled(response.data.toString());
        return response;
      },
    ),
  );
  client = RestClient(dio);
  runApp(MyApp());

  // trying to call the API
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String BrandName = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.black,
                child: TextButton(
                  child: Text("Login API TEST"),
                  onPressed: () {
                    loginFunc();
                  },
                ),
              ),
              Container(
                color: Colors.black,
                child: TextButton(
                  child: Text("Register API TEST"),
                  onPressed: () {
                    registerFunc();
                  },
                ),
              ),
              Container(
                color: Colors.black,
                child: TextButton(
                  child: Text("Get the Info API TEST"),
                  onPressed: () {
                    getInfofunc();
                  },
                ),
              ),
              Container(
                color: Colors.black,
                child: TextButton(
                  child: Text("Get the Brands API TEST"),
                  onPressed: () async {
                    print('this is before :$BrandName');

                    BrandName = await getBrandsfunc();

                    print('this is finish');
                  },
                ),
              ),
              Container(
                color: Colors.black,
                child: Text(
                  BrandName == null ? 'Non' : BrandName,
                  style: TextStyle(color: Colors.white, fontSize: 60),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> loginFunc() async {
  LoginResponse loginResponse = await client
      .login(LoginRequest(phone: '00201128661674', password: '123456'));
  if (loginResponse?.status != null && loginResponse?.status == 200) {
    print(loginResponse.message);
  } else {
    print('Something went wrong, please try again');
    if (loginResponse?.message != null) {
      print(loginResponse?.message);
    }
    if (loginResponse.status == 419) {
      print('Response error from server');
    }
  }
}

Future<void> registerFunc() async {
  RegisterResponse registerResponse = await client.register(RegisterRequest(
      phone: '00201021846340',
      password: '123456',
      name: 'Joe',
      email: 'ahmed@hotmail.com'));
  if (registerResponse?.status != null && registerResponse?.status == 200) {
    print(registerResponse.message);
  } else {
    print('Something went wrong, please try again');
    if (registerResponse?.message != null) {
      print(registerResponse?.message);
    }
    if (registerResponse.status == 409 || registerResponse.status == 408) {
      print('Response error from server');
    }
  }
}

Future<void> getInfofunc() async {
  GetInfoResponse getInfoResponse = await client.getInfo();
  if (getInfoResponse?.status != null && getInfoResponse?.status == 200) {
    print(getInfoResponse.message);
  } else {
    print('Something went wrong, please try again');
    if (getInfoResponse?.message != null) {
      print(getInfoResponse?.message);
    }
    if (getInfoResponse.status == 406) {
      print('Response error from server');
    }
  }
}

Future<String> getBrandsfunc() async {
  GetBrandsResponse getBrandsResponse = await client.getBrands();
  if (getBrandsResponse?.status != null && getBrandsResponse?.status == 200) {
    print(getBrandsResponse.message);

    return getBrandsResponse.brandModel[0].name;
  } else {
    print('Something went wrong, please try again');
    if (getBrandsResponse?.message != null) {
      print(getBrandsResponse?.message);
    }
    if (getBrandsResponse.status == 406) {
      print('Response error from server');
    }
  }
}
