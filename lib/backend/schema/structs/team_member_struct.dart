// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamMemberStruct extends FFFirebaseStruct {
  TeamMemberStruct({
    int? teams,
    String? email,
    String? nickname,
    String? fbUserRef,
    String? avatar,
    String? countryName,
    String? flag,
    int? id,
    String? createdAt,
    String? updatedAt,
    String? tag,
    String? teamRole,
    bool? lineUp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _teams = teams,
        _email = email,
        _nickname = nickname,
        _fbUserRef = fbUserRef,
        _avatar = avatar,
        _countryName = countryName,
        _flag = flag,
        _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _tag = tag,
        _teamRole = teamRole,
        _lineUp = lineUp,
        super(firestoreUtilData);

  // "Teams" field.
  int? _teams;
  int get teams => _teams ?? 0;
  set teams(int? val) => _teams = val;
  void incrementTeams(int amount) => _teams = teams + amount;
  bool hasTeams() => _teams != null;

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

  // "CreatedAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "UpdatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

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
  bool? _lineUp;
  bool get lineUp => _lineUp ?? false;
  set lineUp(bool? val) => _lineUp = val;
  bool hasLineUp() => _lineUp != null;

  static TeamMemberStruct fromMap(Map<String, dynamic> data) =>
      TeamMemberStruct(
        teams: castToType<int>(data['Teams']),
        email: data['Email'] as String?,
        nickname: data['Nickname'] as String?,
        fbUserRef: data['FbUserRef'] as String?,
        avatar: data['Avatar'] as String?,
        countryName: data['CountryName'] as String?,
        flag: data['Flag'] as String?,
        id: castToType<int>(data['Id']),
        createdAt: data['CreatedAt'] as String?,
        updatedAt: data['UpdatedAt'] as String?,
        tag: data['Tag'] as String?,
        teamRole: data['TeamRole'] as String?,
        lineUp: data['LineUp'] as bool?,
      );

  static TeamMemberStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TeamMemberStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Teams': _teams,
        'Email': _email,
        'Nickname': _nickname,
        'FbUserRef': _fbUserRef,
        'Avatar': _avatar,
        'CountryName': _countryName,
        'Flag': _flag,
        'Id': _id,
        'CreatedAt': _createdAt,
        'UpdatedAt': _updatedAt,
        'Tag': _tag,
        'TeamRole': _teamRole,
        'LineUp': _lineUp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Teams': serializeParam(
          _teams,
          ParamType.int,
        ),
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
        'CreatedAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'UpdatedAt': serializeParam(
          _updatedAt,
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
          ParamType.bool,
        ),
      }.withoutNulls;

  static TeamMemberStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamMemberStruct(
        teams: deserializeParam(
          data['Teams'],
          ParamType.int,
          false,
        ),
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
        createdAt: deserializeParam(
          data['CreatedAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['UpdatedAt'],
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
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TeamMemberStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamMemberStruct &&
        teams == other.teams &&
        email == other.email &&
        nickname == other.nickname &&
        fbUserRef == other.fbUserRef &&
        avatar == other.avatar &&
        countryName == other.countryName &&
        flag == other.flag &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        tag == other.tag &&
        teamRole == other.teamRole &&
        lineUp == other.lineUp;
  }

  @override
  int get hashCode => const ListEquality().hash([
        teams,
        email,
        nickname,
        fbUserRef,
        avatar,
        countryName,
        flag,
        id,
        createdAt,
        updatedAt,
        tag,
        teamRole,
        lineUp
      ]);
}

TeamMemberStruct createTeamMemberStruct({
  int? teams,
  String? email,
  String? nickname,
  String? fbUserRef,
  String? avatar,
  String? countryName,
  String? flag,
  int? id,
  String? createdAt,
  String? updatedAt,
  String? tag,
  String? teamRole,
  bool? lineUp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TeamMemberStruct(
      teams: teams,
      email: email,
      nickname: nickname,
      fbUserRef: fbUserRef,
      avatar: avatar,
      countryName: countryName,
      flag: flag,
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
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

TeamMemberStruct? updateTeamMemberStruct(
  TeamMemberStruct? teamMember, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    teamMember
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTeamMemberStructData(
  Map<String, dynamic> firestoreData,
  TeamMemberStruct? teamMember,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (teamMember == null) {
    return;
  }
  if (teamMember.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && teamMember.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final teamMemberData = getTeamMemberFirestoreData(teamMember, forFieldValue);
  final nestedData = teamMemberData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = teamMember.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTeamMemberFirestoreData(
  TeamMemberStruct? teamMember, [
  bool forFieldValue = false,
]) {
  if (teamMember == null) {
    return {};
  }
  final firestoreData = mapToFirestore(teamMember.toMap());

  // Add any Firestore field values
  teamMember.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTeamMemberListFirestoreData(
  List<TeamMemberStruct>? teamMembers,
) =>
    teamMembers?.map((e) => getTeamMemberFirestoreData(e, true)).toList() ?? [];
