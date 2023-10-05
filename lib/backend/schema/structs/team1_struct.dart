// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Team1Struct extends FFFirebaseStruct {
  Team1Struct({
    int? id,
    String? name,
    String? tag,
    String? owner,
    String? logo,
    String? country,
    String? flag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
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

  static Team1Struct fromMap(Map<String, dynamic> data) => Team1Struct(
        id: castToType<int>(data['Id']),
        name: data['name'] as String?,
        tag: data['tag'] as String?,
        owner: data['owner'] as String?,
        logo: data['logo'] as String?,
        country: data['country'] as String?,
        flag: data['flag'] as String?,
      );

  static Team1Struct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? Team1Struct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'name': _name,
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

  static Team1Struct fromSerializableMap(Map<String, dynamic> data) =>
      Team1Struct(
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
  String toString() => 'Team1Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Team1Struct &&
        id == other.id &&
        name == other.name &&
        tag == other.tag &&
        owner == other.owner &&
        logo == other.logo &&
        country == other.country &&
        flag == other.flag;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, tag, owner, logo, country, flag]);
}

Team1Struct createTeam1Struct({
  int? id,
  String? name,
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
    Team1Struct(
      id: id,
      name: name,
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

Team1Struct? updateTeam1Struct(
  Team1Struct? team1, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    team1
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTeam1StructData(
  Map<String, dynamic> firestoreData,
  Team1Struct? team1,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (team1 == null) {
    return;
  }
  if (team1.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && team1.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final team1Data = getTeam1FirestoreData(team1, forFieldValue);
  final nestedData = team1Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = team1.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTeam1FirestoreData(
  Team1Struct? team1, [
  bool forFieldValue = false,
]) {
  if (team1 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(team1.toMap());

  // Add any Firestore field values
  team1.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTeam1ListFirestoreData(
  List<Team1Struct>? team1s,
) =>
    team1s?.map((e) => getTeam1FirestoreData(e, true)).toList() ?? [];
