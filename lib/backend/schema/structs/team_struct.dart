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
    String? tag,
    String? owner,
    String? logo,
    String? countrie,
    String? flag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _tag = tag,
        _owner = owner,
        _logo = logo,
        _countrie = countrie,
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

  // "countrie" field.
  String? _countrie;
  String get countrie => _countrie ?? '';
  set countrie(String? val) => _countrie = val;
  bool hasCountrie() => _countrie != null;

  // "flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  set flag(String? val) => _flag = val;
  bool hasFlag() => _flag != null;

  static TeamStruct fromMap(Map<String, dynamic> data) => TeamStruct(
        id: castToType<int>(data['Id']),
        name: data['name'] as String?,
        tag: data['tag'] as String?,
        owner: data['owner'] as String?,
        logo: data['logo'] as String?,
        countrie: data['countrie'] as String?,
        flag: data['flag'] as String?,
      );

  static TeamStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TeamStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'name': _name,
        'tag': _tag,
        'owner': _owner,
        'logo': _logo,
        'countrie': _countrie,
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
        'countrie': serializeParam(
          _countrie,
          ParamType.String,
        ),
        'flag': serializeParam(
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
        countrie: deserializeParam(
          data['countrie'],
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
  String toString() => 'TeamStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamStruct &&
        id == other.id &&
        name == other.name &&
        tag == other.tag &&
        owner == other.owner &&
        logo == other.logo &&
        countrie == other.countrie &&
        flag == other.flag;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, tag, owner, logo, countrie, flag]);
}

TeamStruct createTeamStruct({
  int? id,
  String? name,
  String? tag,
  String? owner,
  String? logo,
  String? countrie,
  String? flag,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TeamStruct(
      id: id,
      name: name,
      tag: tag,
      owner: owner,
      logo: logo,
      countrie: countrie,
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
