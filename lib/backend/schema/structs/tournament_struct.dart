// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentStruct extends FFFirebaseStruct {
  TournamentStruct({
    int? id,
    String? name,
    int? teams,
    List<String>? teamsName,
    List<String>? teamsTag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _teams = teams,
        _teamsName = teamsName,
        _teamsTag = teamsTag,
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

  // "Teams" field.
  int? _teams;
  int get teams => _teams ?? 0;
  set teams(int? val) => _teams = val;
  void incrementTeams(int amount) => _teams = teams + amount;
  bool hasTeams() => _teams != null;

  // "TeamsName" field.
  List<String>? _teamsName;
  List<String> get teamsName => _teamsName ?? const [];
  set teamsName(List<String>? val) => _teamsName = val;
  void updateTeamsName(Function(List<String>) updateFn) =>
      updateFn(_teamsName ??= []);
  bool hasTeamsName() => _teamsName != null;

  // "TeamsTag" field.
  List<String>? _teamsTag;
  List<String> get teamsTag => _teamsTag ?? const [];
  set teamsTag(List<String>? val) => _teamsTag = val;
  void updateTeamsTag(Function(List<String>) updateFn) =>
      updateFn(_teamsTag ??= []);
  bool hasTeamsTag() => _teamsTag != null;

  static TournamentStruct fromMap(Map<String, dynamic> data) =>
      TournamentStruct(
        id: castToType<int>(data['Id']),
        name: data['Name'] as String?,
        teams: castToType<int>(data['Teams']),
        teamsName: getDataList(data['TeamsName']),
        teamsTag: getDataList(data['TeamsTag']),
      );

  static TournamentStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TournamentStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Name': _name,
        'Teams': _teams,
        'TeamsName': _teamsName,
        'TeamsTag': _teamsTag,
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
        'Teams': serializeParam(
          _teams,
          ParamType.int,
        ),
        'TeamsName': serializeParam(
          _teamsName,
          ParamType.String,
          true,
        ),
        'TeamsTag': serializeParam(
          _teamsTag,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static TournamentStruct fromSerializableMap(Map<String, dynamic> data) =>
      TournamentStruct(
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
        teams: deserializeParam(
          data['Teams'],
          ParamType.int,
          false,
        ),
        teamsName: deserializeParam<String>(
          data['TeamsName'],
          ParamType.String,
          true,
        ),
        teamsTag: deserializeParam<String>(
          data['TeamsTag'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'TournamentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TournamentStruct &&
        id == other.id &&
        name == other.name &&
        teams == other.teams &&
        listEquality.equals(teamsName, other.teamsName) &&
        listEquality.equals(teamsTag, other.teamsTag);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, teams, teamsName, teamsTag]);
}

TournamentStruct createTournamentStruct({
  int? id,
  String? name,
  int? teams,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TournamentStruct(
      id: id,
      name: name,
      teams: teams,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TournamentStruct? updateTournamentStruct(
  TournamentStruct? tournament, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tournament
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTournamentStructData(
  Map<String, dynamic> firestoreData,
  TournamentStruct? tournament,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tournament == null) {
    return;
  }
  if (tournament.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tournament.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tournamentData = getTournamentFirestoreData(tournament, forFieldValue);
  final nestedData = tournamentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tournament.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTournamentFirestoreData(
  TournamentStruct? tournament, [
  bool forFieldValue = false,
]) {
  if (tournament == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tournament.toMap());

  // Add any Firestore field values
  tournament.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTournamentListFirestoreData(
  List<TournamentStruct>? tournaments,
) =>
    tournaments?.map((e) => getTournamentFirestoreData(e, true)).toList() ?? [];
