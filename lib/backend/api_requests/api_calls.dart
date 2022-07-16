import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GeocodeCall {
  static Future<ApiCallResponse> call({
    String latlng = '',
    String key = 'AIzaSyBluutXtOZxp3XIlFjGI9hQmUqWSRfvAzc',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'geocode',
      apiUrl: 'https://maps.googleapis.com/maps/api/geocode/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'latlng': latlng,
        'key': key,
      },
      returnBody: true,
    );
  }
}
