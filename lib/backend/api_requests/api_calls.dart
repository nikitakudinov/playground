import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetTeamsCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getTeams',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Team?fields=Id%2Cname%2Ctag%2Cowner%2Clogo&limit=25&shuffle=0&offset=0&nested%5BmembersRefs%5D%5Boffset%5D=0&nested%5BmembersRefs%5D%5Blimit%5D=25',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
      },
      params: {
        'ID': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic list(dynamic response) => getJsonField(
        response,
        r'''$.list''',
        true,
      );
  static dynamic listId(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Id''',
      );
  static dynamic listname(dynamic response) => getJsonField(
        response,
        r'''$.list[:].name''',
      );
  static dynamic listtag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].tag''',
      );
}

class GetTeamCall {
  static Future<ApiCallResponse> call({
    int? id = 8,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getTeam',
      apiUrl:
          'http://37.139.36.167/api/v1/db/data/v1/database/Team/views/Team/${id}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-token': 'vdgJ3Duiy5c4nCQ2uvxqmffYmHK4GNAMr5RXdAmK',
      },
      params: {
        'ID': "5",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userNickname(dynamic response) => getJsonField(
        response,
        r'''$.userNickname''',
        true,
      );
  static dynamic userCountry(dynamic response) => getJsonField(
        response,
        r'''$.userCountry''',
        true,
      );
  static dynamic userCountryFlag(dynamic response) => getJsonField(
        response,
        r'''$.userCountryFlag''',
        true,
      );
}

class GetTeamMembersIDsCall {
  static Future<ApiCallResponse> call({
    int? id = 8,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getTeamMembersIDs',
      apiUrl:
          'http://37.139.36.167/api/v1/db/data/v1/database/Team/views/Team?fields=nc_5zcs___nc_m2m_2dsukws9lvs&nested%5Bnc_5zcs___nc_m2m_zslrtav602s%5D%5Boffset%5D=0&nested%5Bnc_5zcs___nc_m2m_zslrtav602s%5D%5Blimit%5D=25&nested%5Bnc_5zcs___nc_m2m_2dsukws9lvs%5D%5Boffset%5D=0&nested%5Bnc_5zcs___nc_m2m_2dsukws9lvs%5D%5Blimit%5D=25',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-token': 'vdgJ3Duiy5c4nCQ2uvxqmffYmHK4GNAMr5RXdAmK',
      },
      params: {
        'ID': "5",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic list(dynamic response) => getJsonField(
        response,
        r'''$.list''',
        true,
      );
}

class AddTeamCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? createdAt = '',
    String? updatedAt = '',
    String? tag = '',
    String? logo = '',
    String? countryName = '',
    String? flag = '',
    String? owner = '',
  }) {
    final ffApiRequestBody = '''
{
  "Name": "${name}",
  "CreatedAt": "${createdAt}",
  "UpdatedAt": "${updatedAt}",
  "Tag": "${tag}",
  "Logo": "${logo}",
  "countryName": "${countryName}",
  "flag": "${flag}",
  "owner": "${owner}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTeam',
      apiUrl: 'http://37.139.36.167/api/v1/db/data/v1/database/Team/views/Team',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'xc-token': 'vdgJ3Duiy5c4nCQ2uvxqmffYmHK4GNAMr5RXdAmK',
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

class AddTeamMemberCall {
  static Future<ApiCallResponse> call({
    int? teamID,
    int? userID,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'addTeamMember',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Team/${teamID}/mm/members/${userID}',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'Content-Type': 'application/json',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetTeamMembersListCall {
  static Future<ApiCallResponse> call({
    int? teamID,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getTeamMembersList',
      apiUrl:
          'http://37.139.36.167/api/v1/db/data/v1/database/Team/${teamID}/mm/members/',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-token': 'vdgJ3Duiy5c4nCQ2uvxqmffYmHK4GNAMr5RXdAmK',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetTournamentsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getTournaments',
      apiUrl:
          'http://37.139.36.167/api/v1/db/data/v1/database/Tournament/views/Tournament?nested%5Bnc_5zcs___nc_m2m_zslrtav602s%5D%5Boffset%5D=0&nested%5Bnc_5zcs___nc_m2m_zslrtav602s%5D%5Blimit%5D=25',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-token': 'vdgJ3Duiy5c4nCQ2uvxqmffYmHK4GNAMr5RXdAmK',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic list(dynamic response) => getJsonField(
        response,
        r'''$.list''',
        true,
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Id''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Name''',
        true,
      );
  static dynamic teams(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Teams''',
        true,
      );
  static dynamic teamsName(dynamic response) => getJsonField(
        response,
        r'''$.list[:].TeamsName''',
        true,
      );
  static dynamic teamsTag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].TeamsTag''',
        true,
      );
}

class UpdateTeamCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? name = '',
    String? tag = '',
    int? memberOfTournament,
    String? logo = '',
    String? countryName = '',
    String? flag = '',
    String? owner = '',
    List<String>? tournamentNameList,
  }) {
    final tournamentName = _serializeList(tournamentNameList);

    final ffApiRequestBody = '''
{
  "Name": "${name}",
  "Tag": "${tag}",
  "MemberOfTournament": ${memberOfTournament},
  "Logo": "${logo}",
  "countryName": "${countryName}",
  "flag": "${flag}",
  "owner": "${owner}",
  "TournamentName": [
    ${tournamentName}
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateTeam',
      apiUrl:
          'http://37.139.36.167/api/v1/db/data/v1/database/Team/views/Team/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'accept': 'application/json',
        'xc-token': 'vdgJ3Duiy5c4nCQ2uvxqmffYmHK4GNAMr5RXdAmK',
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

class CreatUserCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? createdAt = '',
    String? updatedAt = '',
    String? nickname = '',
    String? fbUserRef = '',
    String? avatar = '',
    String? countryName = '',
    String? flag = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "CreatedAt": "${createdAt}",
  "UpdatedAt": "${updatedAt}",
  "nickname": "${nickname}",
  "fbUserRef": "${fbUserRef}",
  "avatar": "${avatar}",
  "countryName": "${countryName}",
  "flag": "${flag}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creatUser',
      apiUrl: 'http://37.139.36.167/api/v1/db/data/v1/database/user/views/user',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'xc-token': 'vdgJ3Duiy5c4nCQ2uvxqmffYmHK4GNAMr5RXdAmK',
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

class GetCountriesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getCountries',
      apiUrl:
          'http://37.139.36.167/api/v1/db/data/v1/database/Countries?fields=RuName%2CFlagLink48x36&limit=300&shuffle=0&offset=0',
      callType: ApiCallType.GET,
      headers: {
        'xc-token': 'vdgJ3Duiy5c4nCQ2uvxqmffYmHK4GNAMr5RXdAmK',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetUserCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUser',
      apiUrl:
          'http://37.139.36.167/api/v1/db/data/v1/database/user/views/user/${id}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJsaW5uYWZlZ0BnbWFpbC5jb20iLCJpZCI6InVzOTRidGJra21lZ29yajEiLCJyb2xlcyI6Im9yZy1sZXZlbC1jcmVhdG9yLHN1cGVyIiwidG9rZW5fdmVyc2lvbiI6IjJjYzc4ODg3ZmU4ZjkzYTI4ZTQ4ZDE0MzQ1NWQ5YjAwNjZhOTk3ZTFjNzNjODI1NDIxOWFlNmM3MjkzYjVkZTk3Mjg2ZjJkNjZhZDc4MDRjIiwiaWF0IjoxNjk2MjI2NjM5LCJleHAiOjE2OTYyNjI2Mzl9.I2-aAUpRQgTo0aWV97e4cuVQxI0-WfO9Kvjt7my6LiU',
        'xc-token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJsaW5uYWZlZ0BnbWFpbC5jb20iLCJpZCI6InVzOTRidGJra21lZ29yajEiLCJyb2xlcyI6Im9yZy1sZXZlbC1jcmVhdG9yLHN1cGVyIiwidG9rZW5fdmVyc2lvbiI6IjJjYzc4ODg3ZmU4ZjkzYTI4ZTQ4ZDE0MzQ1NWQ5YjAwNjZhOTk3ZTFjNzNjODI1NDIxOWFlNmM3MjkzYjVkZTk3Mjg2ZjJkNjZhZDc4MDRjIiwiaWF0IjoxNjk2MjI2NjM5LCJleHAiOjE2OTYyNjI2Mzl9.I2-aAUpRQgTo0aWV97e4cuVQxI0-WfO9Kvjt7my6LiU',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetUserByEmailCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserByEmail',
      apiUrl:
          'http://37.139.36.167/api/v1/db/data/v1/database/user/find-one?where=%28email%2Ceq${email}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJsaW5uYWZlZ0BnbWFpbC5jb20iLCJpZCI6InVzOTRidGJra21lZ29yajEiLCJyb2xlcyI6Im9yZy1sZXZlbC1jcmVhdG9yLHN1cGVyIiwidG9rZW5fdmVyc2lvbiI6IjJjYzc4ODg3ZmU4ZjkzYTI4ZTQ4ZDE0MzQ1NWQ5YjAwNjZhOTk3ZTFjNzNjODI1NDIxOWFlNmM3MjkzYjVkZTk3Mjg2ZjJkNjZhZDc4MDRjIiwiaWF0IjoxNjk2MjI2NjM5LCJleHAiOjE2OTYyNjI2Mzl9.I2-aAUpRQgTo0aWV97e4cuVQxI0-WfO9Kvjt7my6LiU',
        'xc-token':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJsaW5uYWZlZ0BnbWFpbC5jb20iLCJpZCI6InVzOTRidGJra21lZ29yajEiLCJyb2xlcyI6Im9yZy1sZXZlbC1jcmVhdG9yLHN1cGVyIiwidG9rZW5fdmVyc2lvbiI6IjJjYzc4ODg3ZmU4ZjkzYTI4ZTQ4ZDE0MzQ1NWQ5YjAwNjZhOTk3ZTFjNzNjODI1NDIxOWFlNmM3MjkzYjVkZTk3Mjg2ZjJkNjZhZDc4MDRjIiwiaWF0IjoxNjk2MjI2NjM5LCJleHAiOjE2OTYyNjI2Mzl9.I2-aAUpRQgTo0aWV97e4cuVQxI0-WfO9Kvjt7my6LiU',
      },
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Id''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$.CreatedAt''',
      );
  static dynamic updatedAt(dynamic response) => getJsonField(
        response,
        r'''$.UpdatedAt''',
      );
  static dynamic nickname(dynamic response) => getJsonField(
        response,
        r'''$.nickname''',
      );
  static dynamic fbUserRef(dynamic response) => getJsonField(
        response,
        r'''$.fbUserRef''',
      );
  static dynamic avatar(dynamic response) => getJsonField(
        response,
        r'''$.avatar''',
      );
  static dynamic countryName(dynamic response) => getJsonField(
        response,
        r'''$.countryName''',
      );
  static dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.flag''',
      );
}

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
