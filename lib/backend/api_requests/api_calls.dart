import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start GETDATA Group Code

class GetdataGroup {
  static String baseUrl =
      'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
    'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
  };
  static GetdataCall getdataCall = GetdataCall();
  static GetdatawhereCall getdatawhereCall = GetdatawhereCall();
  static GetdatafieldsCall getdatafieldsCall = GetdatafieldsCall();
}

class GetdataCall {
  Future<ApiCallResponse> call({
    String? datatype = '',
    int? dataid,
    String? relationtype = '',
    String? relationfieldname = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GETDATA',
      apiUrl:
          '${GetdataGroup.baseUrl}/${datatype}/${dataid}/${relationtype}/${relationfieldname}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
      },
      params: {
        'DATATYPE': datatype,
        'DATAID': dataid,
        'RELATIONTYPE': relationtype,
        'RELATIONFIELDNAME': relationfieldname,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic list(dynamic response) => getJsonField(
        response,
        r'''$.list''',
        true,
      );
  dynamic listId(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Id''',
        true,
      );
  dynamic listname(dynamic response) => getJsonField(
        response,
        r'''$.list[:].name''',
        true,
      );
  dynamic listCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CreatedAt''',
        true,
      );
  dynamic listUpdatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].UpdatedAt''',
        true,
      );
  dynamic listtag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].tag''',
        true,
      );
  dynamic listowner(dynamic response) => getJsonField(
        response,
        r'''$.list[:].owner''',
        true,
      );
  dynamic listmembers(dynamic response) => getJsonField(
        response,
        r'''$.list[:].members''',
        true,
      );
  dynamic listlogo(dynamic response) => getJsonField(
        response,
        r'''$.list[:].logo''',
        true,
      );
  dynamic listcountry(dynamic response) => getJsonField(
        response,
        r'''$.list[:].country''',
        true,
      );
  dynamic listflag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].flag''',
        true,
      );
  dynamic listmembersRefs(dynamic response) => getJsonField(
        response,
        r'''$.list[:].membersRefs''',
        true,
      );
  dynamic listmembersRefstable2id(dynamic response) => getJsonField(
        response,
        r'''$.list[:].membersRefs[:].table2_id''',
        true,
      );
  dynamic listmembersRefstable1id(dynamic response) => getJsonField(
        response,
        r'''$.list[:].membersRefs[:].table1_id''',
        true,
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Id''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  dynamic tag(dynamic response) => getJsonField(
        response,
        r'''$.tag''',
      );
  dynamic owner(dynamic response) => getJsonField(
        response,
        r'''$.owner''',
      );
  dynamic members(dynamic response) => getJsonField(
        response,
        r'''$.members''',
      );
  dynamic logo(dynamic response) => getJsonField(
        response,
        r'''$.logo''',
      );
  dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.country''',
      );
  dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.flag''',
      );
  dynamic listEmail(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Email''',
        true,
      );
  dynamic listNickname(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Nickname''',
        true,
      );
  dynamic listFbUserRef(dynamic response) => getJsonField(
        response,
        r'''$.list[:].FbUserRef''',
        true,
      );
  dynamic listAvatar(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Avatar''',
        true,
      );
  dynamic listCountryName(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CountryName''',
        true,
      );
  dynamic listFlag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Flag''',
        true,
      );
  dynamic listTag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Tag''',
        true,
      );
  dynamic listTeamRole(dynamic response) => getJsonField(
        response,
        r'''$.list[:].TeamRole''',
        true,
      );
  dynamic listLineUp(dynamic response) => getJsonField(
        response,
        r'''$.list[:].LineUp''',
        true,
      );
}

class GetdatawhereCall {
  Future<ApiCallResponse> call({
    String? datatype = '',
    int? dataid,
    String? value1 = '',
    String? operator = '',
    String? value2 = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GETDATAWHERE',
      apiUrl:
          '${GetdataGroup.baseUrl}/${datatype}?where=%28${value1}%2C${operator}%2C${value2}%29',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
      },
      params: {
        'DATATYPE': datatype,
        'DATAID': dataid,
        'VALUE1': value1,
        'OPERATOR': operator,
        'VALUE2': value2,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetdatafieldsCall {
  Future<ApiCallResponse> call({
    String? datatype = '',
    int? dataid,
    String? fields = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GETDATAFIELDS',
      apiUrl: '${GetdataGroup.baseUrl}/${datatype}/${dataid}?fields=${fields}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
      },
      params: {
        'DATATYPE': datatype,
        'DATAID': dataid,
        'FIELDS': fields,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End GETDATA Group Code

/// Start UPDATEDATA Group Code

class UpdatedataGroup {
  static String baseUrl =
      'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
    'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
  };
  static UpdatedataCall updatedataCall = UpdatedataCall();
}

class UpdatedataCall {
  Future<ApiCallResponse> call({
    String? datatype = '',
    int? dataid,
    dynamic? jsonJson,
  }) {
    final json = _serializeJson(jsonJson);
    final ffApiRequestBody = '''
${json}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UPDATEDATA',
      apiUrl: '${UpdatedataGroup.baseUrl}/${datatype}/${dataid}',
      callType: ApiCallType.PATCH,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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

  dynamic list(dynamic response) => getJsonField(
        response,
        r'''$.list''',
        true,
      );
  dynamic listId(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Id''',
        true,
      );
  dynamic listname(dynamic response) => getJsonField(
        response,
        r'''$.list[:].name''',
        true,
      );
  dynamic listCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CreatedAt''',
        true,
      );
  dynamic listUpdatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].UpdatedAt''',
        true,
      );
  dynamic listtag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].tag''',
        true,
      );
  dynamic listowner(dynamic response) => getJsonField(
        response,
        r'''$.list[:].owner''',
        true,
      );
  dynamic listmembers(dynamic response) => getJsonField(
        response,
        r'''$.list[:].members''',
        true,
      );
  dynamic listlogo(dynamic response) => getJsonField(
        response,
        r'''$.list[:].logo''',
        true,
      );
  dynamic listcountry(dynamic response) => getJsonField(
        response,
        r'''$.list[:].country''',
        true,
      );
  dynamic listflag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].flag''',
        true,
      );
  dynamic listmembersRefs(dynamic response) => getJsonField(
        response,
        r'''$.list[:].membersRefs''',
        true,
      );
  dynamic listmembersRefstable2id(dynamic response) => getJsonField(
        response,
        r'''$.list[:].membersRefs[:].table2_id''',
        true,
      );
  dynamic listmembersRefstable1id(dynamic response) => getJsonField(
        response,
        r'''$.list[:].membersRefs[:].table1_id''',
        true,
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Id''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  dynamic tag(dynamic response) => getJsonField(
        response,
        r'''$.tag''',
      );
  dynamic owner(dynamic response) => getJsonField(
        response,
        r'''$.owner''',
      );
  dynamic members(dynamic response) => getJsonField(
        response,
        r'''$.members''',
      );
  dynamic logo(dynamic response) => getJsonField(
        response,
        r'''$.logo''',
      );
  dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.country''',
      );
  dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.flag''',
      );
  dynamic listEmail(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Email''',
        true,
      );
  dynamic listNickname(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Nickname''',
        true,
      );
  dynamic listFbUserRef(dynamic response) => getJsonField(
        response,
        r'''$.list[:].FbUserRef''',
        true,
      );
  dynamic listAvatar(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Avatar''',
        true,
      );
  dynamic listCountryName(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CountryName''',
        true,
      );
  dynamic listFlag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Flag''',
        true,
      );
  dynamic listTag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Tag''',
        true,
      );
  dynamic listTeamRole(dynamic response) => getJsonField(
        response,
        r'''$.list[:].TeamRole''',
        true,
      );
  dynamic listLineUp(dynamic response) => getJsonField(
        response,
        r'''$.list[:].LineUp''',
        true,
      );
}

/// End UPDATEDATA Group Code

class GetTeamsCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getTeams',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Team?fields=Id%2Cname%2Ctag%2Cowner%2Clogo%2Ccountry%2Cflag&limit=25&shuffle=0&offset=0&nested%5BmembersRefs%5D%5Boffset%5D=0&nested%5BmembersRefs%5D%5Blimit%5D=25',
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
        true,
      );
  static dynamic listname(dynamic response) => getJsonField(
        response,
        r'''$.list[:].name''',
        true,
      );
  static dynamic listtag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].tag''',
        true,
      );
}

class GetUserByFbUserRefCall {
  static Future<ApiCallResponse> call({
    String? fbUserRef = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserByFbUserRef',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/user?where=%28FbUserRef%2Ceq%2C${fbUserRef}%29&limit=25&shuffle=0&offset=0&nested%5Bnc_c5h0___nc_m2m_mg5tfnzlzzs%5D%5Boffset%5D=0&nested%5Bnc_c5h0___nc_m2m_mg5tfnzlzzs%5D%5Blimit%5D=25',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
      },
      params: {
        'FbUserRef': fbUserRef,
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
  static dynamic listEmail(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Email''',
      );
  static dynamic listNickname(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Nickname''',
      );
  static dynamic listFbUserRef(dynamic response) => getJsonField(
        response,
        r'''$.list[:].FbUserRef''',
      );
  static dynamic listAvatar(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Avatar''',
      );
  static dynamic listCountryName(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CountryName''',
      );
  static dynamic listFlag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Flag''',
      );
  static dynamic listId(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Id''',
      );
  static dynamic listCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CreatedAt''',
      );
  static dynamic listUpdatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].UpdatedAt''',
      );
  static dynamic listMemberOfTeam(dynamic response) => getJsonField(
        response,
        r'''$.list[:].MemberOfTeam''',
      );
}

class GetTeamCall {
  static Future<ApiCallResponse> call({
    int? id = 8,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getTeam',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Team/${id}?fields=Id%2Cname%2CCreatedAt%2CUpdatedAt%2Ctag%2Cowner%2Cmembers%2Clogo%2Ccountry%2Cflag',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.Id''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$.CreatedAt''',
      );
  static dynamic tag(dynamic response) => getJsonField(
        response,
        r'''$.tag''',
      );
  static dynamic owner(dynamic response) => getJsonField(
        response,
        r'''$.owner''',
      );
  static dynamic members(dynamic response) => getJsonField(
        response,
        r'''$.members''',
      );
  static dynamic logo(dynamic response) => getJsonField(
        response,
        r'''$.logo''',
      );
  static dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.country''',
      );
  static dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.flag''',
      );
}

class GetTeamByFbUserRefCall {
  static Future<ApiCallResponse> call({
    String? fbUserRef = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getTeamByFbUserRef',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Team?where=%28owner%2Ceq%2C${fbUserRef}%29&limit=25&shuffle=0&offset=0&nested%5BmembersRefs%5D%5Boffset%5D=0&nested%5BmembersRefs%5D%5Blimit%5D=25',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
      },
      params: {
        'FbUserRef': fbUserRef,
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
  static dynamic listCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CreatedAt''',
      );
  static dynamic listUpdatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].UpdatedAt''',
      );
  static dynamic listtag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].tag''',
      );
  static dynamic listowner(dynamic response) => getJsonField(
        response,
        r'''$.list[:].owner''',
      );
  static dynamic listmembers(dynamic response) => getJsonField(
        response,
        r'''$.list[:].members''',
      );
  static dynamic listlogo(dynamic response) => getJsonField(
        response,
        r'''$.list[:].logo''',
      );
  static dynamic listcountry(dynamic response) => getJsonField(
        response,
        r'''$.list[:].country''',
      );
  static dynamic listflag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].flag''',
      );
}

class DeliteRequestCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'deliteRequest',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Request/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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
}

class AddTeamCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? createdAt = '',
    String? updatedAt = '',
    String? tag = '',
    String? logo = '',
    String? owner = '',
    String? country = '',
    String? flag = '',
  }) {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "CreatedAt": "${createdAt}",
  "UpdatedAt": "${updatedAt}",
  "tag": "${tag}",
  "owner": "${owner}",
  "logo": "${logo}",
  "country": "${country}",
  "flag": "${flag}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTeam',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Team/views/Team',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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

class UpdateUserCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? email = '',
    String? nickname = '',
    String? fbUserRef = '',
    String? avatar = '',
    String? countryName = '',
    String? createdAt = '',
    String? updatedAt = '',
    String? tag = '',
    String? teamRole = '',
    String? flag = '',
    String? lineUp = '',
  }) {
    final ffApiRequestBody = '''
{
  "Email": "${email}",
  "Nickname": "${nickname}",
  "FbUserRef": "${fbUserRef}",
  "Avatar": "${avatar}",
  "CountryName": "${countryName}",
  "Flag": "${flag}",
  "CreatedAt": "${createdAt}",
  "UpdatedAt": "${updatedAt}",
  "Tag": "${tag}",
  "TeamRole": "${lineUp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUser',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/user/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'accept': 'application/json',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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

class UpdateUserTagAndRoleCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? updatedAt = '',
    String? tag = '',
    String? teamRole = '',
  }) {
    final ffApiRequestBody = '''
{
  "UpdatedAt": "${updatedAt}",
  "Tag": "${tag}",
  "TeamRole": "${teamRole}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUserTagAndRole',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/user/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'accept': 'application/json',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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

class UpdateUserRoleAndLineUpCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? updatedAt = '',
    String? teamRole = '',
    String? lineUp = '',
  }) {
    final ffApiRequestBody = '''
{
  "UpdatedAt": "${updatedAt}",
  "TeamRole": "${teamRole}",
  "Tag": "${lineUp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUserRoleAndLineUp',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/user/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'accept': 'application/json',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Team/${teamID}/mm/members/',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'Content-Type': 'application/json',
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
  static dynamic listTeams(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Teams''',
        true,
      );
  static dynamic listEmail(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Email''',
        true,
      );
  static dynamic listNickname(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Nickname''',
        true,
      );
  static dynamic listFbUserRef(dynamic response) => getJsonField(
        response,
        r'''$.list[:].FbUserRef''',
        true,
      );
  static dynamic listAvatar(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Avatar''',
        true,
      );
  static dynamic listCountryName(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CountryName''',
        true,
      );
  static dynamic listFlag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Flag''',
        true,
      );
  static dynamic listId(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Id''',
        true,
      );
  static dynamic listCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CreatedAt''',
        true,
      );
  static dynamic listUpdatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].UpdatedAt''',
        true,
      );
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
    int? iD,
    String? name = '',
    String? tag = '',
    String? logo = '',
    String? country = '',
    String? flag = '',
    String? updated = '',
  }) {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "UpdatedAt": "${updated}",
  "tag": "${tag}",
  "logo": "${logo}",
  "country": "${country}",
  "flag": "${flag}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateTeam',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Team/${iD}',
      callType: ApiCallType.PATCH,
      headers: {
        'accept': 'application/json',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/user',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Countries?fields=RuName%2CFlagLinkH24&limit=300&shuffle=0&offset=0',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJbOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserByEmail',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/user?fields=Email%2CNickname%2CFbUserRef%2CAvatar%2CCountryName%2CFlag%2CId&where=%28Id%2Ceq%2C${id}%29&limit=25&shuffle=0&offset=0&nested%5Bnc_c5h0___nc_m2m_mg5tfnzlzzs%5D%5Boffset%5D=0&nested%5Bnc_c5h0___nc_m2m_mg5tfnzlzzs%5D%5Blimit%5D=25',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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

  static dynamic list(dynamic response) => getJsonField(
        response,
        r'''$.list''',
        true,
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Email''',
      );
  static dynamic nickname(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Nickname''',
      );
  static dynamic fbUserRef(dynamic response) => getJsonField(
        response,
        r'''$.list[:].FbUserRef''',
      );
  static dynamic avatar(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Avatar''',
      );
  static dynamic countryName(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CountryName''',
      );
  static dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Flag''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Id''',
      );
}

class AddRequestCall {
  static Future<ApiCallResponse> call({
    String? type = '',
    String? createdAt = '',
    String? updatedAt = '',
    String? fromTeam = '',
    String? toUser = '',
  }) {
    final ffApiRequestBody = '''
{
  "Type": "${type}",
  "CreatedAt": "${createdAt}",
  "UpdatedAt": "${updatedAt}",
  "fromTeam": "${fromTeam}",
  "toUser": "${toUser}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addRequest',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Request',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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

class AddRelationsCall {
  static Future<ApiCallResponse> call({
    String? dataTypeForUpdate = '',
    int? idOfDataForUpdate,
    String? fildName = '',
    int? fieldId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'addRelations',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/${dataTypeForUpdate}/${idOfDataForUpdate}/mm/${fildName}/${fieldId}?limit=25&shuffle=0&offset=0',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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

class DeliteRelationsCall {
  static Future<ApiCallResponse> call({
    String? dataTypeForUpdate = '',
    int? idOfDataForUpdate,
    String? fildName = '',
    int? fieldId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'deliteRelations',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/${dataTypeForUpdate}/${idOfDataForUpdate}/mm/${fildName}/${fieldId}?limit=25&shuffle=0&offset=0',
      callType: ApiCallType.DELETE,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCreatedRequesIdCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? fromTeamName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getCreatedRequesId',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Request?fields=Id&where=%28from%2Ceq%2C${userId}%29~and%28fromTeamName%2Ceq%2C${fromTeamName}%29&limit=25&shuffle=0&offset=0&nested%5BFromTeamRef%5D%5Boffset%5D=0&nested%5BFromTeamRef%5D%5Blimit%5D=25&nested%5BToUserRef%5D%5Boffset%5D=0&nested%5BToUserRef%5D%5Blimit%5D=25',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetRequestsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getRequests',
      apiUrl:
          'http://185.244.51.75:8181/api/v1/db/data/v1/phxxjzt5scpki29/Request?limit=25&shuffle=0&offset=0',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'xc-auth': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
        'xc-token': '0VJre1jJOTSXCI2tfKfR8JCvq9Pv7JuWyvCn8G-b',
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
  static dynamic listId(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Id''',
        true,
      );
  static dynamic listType(dynamic response) => getJsonField(
        response,
        r'''$.list[:].Type''',
        true,
      );
  static dynamic listCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].CreatedAt''',
        true,
      );
  static dynamic listUpdatedAt(dynamic response) => getJsonField(
        response,
        r'''$.list[:].UpdatedAt''',
        true,
      );
  static dynamic listfromTeam(dynamic response) => getJsonField(
        response,
        r'''$.list[:].fromTeam''',
        true,
      );
  static dynamic listtoUser(dynamic response) => getJsonField(
        response,
        r'''$.list[:].toUser''',
        true,
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
