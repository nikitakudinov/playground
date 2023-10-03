// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchUserByEmailResultsStruct extends FFFirebaseStruct {
  SearchUserByEmailResultsStruct({
    String? email,
    String? nickname,
    String? fbUserRef,
    String? avatar,
    String? countryName,
    String? flag,
    int? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _nickname = nickname,
        _fbUserRef = fbUserRef,
        _avatar = avatar,
        _countryName = countryName,
        _flag = flag,
        _id = id,
        super(firestoreUtilData);

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "Nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  set nickname(String? val) => _nickname = val;
  bool hasNickname() => _nickname != null;

  // "FbUserRef" field.
  String? _fbUserRef;
  String get fbUserRef => _fbUserRef ?? '';
  set fbUserRef(String? val) => _fbUserRef = val;
  bool hasFbUserRef() => _fbUserRef != null;

  // "Avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

  // "CountryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  set countryName(String? val) => _countryName = val;
  bool hasCountryName() => _countryName != null;

  // "Flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  set flag(String? val) => _flag = val;
  bool hasFlag() => _flag != null;

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  static SearchUserByEmailResultsStruct fromMap(Map<String, dynamic> data) =>
      SearchUserByEmailResultsStruct(
        email: data['Email'] as String?,
        nickname: data['Nickname'] as String?,
        fbUserRef: data['FbUserRef'] as String?,
        avatar: data['Avatar'] as String?,
        countryName: data['CountryName'] as String?,
        flag: data['Flag'] as String?,
        id: castToType<int>(data['Id']),
      );

  static SearchUserByEmailResultsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? SearchUserByEmailResultsStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'Email': _email,
        'Nickname': _nickname,
        'FbUserRef': _fbUserRef,
        'Avatar': _avatar,
        'CountryName': _countryName,
        'Flag': _flag,
        'Id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Email': serializeParam(
          _email,
          ParamType.String,
        ),
        'Nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'FbUserRef': serializeParam(
          _fbUserRef,
          ParamType.String,
        ),
        'Avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'CountryName': serializeParam(
          _countryName,
          ParamType.String,
        ),
        'Flag': serializeParam(
          _flag,
          ParamType.String,
        ),
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static SearchUserByEmailResultsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SearchUserByEmailResultsStruct(
        email: deserializeParam(
          data['Email'],
          ParamType.String,
          false,
        ),
        nickname: deserializeParam(
          data['Nickname'],
          ParamType.String,
          false,
        ),
        fbUserRef: deserializeParam(
          data['FbUserRef'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['Avatar'],
          ParamType.String,
          false,
        ),
        countryName: deserializeParam(
          data['CountryName'],
          ParamType.String,
          false,
        ),
        flag: deserializeParam(
          data['Flag'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SearchUserByEmailResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchUserByEmailResultsStruct &&
        email == other.email &&
        nickname == other.nickname &&
        fbUserRef == other.fbUserRef &&
        avatar == other.avatar &&
        countryName == other.countryName &&
        flag == other.flag &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([email, nickname, fbUserRef, avatar, countryName, flag, id]);
}

SearchUserByEmailResultsStruct createSearchUserByEmailResultsStruct({
  String? email,
  String? nickname,
  String? fbUserRef,
  String? avatar,
  String? countryName,
  String? flag,
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchUserByEmailResultsStruct(
      email: email,
      nickname: nickname,
      fbUserRef: fbUserRef,
      avatar: avatar,
      countryName: countryName,
      flag: flag,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchUserByEmailResultsStruct? updateSearchUserByEmailResultsStruct(
  SearchUserByEmailResultsStruct? searchUserByEmailResults, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    searchUserByEmailResults
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchUserByEmailResultsStructData(
  Map<String, dynamic> firestoreData,
  SearchUserByEmailResultsStruct? searchUserByEmailResults,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (searchUserByEmailResults == null) {
    return;
  }
  if (searchUserByEmailResults.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      searchUserByEmailResults.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchUserByEmailResultsData = getSearchUserByEmailResultsFirestoreData(
      searchUserByEmailResults, forFieldValue);
  final nestedData =
      searchUserByEmailResultsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      searchUserByEmailResults.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchUserByEmailResultsFirestoreData(
  SearchUserByEmailResultsStruct? searchUserByEmailResults, [
  bool forFieldValue = false,
]) {
  if (searchUserByEmailResults == null) {
    return {};
  }
  final firestoreData = mapToFirestore(searchUserByEmailResults.toMap());

  // Add any Firestore field values
  searchUserByEmailResults.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchUserByEmailResultsListFirestoreData(
  List<SearchUserByEmailResultsStruct>? searchUserByEmailResultss,
) =>
    searchUserByEmailResultss
        ?.map((e) => getSearchUserByEmailResultsFirestoreData(e, true))
        .toList() ??
    [];
