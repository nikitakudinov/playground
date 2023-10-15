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
    String? teamRole,
    String? lineUp,
    String? avatar,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nickname = nickname,
        _fBUserId = fBUserId,
        _tag = tag,
        _teamRole = teamRole,
        _lineUp = lineUp,
        _avatar = avatar,
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

  // "TeamRole" field.
  String? _teamRole;
  String get teamRole => _teamRole ?? '';
  set teamRole(String? val) => _teamRole = val;
  bool hasTeamRole() => _teamRole != null;

  // "LineUp" field.
  String? _lineUp;
  String get lineUp => _lineUp ?? '';
  set lineUp(String? val) => _lineUp = val;
  bool hasLineUp() => _lineUp != null;

  // "Avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

  static AuthenticatedUserStruct fromMap(Map<String, dynamic> data) =>
      AuthenticatedUserStruct(
        id: castToType<int>(data['Id']),
        nickname: data['Nickname'] as String?,
        fBUserId: data['FBUserId'] as String?,
        tag: data['Tag'] as String?,
        teamRole: data['TeamRole'] as String?,
        lineUp: data['LineUp'] as String?,
        avatar: data['Avatar'] as String?,
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
        'TeamRole': _teamRole,
        'LineUp': _lineUp,
        'Avatar': _avatar,
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
        'TeamRole': serializeParam(
          _teamRole,
          ParamType.String,
        ),
        'LineUp': serializeParam(
          _lineUp,
          ParamType.String,
        ),
        'Avatar': serializeParam(
          _avatar,
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
        teamRole: deserializeParam(
          data['TeamRole'],
          ParamType.String,
          false,
        ),
        lineUp: deserializeParam(
          data['LineUp'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['Avatar'],
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
        tag == other.tag &&
        teamRole == other.teamRole &&
        lineUp == other.lineUp &&
        avatar == other.avatar;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, nickname, fBUserId, tag, teamRole, lineUp, avatar]);
}

AuthenticatedUserStruct createAuthenticatedUserStruct({
  int? id,
  String? nickname,
  String? fBUserId,
  String? tag,
  String? teamRole,
  String? lineUp,
  String? avatar,
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
      teamRole: teamRole,
      lineUp: lineUp,
      avatar: avatar,
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
