// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    String? email,
    String? nickname,
    String? fbUserRef,
    String? avatar,
    String? countryName,
    String? flag,
    int? id,
    int? memberOfTeam,
    String? tag,
    String? teamRole,
    String? lineUp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _nickname = nickname,
        _fbUserRef = fbUserRef,
        _avatar = avatar,
        _countryName = countryName,
        _flag = flag,
        _id = id,
        _memberOfTeam = memberOfTeam,
        _tag = tag,
        _teamRole = teamRole,
        _lineUp = lineUp,
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

  // "MemberOfTeam" field.
  int? _memberOfTeam;
  int get memberOfTeam => _memberOfTeam ?? 0;
  set memberOfTeam(int? val) => _memberOfTeam = val;
  void incrementMemberOfTeam(int amount) =>
      _memberOfTeam = memberOfTeam + amount;
  bool hasMemberOfTeam() => _memberOfTeam != null;

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

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        email: data['Email'] as String?,
        nickname: data['Nickname'] as String?,
        fbUserRef: data['FbUserRef'] as String?,
        avatar: data['Avatar'] as String?,
        countryName: data['CountryName'] as String?,
        flag: data['Flag'] as String?,
        id: castToType<int>(data['Id']),
        memberOfTeam: castToType<int>(data['MemberOfTeam']),
        tag: data['Tag'] as String?,
        teamRole: data['TeamRole'] as String?,
        lineUp: data['LineUp'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Email': _email,
        'Nickname': _nickname,
        'FbUserRef': _fbUserRef,
        'Avatar': _avatar,
        'CountryName': _countryName,
        'Flag': _flag,
        'Id': _id,
        'MemberOfTeam': _memberOfTeam,
        'Tag': _tag,
        'TeamRole': _teamRole,
        'LineUp': _lineUp,
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
        'MemberOfTeam': serializeParam(
          _memberOfTeam,
          ParamType.int,
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
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
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
        memberOfTeam: deserializeParam(
          data['MemberOfTeam'],
          ParamType.int,
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
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        email == other.email &&
        nickname == other.nickname &&
        fbUserRef == other.fbUserRef &&
        avatar == other.avatar &&
        countryName == other.countryName &&
        flag == other.flag &&
        id == other.id &&
        memberOfTeam == other.memberOfTeam &&
        tag == other.tag &&
        teamRole == other.teamRole &&
        lineUp == other.lineUp;
  }

  @override
  int get hashCode => const ListEquality().hash([
        email,
        nickname,
        fbUserRef,
        avatar,
        countryName,
        flag,
        id,
        memberOfTeam,
        tag,
        teamRole,
        lineUp
      ]);
}

UserStruct createUserStruct({
  String? email,
  String? nickname,
  String? fbUserRef,
  String? avatar,
  String? countryName,
  String? flag,
  int? id,
  int? memberOfTeam,
  String? tag,
  String? teamRole,
  String? lineUp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      email: email,
      nickname: nickname,
      fbUserRef: fbUserRef,
      avatar: avatar,
      countryName: countryName,
      flag: flag,
      id: id,
      memberOfTeam: memberOfTeam,
      tag: tag,
      teamRole: teamRole,
      lineUp: lineUp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
