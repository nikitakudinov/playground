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
    int? matchWinnerID,
    List<String>? rival1Logo,
    List<String>? rival1Tag,
    List<String>? rival1Name,
    List<String>? rival1Country,
    List<String>? rival1Flag,
    List<String>? rival2Logo,
    List<String>? rival2Tag,
    List<String>? rival2Name,
    List<String>? rival2Country,
    List<String>? rival2Flag,
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
        _matchWinnerID = matchWinnerID,
        _rival1Logo = rival1Logo,
        _rival1Tag = rival1Tag,
        _rival1Name = rival1Name,
        _rival1Country = rival1Country,
        _rival1Flag = rival1Flag,
        _rival2Logo = rival2Logo,
        _rival2Tag = rival2Tag,
        _rival2Name = rival2Name,
        _rival2Country = rival2Country,
        _rival2Flag = rival2Flag,
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

  // "MatchWinnerID" field.
  int? _matchWinnerID;
  int get matchWinnerID => _matchWinnerID ?? 0;
  set matchWinnerID(int? val) => _matchWinnerID = val;
  void incrementMatchWinnerID(int amount) =>
      _matchWinnerID = matchWinnerID + amount;
  bool hasMatchWinnerID() => _matchWinnerID != null;

  // "Rival1Logo" field.
  List<String>? _rival1Logo;
  List<String> get rival1Logo => _rival1Logo ?? const [];
  set rival1Logo(List<String>? val) => _rival1Logo = val;
  void updateRival1Logo(Function(List<String>) updateFn) =>
      updateFn(_rival1Logo ??= []);
  bool hasRival1Logo() => _rival1Logo != null;

  // "Rival1Tag" field.
  List<String>? _rival1Tag;
  List<String> get rival1Tag => _rival1Tag ?? const [];
  set rival1Tag(List<String>? val) => _rival1Tag = val;
  void updateRival1Tag(Function(List<String>) updateFn) =>
      updateFn(_rival1Tag ??= []);
  bool hasRival1Tag() => _rival1Tag != null;

  // "Rival1Name" field.
  List<String>? _rival1Name;
  List<String> get rival1Name => _rival1Name ?? const [];
  set rival1Name(List<String>? val) => _rival1Name = val;
  void updateRival1Name(Function(List<String>) updateFn) =>
      updateFn(_rival1Name ??= []);
  bool hasRival1Name() => _rival1Name != null;

  // "Rival1Country" field.
  List<String>? _rival1Country;
  List<String> get rival1Country => _rival1Country ?? const [];
  set rival1Country(List<String>? val) => _rival1Country = val;
  void updateRival1Country(Function(List<String>) updateFn) =>
      updateFn(_rival1Country ??= []);
  bool hasRival1Country() => _rival1Country != null;

  // "Rival1Flag" field.
  List<String>? _rival1Flag;
  List<String> get rival1Flag => _rival1Flag ?? const [];
  set rival1Flag(List<String>? val) => _rival1Flag = val;
  void updateRival1Flag(Function(List<String>) updateFn) =>
      updateFn(_rival1Flag ??= []);
  bool hasRival1Flag() => _rival1Flag != null;

  // "Rival2Logo" field.
  List<String>? _rival2Logo;
  List<String> get rival2Logo => _rival2Logo ?? const [];
  set rival2Logo(List<String>? val) => _rival2Logo = val;
  void updateRival2Logo(Function(List<String>) updateFn) =>
      updateFn(_rival2Logo ??= []);
  bool hasRival2Logo() => _rival2Logo != null;

  // "Rival2Tag" field.
  List<String>? _rival2Tag;
  List<String> get rival2Tag => _rival2Tag ?? const [];
  set rival2Tag(List<String>? val) => _rival2Tag = val;
  void updateRival2Tag(Function(List<String>) updateFn) =>
      updateFn(_rival2Tag ??= []);
  bool hasRival2Tag() => _rival2Tag != null;

  // "Rival2Name" field.
  List<String>? _rival2Name;
  List<String> get rival2Name => _rival2Name ?? const [];
  set rival2Name(List<String>? val) => _rival2Name = val;
  void updateRival2Name(Function(List<String>) updateFn) =>
      updateFn(_rival2Name ??= []);
  bool hasRival2Name() => _rival2Name != null;

  // "Rival2Country" field.
  List<String>? _rival2Country;
  List<String> get rival2Country => _rival2Country ?? const [];
  set rival2Country(List<String>? val) => _rival2Country = val;
  void updateRival2Country(Function(List<String>) updateFn) =>
      updateFn(_rival2Country ??= []);
  bool hasRival2Country() => _rival2Country != null;

  // "Rival2Flag" field.
  List<String>? _rival2Flag;
  List<String> get rival2Flag => _rival2Flag ?? const [];
  set rival2Flag(List<String>? val) => _rival2Flag = val;
  void updateRival2Flag(Function(List<String>) updateFn) =>
      updateFn(_rival2Flag ??= []);
  bool hasRival2Flag() => _rival2Flag != null;

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
        matchWinnerID: castToType<int>(data['MatchWinnerID']),
        rival1Logo: getDataList(data['Rival1Logo']),
        rival1Tag: getDataList(data['Rival1Tag']),
        rival1Name: getDataList(data['Rival1Name']),
        rival1Country: getDataList(data['Rival1Country']),
        rival1Flag: getDataList(data['Rival1Flag']),
        rival2Logo: getDataList(data['Rival2Logo']),
        rival2Tag: getDataList(data['Rival2Tag']),
        rival2Name: getDataList(data['Rival2Name']),
        rival2Country: getDataList(data['Rival2Country']),
        rival2Flag: getDataList(data['Rival2Flag']),
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
        'MatchWinnerID': _matchWinnerID,
        'Rival1Logo': _rival1Logo,
        'Rival1Tag': _rival1Tag,
        'Rival1Name': _rival1Name,
        'Rival1Country': _rival1Country,
        'Rival1Flag': _rival1Flag,
        'Rival2Logo': _rival2Logo,
        'Rival2Tag': _rival2Tag,
        'Rival2Name': _rival2Name,
        'Rival2Country': _rival2Country,
        'Rival2Flag': _rival2Flag,
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
        'MatchWinnerID': serializeParam(
          _matchWinnerID,
          ParamType.int,
        ),
        'Rival1Logo': serializeParam(
          _rival1Logo,
          ParamType.String,
          true,
        ),
        'Rival1Tag': serializeParam(
          _rival1Tag,
          ParamType.String,
          true,
        ),
        'Rival1Name': serializeParam(
          _rival1Name,
          ParamType.String,
          true,
        ),
        'Rival1Country': serializeParam(
          _rival1Country,
          ParamType.String,
          true,
        ),
        'Rival1Flag': serializeParam(
          _rival1Flag,
          ParamType.String,
          true,
        ),
        'Rival2Logo': serializeParam(
          _rival2Logo,
          ParamType.String,
          true,
        ),
        'Rival2Tag': serializeParam(
          _rival2Tag,
          ParamType.String,
          true,
        ),
        'Rival2Name': serializeParam(
          _rival2Name,
          ParamType.String,
          true,
        ),
        'Rival2Country': serializeParam(
          _rival2Country,
          ParamType.String,
          true,
        ),
        'Rival2Flag': serializeParam(
          _rival2Flag,
          ParamType.String,
          true,
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
        matchWinnerID: deserializeParam(
          data['MatchWinnerID'],
          ParamType.int,
          false,
        ),
        rival1Logo: deserializeParam<String>(
          data['Rival1Logo'],
          ParamType.String,
          true,
        ),
        rival1Tag: deserializeParam<String>(
          data['Rival1Tag'],
          ParamType.String,
          true,
        ),
        rival1Name: deserializeParam<String>(
          data['Rival1Name'],
          ParamType.String,
          true,
        ),
        rival1Country: deserializeParam<String>(
          data['Rival1Country'],
          ParamType.String,
          true,
        ),
        rival1Flag: deserializeParam<String>(
          data['Rival1Flag'],
          ParamType.String,
          true,
        ),
        rival2Logo: deserializeParam<String>(
          data['Rival2Logo'],
          ParamType.String,
          true,
        ),
        rival2Tag: deserializeParam<String>(
          data['Rival2Tag'],
          ParamType.String,
          true,
        ),
        rival2Name: deserializeParam<String>(
          data['Rival2Name'],
          ParamType.String,
          true,
        ),
        rival2Country: deserializeParam<String>(
          data['Rival2Country'],
          ParamType.String,
          true,
        ),
        rival2Flag: deserializeParam<String>(
          data['Rival2Flag'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'MatchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
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
        matchWinnerID == other.matchWinnerID &&
        listEquality.equals(rival1Logo, other.rival1Logo) &&
        listEquality.equals(rival1Tag, other.rival1Tag) &&
        listEquality.equals(rival1Name, other.rival1Name) &&
        listEquality.equals(rival1Country, other.rival1Country) &&
        listEquality.equals(rival1Flag, other.rival1Flag) &&
        listEquality.equals(rival2Logo, other.rival2Logo) &&
        listEquality.equals(rival2Tag, other.rival2Tag) &&
        listEquality.equals(rival2Name, other.rival2Name) &&
        listEquality.equals(rival2Country, other.rival2Country) &&
        listEquality.equals(rival2Flag, other.rival2Flag);
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
        matchWinnerID,
        rival1Logo,
        rival1Tag,
        rival1Name,
        rival1Country,
        rival1Flag,
        rival2Logo,
        rival2Tag,
        rival2Name,
        rival2Country,
        rival2Flag
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
  int? matchWinnerID,
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
      matchWinnerID: matchWinnerID,
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
