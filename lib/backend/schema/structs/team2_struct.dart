// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Team2Struct extends FFFirebaseStruct {
  Team2Struct({
    int? id,
    String? name,
    String? createdAt,
    String? updatedAt,
    String? tag,
    String? owner,
    String? logo,
    String? country,
    String? flag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _tag = tag,
        _owner = owner,
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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

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

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  set owner(String? val) => _owner = val;
  bool hasOwner() => _owner != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  set flag(String? val) => _flag = val;
  bool hasFlag() => _flag != null;

  static Team2Struct fromMap(Map<String, dynamic> data) => Team2Struct(
        id: castToType<int>(data['Id']),
        name: data['name'] as String?,
        createdAt: data['CreatedAt'] as String?,
        updatedAt: data['UpdatedAt'] as String?,
        tag: data['tag'] as String?,
        owner: data['owner'] as String?,
        logo: data['logo'] as String?,
        country: data['country'] as String?,
        flag: data['flag'] as String?,
      );

  static Team2Struct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? Team2Struct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'name': _name,
        'CreatedAt': _createdAt,
        'UpdatedAt': _updatedAt,
        'tag': _tag,
        'owner': _owner,
        'logo': _logo,
        'country': _country,
        'flag': _flag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'CreatedAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'UpdatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'owner': serializeParam(
          _owner,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'flag': serializeParam(
          _flag,
          ParamType.String,
        ),
      }.withoutNulls;

  static Team2Struct fromSerializableMap(Map<String, dynamic> data) =>
      Team2Struct(
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
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
          data['tag'],
          ParamType.String,
          false,
        ),
        owner: deserializeParam(
          data['owner'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
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
  String toString() => 'Team2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Team2Struct &&
        id == other.id &&
        name == other.name &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        tag == other.tag &&
        owner == other.owner &&
        logo == other.logo &&
        country == other.country &&
        flag == other.flag;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, createdAt, updatedAt, tag, owner, logo, country, flag]);
}

Team2Struct createTeam2Struct({
  int? id,
  String? name,
  String? createdAt,
  String? updatedAt,
  String? tag,
  String? owner,
  String? logo,
  String? country,
  String? flag,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Team2Struct(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      tag: tag,
      owner: owner,
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

Team2Struct? updateTeam2Struct(
  Team2Struct? team2, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    team2
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTeam2StructData(
  Map<String, dynamic> firestoreData,
  Team2Struct? team2,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (team2 == null) {
    return;
  }
  if (team2.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && team2.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final team2Data = getTeam2FirestoreData(team2, forFieldValue);
  final nestedData = team2Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = team2.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTeam2FirestoreData(
  Team2Struct? team2, [
  bool forFieldValue = false,
]) {
  if (team2 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(team2.toMap());

  // Add any Firestore field values
  team2.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTeam2ListFirestoreData(
  List<Team2Struct>? team2s,
) =>
    team2s?.map((e) => getTeam2FirestoreData(e, true)).toList() ?? [];
