// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamMemberStruct extends FFFirebaseStruct {
  TeamMemberStruct({
    int? teams,
    int? id,
    String? email,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? nickname,
    DocumentReference? fbUserRef,
    String? avatar,
    String? countryName,
    String? flag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _teams = teams,
        _id = id,
        _email = email,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _nickname = nickname,
        _fbUserRef = fbUserRef,
        _avatar = avatar,
        _countryName = countryName,
        _flag = flag,
        super(firestoreUtilData);

  // "Teams" field.
  int? _teams;
  int get teams => _teams ?? 0;
  set teams(int? val) => _teams = val;
  void incrementTeams(int amount) => _teams = teams + amount;
  bool hasTeams() => _teams != null;

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "CreatedAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "UpdatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  set nickname(String? val) => _nickname = val;
  bool hasNickname() => _nickname != null;

  // "fbUserRef" field.
  DocumentReference? _fbUserRef;
  DocumentReference? get fbUserRef => _fbUserRef;
  set fbUserRef(DocumentReference? val) => _fbUserRef = val;
  bool hasFbUserRef() => _fbUserRef != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  set countryName(String? val) => _countryName = val;
  bool hasCountryName() => _countryName != null;

  // "flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  set flag(String? val) => _flag = val;
  bool hasFlag() => _flag != null;

  static TeamMemberStruct fromMap(Map<String, dynamic> data) =>
      TeamMemberStruct(
        teams: castToType<int>(data['Teams']),
        id: castToType<int>(data['Id']),
        email: data['email'] as String?,
        createdAt: data['CreatedAt'] as DateTime?,
        updatedAt: data['UpdatedAt'] as DateTime?,
        nickname: data['nickname'] as String?,
        fbUserRef: data['fbUserRef'] as DocumentReference?,
        avatar: data['avatar'] as String?,
        countryName: data['countryName'] as String?,
        flag: data['flag'] as String?,
      );

  static TeamMemberStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TeamMemberStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Teams': _teams,
        'Id': _id,
        'email': _email,
        'CreatedAt': _createdAt,
        'UpdatedAt': _updatedAt,
        'nickname': _nickname,
        'fbUserRef': _fbUserRef,
        'avatar': _avatar,
        'countryName': _countryName,
        'flag': _flag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Teams': serializeParam(
          _teams,
          ParamType.int,
        ),
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'CreatedAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'UpdatedAt': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
        'nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'fbUserRef': serializeParam(
          _fbUserRef,
          ParamType.DocumentReference,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'countryName': serializeParam(
          _countryName,
          ParamType.String,
        ),
        'flag': serializeParam(
          _flag,
          ParamType.String,
        ),
      }.withoutNulls;

  static TeamMemberStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamMemberStruct(
        teams: deserializeParam(
          data['Teams'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['CreatedAt'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['UpdatedAt'],
          ParamType.DateTime,
          false,
        ),
        nickname: deserializeParam(
          data['nickname'],
          ParamType.String,
          false,
        ),
        fbUserRef: deserializeParam(
          data['fbUserRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['user'],
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        countryName: deserializeParam(
          data['countryName'],
          ParamType.String,
          false,
        ),
        flag: deserializeParam(
          data['flag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TeamMemberStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamMemberStruct &&
        teams == other.teams &&
        id == other.id &&
        email == other.email &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        nickname == other.nickname &&
        fbUserRef == other.fbUserRef &&
        avatar == other.avatar &&
        countryName == other.countryName &&
        flag == other.flag;
  }

  @override
  int get hashCode => const ListEquality().hash([
        teams,
        id,
        email,
        createdAt,
        updatedAt,
        nickname,
        fbUserRef,
        avatar,
        countryName,
        flag
      ]);
}

TeamMemberStruct createTeamMemberStruct({
  int? teams,
  int? id,
  String? email,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? nickname,
  DocumentReference? fbUserRef,
  String? avatar,
  String? countryName,
  String? flag,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TeamMemberStruct(
      teams: teams,
      id: id,
      email: email,
      createdAt: createdAt,
      updatedAt: updatedAt,
      nickname: nickname,
      fbUserRef: fbUserRef,
      avatar: avatar,
      countryName: countryName,
      flag: flag,
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
