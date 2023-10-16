// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchStruct extends FFFirebaseStruct {
  MatchStruct({
    int? id,
    String? status,
    String? createdAt,
    String? updatedAt,
    int? pair,
    int? riva1Wins,
    int? rival2Wins,
    int? round,
    int? tournamentId,
    String? rival1Logo,
    String? rival1Name,
    String? rival1Tag,
    String? rival2Logo,
    String? rival2Name,
    String? rival2Tag,
    int? rival1Id,
    int? rival2Id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _status = status,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _pair = pair,
        _riva1Wins = riva1Wins,
        _rival2Wins = rival2Wins,
        _round = round,
        _tournamentId = tournamentId,
        _rival1Logo = rival1Logo,
        _rival1Name = rival1Name,
        _rival1Tag = rival1Tag,
        _rival2Logo = rival2Logo,
        _rival2Name = rival2Name,
        _rival2Tag = rival2Tag,
        _rival1Id = rival1Id,
        _rival2Id = rival2Id,
        super(firestoreUtilData);

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

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

  // "Pair" field.
  int? _pair;
  int get pair => _pair ?? 0;
  set pair(int? val) => _pair = val;
  void incrementPair(int amount) => _pair = pair + amount;
  bool hasPair() => _pair != null;

  // "Riva1Wins" field.
  int? _riva1Wins;
  int get riva1Wins => _riva1Wins ?? 0;
  set riva1Wins(int? val) => _riva1Wins = val;
  void incrementRiva1Wins(int amount) => _riva1Wins = riva1Wins + amount;
  bool hasRiva1Wins() => _riva1Wins != null;

  // "Rival2Wins" field.
  int? _rival2Wins;
  int get rival2Wins => _rival2Wins ?? 0;
  set rival2Wins(int? val) => _rival2Wins = val;
  void incrementRival2Wins(int amount) => _rival2Wins = rival2Wins + amount;
  bool hasRival2Wins() => _rival2Wins != null;

  // "Round" field.
  int? _round;
  int get round => _round ?? 0;
  set round(int? val) => _round = val;
  void incrementRound(int amount) => _round = round + amount;
  bool hasRound() => _round != null;

  // "TournamentId" field.
  int? _tournamentId;
  int get tournamentId => _tournamentId ?? 0;
  set tournamentId(int? val) => _tournamentId = val;
  void incrementTournamentId(int amount) =>
      _tournamentId = tournamentId + amount;
  bool hasTournamentId() => _tournamentId != null;

  // "Rival1Logo" field.
  String? _rival1Logo;
  String get rival1Logo => _rival1Logo ?? '';
  set rival1Logo(String? val) => _rival1Logo = val;
  bool hasRival1Logo() => _rival1Logo != null;

  // "Rival1Name" field.
  String? _rival1Name;
  String get rival1Name => _rival1Name ?? '';
  set rival1Name(String? val) => _rival1Name = val;
  bool hasRival1Name() => _rival1Name != null;

  // "Rival1Tag" field.
  String? _rival1Tag;
  String get rival1Tag => _rival1Tag ?? '';
  set rival1Tag(String? val) => _rival1Tag = val;
  bool hasRival1Tag() => _rival1Tag != null;

  // "Rival2Logo" field.
  String? _rival2Logo;
  String get rival2Logo => _rival2Logo ?? '';
  set rival2Logo(String? val) => _rival2Logo = val;
  bool hasRival2Logo() => _rival2Logo != null;

  // "Rival2Name" field.
  String? _rival2Name;
  String get rival2Name => _rival2Name ?? '';
  set rival2Name(String? val) => _rival2Name = val;
  bool hasRival2Name() => _rival2Name != null;

  // "Rival2Tag" field.
  String? _rival2Tag;
  String get rival2Tag => _rival2Tag ?? '';
  set rival2Tag(String? val) => _rival2Tag = val;
  bool hasRival2Tag() => _rival2Tag != null;

  // "Rival1Id" field.
  int? _rival1Id;
  int get rival1Id => _rival1Id ?? 0;
  set rival1Id(int? val) => _rival1Id = val;
  void incrementRival1Id(int amount) => _rival1Id = rival1Id + amount;
  bool hasRival1Id() => _rival1Id != null;

  // "Rival2Id" field.
  int? _rival2Id;
  int get rival2Id => _rival2Id ?? 0;
  set rival2Id(int? val) => _rival2Id = val;
  void incrementRival2Id(int amount) => _rival2Id = rival2Id + amount;
  bool hasRival2Id() => _rival2Id != null;

  static MatchStruct fromMap(Map<String, dynamic> data) => MatchStruct(
        id: castToType<int>(data['Id']),
        status: data['Status'] as String?,
        createdAt: data['CreatedAt'] as String?,
        updatedAt: data['UpdatedAt'] as String?,
        pair: castToType<int>(data['Pair']),
        riva1Wins: castToType<int>(data['Riva1Wins']),
        rival2Wins: castToType<int>(data['Rival2Wins']),
        round: castToType<int>(data['Round']),
        tournamentId: castToType<int>(data['TournamentId']),
        rival1Logo: data['Rival1Logo'] as String?,
        rival1Name: data['Rival1Name'] as String?,
        rival1Tag: data['Rival1Tag'] as String?,
        rival2Logo: data['Rival2Logo'] as String?,
        rival2Name: data['Rival2Name'] as String?,
        rival2Tag: data['Rival2Tag'] as String?,
        rival1Id: castToType<int>(data['Rival1Id']),
        rival2Id: castToType<int>(data['Rival2Id']),
      );

  static MatchStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? MatchStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Status': _status,
        'CreatedAt': _createdAt,
        'UpdatedAt': _updatedAt,
        'Pair': _pair,
        'Riva1Wins': _riva1Wins,
        'Rival2Wins': _rival2Wins,
        'Round': _round,
        'TournamentId': _tournamentId,
        'Rival1Logo': _rival1Logo,
        'Rival1Name': _rival1Name,
        'Rival1Tag': _rival1Tag,
        'Rival2Logo': _rival2Logo,
        'Rival2Name': _rival2Name,
        'Rival2Tag': _rival2Tag,
        'Rival1Id': _rival1Id,
        'Rival2Id': _rival2Id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'Status': serializeParam(
          _status,
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
        'Pair': serializeParam(
          _pair,
          ParamType.int,
        ),
        'Riva1Wins': serializeParam(
          _riva1Wins,
          ParamType.int,
        ),
        'Rival2Wins': serializeParam(
          _rival2Wins,
          ParamType.int,
        ),
        'Round': serializeParam(
          _round,
          ParamType.int,
        ),
        'TournamentId': serializeParam(
          _tournamentId,
          ParamType.int,
        ),
        'Rival1Logo': serializeParam(
          _rival1Logo,
          ParamType.String,
        ),
        'Rival1Name': serializeParam(
          _rival1Name,
          ParamType.String,
        ),
        'Rival1Tag': serializeParam(
          _rival1Tag,
          ParamType.String,
        ),
        'Rival2Logo': serializeParam(
          _rival2Logo,
          ParamType.String,
        ),
        'Rival2Name': serializeParam(
          _rival2Name,
          ParamType.String,
        ),
        'Rival2Tag': serializeParam(
          _rival2Tag,
          ParamType.String,
        ),
        'Rival1Id': serializeParam(
          _rival1Id,
          ParamType.int,
        ),
        'Rival2Id': serializeParam(
          _rival2Id,
          ParamType.int,
        ),
      }.withoutNulls;

  static MatchStruct fromSerializableMap(Map<String, dynamic> data) =>
      MatchStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['Status'],
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
        pair: deserializeParam(
          data['Pair'],
          ParamType.int,
          false,
        ),
        riva1Wins: deserializeParam(
          data['Riva1Wins'],
          ParamType.int,
          false,
        ),
        rival2Wins: deserializeParam(
          data['Rival2Wins'],
          ParamType.int,
          false,
        ),
        round: deserializeParam(
          data['Round'],
          ParamType.int,
          false,
        ),
        tournamentId: deserializeParam(
          data['TournamentId'],
          ParamType.int,
          false,
        ),
        rival1Logo: deserializeParam(
          data['Rival1Logo'],
          ParamType.String,
          false,
        ),
        rival1Name: deserializeParam(
          data['Rival1Name'],
          ParamType.String,
          false,
        ),
        rival1Tag: deserializeParam(
          data['Rival1Tag'],
          ParamType.String,
          false,
        ),
        rival2Logo: deserializeParam(
          data['Rival2Logo'],
          ParamType.String,
          false,
        ),
        rival2Name: deserializeParam(
          data['Rival2Name'],
          ParamType.String,
          false,
        ),
        rival2Tag: deserializeParam(
          data['Rival2Tag'],
          ParamType.String,
          false,
        ),
        rival1Id: deserializeParam(
          data['Rival1Id'],
          ParamType.int,
          false,
        ),
        rival2Id: deserializeParam(
          data['Rival2Id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MatchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MatchStruct &&
        id == other.id &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        pair == other.pair &&
        riva1Wins == other.riva1Wins &&
        rival2Wins == other.rival2Wins &&
        round == other.round &&
        tournamentId == other.tournamentId &&
        rival1Logo == other.rival1Logo &&
        rival1Name == other.rival1Name &&
        rival1Tag == other.rival1Tag &&
        rival2Logo == other.rival2Logo &&
        rival2Name == other.rival2Name &&
        rival2Tag == other.rival2Tag &&
        rival1Id == other.rival1Id &&
        rival2Id == other.rival2Id;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        status,
        createdAt,
        updatedAt,
        pair,
        riva1Wins,
        rival2Wins,
        round,
        tournamentId,
        rival1Logo,
        rival1Name,
        rival1Tag,
        rival2Logo,
        rival2Name,
        rival2Tag,
        rival1Id,
        rival2Id
      ]);
}

MatchStruct createMatchStruct({
  int? id,
  String? status,
  String? createdAt,
  String? updatedAt,
  int? pair,
  int? riva1Wins,
  int? rival2Wins,
  int? round,
  int? tournamentId,
  String? rival1Logo,
  String? rival1Name,
  String? rival1Tag,
  String? rival2Logo,
  String? rival2Name,
  String? rival2Tag,
  int? rival1Id,
  int? rival2Id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MatchStruct(
      id: id,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
      pair: pair,
      riva1Wins: riva1Wins,
      rival2Wins: rival2Wins,
      round: round,
      tournamentId: tournamentId,
      rival1Logo: rival1Logo,
      rival1Name: rival1Name,
      rival1Tag: rival1Tag,
      rival2Logo: rival2Logo,
      rival2Name: rival2Name,
      rival2Tag: rival2Tag,
      rival1Id: rival1Id,
      rival2Id: rival2Id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MatchStruct? updateMatchStruct(
  MatchStruct? match, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    match
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMatchStructData(
  Map<String, dynamic> firestoreData,
  MatchStruct? match,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (match == null) {
    return;
  }
  if (match.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && match.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final matchData = getMatchFirestoreData(match, forFieldValue);
  final nestedData = matchData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = match.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMatchFirestoreData(
  MatchStruct? match, [
  bool forFieldValue = false,
]) {
  if (match == null) {
    return {};
  }
  final firestoreData = mapToFirestore(match.toMap());

  // Add any Firestore field values
  match.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMatchListFirestoreData(
  List<MatchStruct>? matchs,
) =>
    matchs?.map((e) => getMatchFirestoreData(e, true)).toList() ?? [];
