// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizatorStruct extends FFFirebaseStruct {
  OrganizatorStruct({
    String? organizator,
    String? memberOfTeamCount,
    String? ownerOfTeam,
    int? id,
    String? nickname,
    DateTime? createdAt,
    String? updatedAt,
    String? fBUserId,
    String? tag,
    String? country,
    String? flag,
    String? teamRole,
    String? lineUp,
    String? avatar,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _organizator = organizator,
        _memberOfTeamCount = memberOfTeamCount,
        _ownerOfTeam = ownerOfTeam,
        _id = id,
        _nickname = nickname,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _fBUserId = fBUserId,
        _tag = tag,
        _country = country,
        _flag = flag,
        _teamRole = teamRole,
        _lineUp = lineUp,
        _avatar = avatar,
        super(firestoreUtilData);

  // "Organizator" field.
  String? _organizator;
  String get organizator => _organizator ?? '';
  set organizator(String? val) => _organizator = val;
  bool hasOrganizator() => _organizator != null;

  // "MemberOfTeamCount" field.
  String? _memberOfTeamCount;
  String get memberOfTeamCount => _memberOfTeamCount ?? '';
  set memberOfTeamCount(String? val) => _memberOfTeamCount = val;
  bool hasMemberOfTeamCount() => _memberOfTeamCount != null;

  // "OwnerOfTeam" field.
  String? _ownerOfTeam;
  String get ownerOfTeam => _ownerOfTeam ?? '';
  set ownerOfTeam(String? val) => _ownerOfTeam = val;
  bool hasOwnerOfTeam() => _ownerOfTeam != null;

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

  // "CreatedAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "UpdatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;
  bool hasUpdatedAt() => _updatedAt != null;

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

  // "Country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "Flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  set flag(String? val) => _flag = val;
  bool hasFlag() => _flag != null;

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

  static OrganizatorStruct fromMap(Map<String, dynamic> data) =>
      OrganizatorStruct(
        organizator: data['Organizator'] as String?,
        memberOfTeamCount: data['MemberOfTeamCount'] as String?,
        ownerOfTeam: data['OwnerOfTeam'] as String?,
        id: castToType<int>(data['Id']),
        nickname: data['Nickname'] as String?,
        createdAt: data['CreatedAt'] as DateTime?,
        updatedAt: data['UpdatedAt'] as String?,
        fBUserId: data['FBUserId'] as String?,
        tag: data['Tag'] as String?,
        country: data['Country'] as String?,
        flag: data['Flag'] as String?,
        teamRole: data['TeamRole'] as String?,
        lineUp: data['LineUp'] as String?,
        avatar: data['Avatar'] as String?,
      );

  static OrganizatorStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? OrganizatorStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Organizator': _organizator,
        'MemberOfTeamCount': _memberOfTeamCount,
        'OwnerOfTeam': _ownerOfTeam,
        'Id': _id,
        'Nickname': _nickname,
        'CreatedAt': _createdAt,
        'UpdatedAt': _updatedAt,
        'FBUserId': _fBUserId,
        'Tag': _tag,
        'Country': _country,
        'Flag': _flag,
        'TeamRole': _teamRole,
        'LineUp': _lineUp,
        'Avatar': _avatar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Organizator': serializeParam(
          _organizator,
          ParamType.String,
        ),
        'MemberOfTeamCount': serializeParam(
          _memberOfTeamCount,
          ParamType.String,
        ),
        'OwnerOfTeam': serializeParam(
          _ownerOfTeam,
          ParamType.String,
        ),
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'Nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'CreatedAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'UpdatedAt': serializeParam(
          _updatedAt,
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
        'Country': serializeParam(
          _country,
          ParamType.String,
        ),
        'Flag': serializeParam(
          _flag,
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

  static OrganizatorStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrganizatorStruct(
        organizator: deserializeParam(
          data['Organizator'],
          ParamType.String,
          false,
        ),
        memberOfTeamCount: deserializeParam(
          data['MemberOfTeamCount'],
          ParamType.String,
          false,
        ),
        ownerOfTeam: deserializeParam(
          data['OwnerOfTeam'],
          ParamType.String,
          false,
        ),
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
        createdAt: deserializeParam(
          data['CreatedAt'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['UpdatedAt'],
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
        country: deserializeParam(
          data['Country'],
          ParamType.String,
          false,
        ),
        flag: deserializeParam(
          data['Flag'],
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
  String toString() => 'OrganizatorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrganizatorStruct &&
        organizator == other.organizator &&
        memberOfTeamCount == other.memberOfTeamCount &&
        ownerOfTeam == other.ownerOfTeam &&
        id == other.id &&
        nickname == other.nickname &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        fBUserId == other.fBUserId &&
        tag == other.tag &&
        country == other.country &&
        flag == other.flag &&
        teamRole == other.teamRole &&
        lineUp == other.lineUp &&
        avatar == other.avatar;
  }

  @override
  int get hashCode => const ListEquality().hash([
        organizator,
        memberOfTeamCount,
        ownerOfTeam,
        id,
        nickname,
        createdAt,
        updatedAt,
        fBUserId,
        tag,
        country,
        flag,
        teamRole,
        lineUp,
        avatar
      ]);
}

OrganizatorStruct createOrganizatorStruct({
  String? organizator,
  String? memberOfTeamCount,
  String? ownerOfTeam,
  int? id,
  String? nickname,
  DateTime? createdAt,
  String? updatedAt,
  String? fBUserId,
  String? tag,
  String? country,
  String? flag,
  String? teamRole,
  String? lineUp,
  String? avatar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrganizatorStruct(
      organizator: organizator,
      memberOfTeamCount: memberOfTeamCount,
      ownerOfTeam: ownerOfTeam,
      id: id,
      nickname: nickname,
      createdAt: createdAt,
      updatedAt: updatedAt,
      fBUserId: fBUserId,
      tag: tag,
      country: country,
      flag: flag,
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

OrganizatorStruct? updateOrganizatorStruct(
  OrganizatorStruct? organizatorStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    organizatorStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrganizatorStructData(
  Map<String, dynamic> firestoreData,
  OrganizatorStruct? organizatorStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (organizatorStruct == null) {
    return;
  }
  if (organizatorStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && organizatorStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final organizatorStructData =
      getOrganizatorFirestoreData(organizatorStruct, forFieldValue);
  final nestedData =
      organizatorStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = organizatorStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrganizatorFirestoreData(
  OrganizatorStruct? organizatorStruct, [
  bool forFieldValue = false,
]) {
  if (organizatorStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(organizatorStruct.toMap());

  // Add any Firestore field values
  organizatorStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrganizatorListFirestoreData(
  List<OrganizatorStruct>? organizatorStructs,
) =>
    organizatorStructs
        ?.map((e) => getOrganizatorFirestoreData(e, true))
        .toList() ??
    [];
