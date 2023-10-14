// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthenticatedUserStruct extends FFFirebaseStruct {
  AuthenticatedUserStruct({
    int? id,
    String? nickname,
    String? fBUserId,
    String? tag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nickname = nickname,
        _fBUserId = fBUserId,
        _tag = tag,
        super(firestoreUtilData);

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "Nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  set nickname(String? val) => _nickname = val;
  bool hasNickname() => _nickname != null;

  // "FBUserId" field.
  String? _fBUserId;
  String get fBUserId => _fBUserId ?? '';
  set fBUserId(String? val) => _fBUserId = val;
  bool hasFBUserId() => _fBUserId != null;

  // "Tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  static AuthenticatedUserStruct fromMap(Map<String, dynamic> data) =>
      AuthenticatedUserStruct(
        id: castToType<int>(data['Id']),
        nickname: data['Nickname'] as String?,
        fBUserId: data['FBUserId'] as String?,
        tag: data['Tag'] as String?,
      );

  static AuthenticatedUserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? AuthenticatedUserStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Nickname': _nickname,
        'FBUserId': _fBUserId,
        'Tag': _tag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'Nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'FBUserId': serializeParam(
          _fBUserId,
          ParamType.String,
        ),
        'Tag': serializeParam(
          _tag,
          ParamType.String,
        ),
      }.withoutNulls;

  static AuthenticatedUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AuthenticatedUserStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        nickname: deserializeParam(
          data['Nickname'],
          ParamType.String,
          false,
        ),
        fBUserId: deserializeParam(
          data['FBUserId'],
          ParamType.String,
          false,
        ),
        tag: deserializeParam(
          data['Tag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AuthenticatedUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthenticatedUserStruct &&
        id == other.id &&
        nickname == other.nickname &&
        fBUserId == other.fBUserId &&
        tag == other.tag;
  }

  @override
  int get hashCode => const ListEquality().hash([id, nickname, fBUserId, tag]);
}

AuthenticatedUserStruct createAuthenticatedUserStruct({
  int? id,
  String? nickname,
  String? fBUserId,
  String? tag,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AuthenticatedUserStruct(
      id: id,
      nickname: nickname,
      fBUserId: fBUserId,
      tag: tag,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AuthenticatedUserStruct? updateAuthenticatedUserStruct(
  AuthenticatedUserStruct? authenticatedUser, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    authenticatedUser
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAuthenticatedUserStructData(
  Map<String, dynamic> firestoreData,
  AuthenticatedUserStruct? authenticatedUser,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (authenticatedUser == null) {
    return;
  }
  if (authenticatedUser.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && authenticatedUser.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final authenticatedUserData =
      getAuthenticatedUserFirestoreData(authenticatedUser, forFieldValue);
  final nestedData =
      authenticatedUserData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = authenticatedUser.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAuthenticatedUserFirestoreData(
  AuthenticatedUserStruct? authenticatedUser, [
  bool forFieldValue = false,
]) {
  if (authenticatedUser == null) {
    return {};
  }
  final firestoreData = mapToFirestore(authenticatedUser.toMap());

  // Add any Firestore field values
  authenticatedUser.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAuthenticatedUserListFirestoreData(
  List<AuthenticatedUserStruct>? authenticatedUsers,
) =>
    authenticatedUsers
        ?.map((e) => getAuthenticatedUserFirestoreData(e, true))
        .toList() ??
    [];
