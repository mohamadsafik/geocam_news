import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '../services.dart';

class ErrorHandler {
  static BaseResponse getDioException(error) {
    int status = 405;
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.connectionTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badResponse:
              status = error.response?.statusCode ?? 405;
              switch (error.response?.statusCode) {
                case 400:
                  networkExceptions = NetworkExceptions.defaultError(
                    error.response!.data["message"],
                  );
                  break;
                case 401:
                  networkExceptions =
                      const NetworkExceptions.unauthorisedRequest();
                  break;
                case 403:
                  networkExceptions =
                      const NetworkExceptions.unauthorisedRequest();
                  break;
                case 404:
                  networkExceptions = const NetworkExceptions.notFound(
                    "Not found",
                  );
                  break;
                case 409:
                  networkExceptions = const NetworkExceptions.conflict();
                  break;
                case 408:
                  networkExceptions = const NetworkExceptions.requestTimeout();
                  break;
                case 500:
                  networkExceptions =
                      const NetworkExceptions.internalServerError();
                  break;
                case 503:
                  networkExceptions =
                      const NetworkExceptions.serviceUnavailable();
                  break;
                default:
                  var responseCode = error.response?.statusCode;
                  networkExceptions = NetworkExceptions.defaultError(
                    "Received invalid status code: $responseCode",
                  );
              }
              break;
            case DioExceptionType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioExceptionType.unknown:
              networkExceptions = NetworkExceptions.defaultError(
                "Error ${error.message}",
              );
              break;
            case DioExceptionType.badCertificate:
              networkExceptions = NetworkExceptions.defaultError(
                "Error ${error.message}",
              );
            case DioExceptionType.connectionError:
              networkExceptions = NetworkExceptions.defaultError(
                "Error ${error.message}",
              );
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return BaseResponse(
          status: status.toString(),
          message: getErrorMessage(networkExceptions),
        );
      } on FormatException {
        return BaseResponse(
          status: status.toString(),
          message: getErrorMessage(const NetworkExceptions.formatException()),
        );
      } catch (_) {
        return BaseResponse(
          status: status.toString(),
          message: getErrorMessage(const NetworkExceptions.unexpectedError()),
        );
      }
    } else {
      log(error.toString());
      if (error.toString().contains("is not a subtype of")) {
        return BaseResponse(
          status: status.toString(),
          message: getErrorMessage(const NetworkExceptions.unableToProcess()),
        );
      } else {
        return BaseResponse(
          status: status.toString(),
          message: getErrorMessage(
            NetworkExceptions.defaultError(error.toString()),
          ),
        );
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    if (networkExceptions is NotImplemented) {
      return "Not Implemented";
    } else if (networkExceptions is RequestCancelled) {
      return "Request Cancelled";
    } else if (networkExceptions is InternalServerError) {
      return "Internal Server Error";
    } else if (networkExceptions is NotFound) {
      return (networkExceptions).reason;
    } else if (networkExceptions is ServiceUnavailable) {
      return "Service unavailable";
    } else if (networkExceptions is MethodNotAllowed) {
      return "Method Allowed";
    } else if (networkExceptions is BadRequest) {
      return "Bad request";
    } else if (networkExceptions is UnauthorisedRequest) {
      return "Unauthorised request";
    } else if (networkExceptions is UnexpectedError) {
      return "Unexpected error occurred";
    } else if (networkExceptions is RequestTimeout) {
      return "Connection request timeout";
    } else if (networkExceptions is NoInternetConnection) {
      return "No internet connection";
    } else if (networkExceptions is Conflict) {
      return "Error due to a conflict";
    } else if (networkExceptions is SendTimeout) {
      return "Send timeout in connection with API server";
    } else if (networkExceptions is UnableToProcess) {
      return "Unable to process the data";
    } else if (networkExceptions is DefaultError) {
      return (networkExceptions).error;
    } else if (networkExceptions is FormatException) {
      return "Unexpected error occurred";
    } else if (networkExceptions is NotAcceptable) {
      return "Not acceptable";
    } else {
      return "Unknown error occurred";
    }
  }
}

extension FutureExt<T> on Future<T> {
  Future<T> summarizeError() {
    return onError((error, stackTrace) async {
      log('$error $stackTrace');
      throw ErrorHandler.getDioException(error);
    });
  }

  Future<T> handler(Function onError) async {
    return summarizeError().catchError(onError);
  }
}
