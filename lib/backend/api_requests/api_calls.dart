import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start GETDATA Group Code

class GetdataGroup {
  static String baseUrl =
      'http://185.244.51.75:8282/api/v1/db/data/v1/ppfu5zo0yfxm67c/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
    'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
  };
  static DatalistCall datalistCall = DatalistCall();
  static DataviewCall dataviewCall = DataviewCall();
  static DataitemCall dataitemCall = DataitemCall();
}

class DatalistCall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    String? fields = '',
    String? field1 = '',
    String? field2 = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DATALIST',
      apiUrl:
          '${GetdataGroup.baseUrl}${contentType}?fields=${fields}&where=%28${field1}%2Ceq%2C${field2}%29&limit=25&shuffle=0&offset=0&nested%5BOrganizatorOfTournamentsID%5D%5Boffset%5D=0&nested%5BOrganizatorOfTournamentsID%5D%5Blimit%5D=300',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
      },
      params: {
        'ContentType': contentType,
        'Fields': fields,
        'Field1': field1,
        'Field2': field2,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DataviewCall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    String? fields = '',
    String? field1 = '',
    String? field2 = '',
    String? viewName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DATAVIEW',
      apiUrl:
          '${GetdataGroup.baseUrl}${contentType}/Views/${viewName}?fields=${fields}&where=%28${field1}%2Ceq%2C${field2}%29&limit=25&shuffle=0&offset=0&nested%5BOrganizatorOfTournamentsID%5D%5Boffset%5D=0&nested%5BOrganizatorOfTournamentsID%5D%5Blimit%5D=300',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
      },
      params: {
        'ContentType': contentType,
        'Fields': fields,
        'Field1': field1,
        'Field2': field2,
        'ViewName': viewName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DataitemCall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    int? contentId,
    String? fields = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DATAITEM',
      apiUrl:
          '${GetdataGroup.baseUrl}${contentType}/${contentId}?fields=${fields}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
      },
      params: {
        'ContentType': contentType,
        'ContentId': contentId,
        'Fields': fields,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End GETDATA Group Code

/// Start CREATDATA Group Code

class CreatdataGroup {
  static String baseUrl =
      'http://185.244.51.75:8282/api/v1/db/data/v1/ppfu5zo0yfxm67c/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
    'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
    'Content-Type': 'application/json',
  };
  static UserCall userCall = UserCall();
}

class UserCall {
  Future<ApiCallResponse> call({
    String? nickname = '',
    String? createdAt = '',
    String? updatedAt = '',
    String? fBUserId = '',
    String? tag = '',
    String? country = '',
    String? flag = '',
    String? avatar = '',
  }) {
    final ffApiRequestBody = '''
{
  "Nickname": "${nickname}",
  "CreatedAt": "${createdAt}",
  "UpdatedAt": "${updatedAt}",
  "FBUserId": "${fBUserId}",
  "Country": "${country}",
  "Flag": "${flag}",
  "Avatar": "${avatar}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'USER',
      apiUrl: '${CreatdataGroup.baseUrl}User',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End CREATDATA Group Code

/// Start UPDATEDATA Group Code

class UpdatedataGroup {
  static String baseUrl =
      'http://185.244.51.75:8282/api/v1/db/data/v1/ppfu5zo0yfxm67c/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
    'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
    'Content-Type': 'application/json',
  };
  static NicknameCall nicknameCall = NicknameCall();
  static TeamCall teamCall = TeamCall();
}

class NicknameCall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    String? nickname = '',
    String? updatedAt = '',
    int? contentId,
  }) {
    final ffApiRequestBody = '''
{
  "Nickname": "${nickname}",
  "UpdatedAt": "${updatedAt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NICKNAME',
      apiUrl: '${UpdatedataGroup.baseUrl}${contentType}/${contentId}',
      callType: ApiCallType.PATCH,
      headers: {
        'accept': 'application/json',
        'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TeamCall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    String? name = '',
    String? updatedAt = '',
    int? contentId,
    String? tag = '',
    String? country = '',
    String? flag = '',
    String? logo = '',
  }) {
    final ffApiRequestBody = '''
{
  "Name": "${name}",
  "UpdatedAt": "${updatedAt}",
  "Tag": "${tag}",
  "Country": "${country}",
  "Flag": "${flag}",
  "Logo": "${logo}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TEAM',
      apiUrl: '${UpdatedataGroup.baseUrl}${contentType}/${contentId}',
      callType: ApiCallType.PATCH,
      headers: {
        'accept': 'application/json',
        'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End UPDATEDATA Group Code

/// Start RELATION Group Code

class RelationGroup {
  static String baseUrl =
      'http://185.244.51.75:8282/api/v1/db/data/v1/ppfu5zo0yfxm67c/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
    'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
  };
  static LetationslistCall letationslistCall = LetationslistCall();
  static AddCall addCall = AddCall();
  static RemoveCall removeCall = RemoveCall();
}

class LetationslistCall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    int? contentId,
    String? relationField = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'LETATIONSLIST',
      apiUrl:
          '${RelationGroup.baseUrl}${contentType}/${contentId}/mm/${relationField}?limit=25&offset=0',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
      },
      params: {
        'ContentType': contentType,
        'ContentId': contentId,
        'RelationField': relationField,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AddCall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    int? contentId,
    String? retionField = '',
    int? relationId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'ADD',
      apiUrl:
          '${RelationGroup.baseUrl}/${contentType}/${contentId}/mm/${retionField}/${relationId}?limit=25&shuffle=0&offset=0',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RemoveCall {
  Future<ApiCallResponse> call({
    String? contentType = '',
    int? contentId,
    String? retionField = '',
    int? relationId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'REMOVE',
      apiUrl:
          '${RelationGroup.baseUrl}/${contentType}/${contentId}/mm/${retionField}/${relationId}?limit=25&shuffle=0&offset=0',
      callType: ApiCallType.DELETE,
      headers: {
        'accept': 'application/json',
        'xc-auth': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
        'xc-token': 'NTiqwUKR7XoOQhjVo38-3USDmbJpyUleOujj21Ip',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End RELATION Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
