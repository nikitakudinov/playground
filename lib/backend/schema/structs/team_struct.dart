// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamStruct extends FFFirebaseStruct {
  TeamStruct({
    int? id,
    String? name,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? tag,
    String? logo,
    String? country,
    String? flag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _tag = tag,
        _logo = logo,
        _country = country,
        _flag = flag,
        super(firestoreUtilData);

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

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

  // "Tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "Logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

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

  static TeamStruct fromMap(Map<String, dynamic> data) => TeamStruct(
        id: castToType<int>(data['Id']),
        name: data['Name'] as String?,
        createdAt: data['CreatedAt'] as DateTime?,
        updatedAt: data['UpdatedAt'] as DateTime?,
        tag: data['Tag'] as String?,
        logo: data['Logo'] as String?,
        country: data['Country'] as String?,
        flag: data['Flag'] as String?,
      );

  static TeamStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TeamStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Name': _name,
        'CreatedAt': _createdAt,
        'UpdatedAt': _updatedAt,
        'Tag': _tag,
        'Logo': _logo,
        'Country': _country,
        'Flag': _flag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'Name': serializeParam(
          _name,
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
        'Tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'Logo': serializeParam(
          _logo,
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
      }.withoutNulls;

  static TeamStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['Name'],
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
        tag: deserializeParam(
          data['Tag'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['Logo'],
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
      );

  @override
  String toString() => 'TeamStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamStruct &&
        id == other.id &&
        name == other.name &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        tag == other.tag &&
        logo == other.logo &&
        country == other.country &&
        flag == other.flag;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, createdAt, updatedAt, tag, logo, country, flag]);
}

TeamStruct createTeamStruct({
  int? id,
  String? name,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? tag,
  String? logo,
  String? country,
  String? flag,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TeamStruct(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      tag: tag,
      logo: logo,
      country: country,
      flag: flag,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TeamStruct? updateTeamStruct(
  TeamStruct? team, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    team
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTeamStructData(
  Map<String, dynamic> firestoreData,
  TeamStruct? team,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (team == null) {
    return;
  }
  if (team.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && team.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final teamData = getTeamFirestoreData(team, forFieldValue);
  final nestedData = teamData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = team.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTeamFirestoreData(
  TeamStruct? team, [
  bool forFieldValue = false,
]) {
  if (team == null) {
    return {};
  }
  final firestoreData = mapToFirestore(team.toMap());

  // Add any Firestore field values
  team.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTeamListFirestoreData(
  List<TeamStruct>? teams,
) =>
    teams?.map((e) => getTeamFirestoreData(e, true)).toList() ?? [];
