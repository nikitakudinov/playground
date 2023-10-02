// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamMemberIdStruct extends FFFirebaseStruct {
  TeamMemberIdStruct({
    int? table2Id,
    int? table1Id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _table2Id = table2Id,
        _table1Id = table1Id,
        super(firestoreUtilData);

  // "table2_id" field.
  int? _table2Id;
  int get table2Id => _table2Id ?? 0;
  set table2Id(int? val) => _table2Id = val;
  void incrementTable2Id(int amount) => _table2Id = table2Id + amount;
  bool hasTable2Id() => _table2Id != null;

  // "table1_id" field.
  int? _table1Id;
  int get table1Id => _table1Id ?? 0;
  set table1Id(int? val) => _table1Id = val;
  void incrementTable1Id(int amount) => _table1Id = table1Id + amount;
  bool hasTable1Id() => _table1Id != null;

  static TeamMemberIdStruct fromMap(Map<String, dynamic> data) =>
      TeamMemberIdStruct(
        table2Id: castToType<int>(data['table2_id']),
        table1Id: castToType<int>(data['table1_id']),
      );

  static TeamMemberIdStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TeamMemberIdStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'table2_id': _table2Id,
        'table1_id': _table1Id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'table2_id': serializeParam(
          _table2Id,
          ParamType.int,
        ),
        'table1_id': serializeParam(
          _table1Id,
          ParamType.int,
        ),
      }.withoutNulls;

  static TeamMemberIdStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamMemberIdStruct(
        table2Id: deserializeParam(
          data['table2_id'],
          ParamType.int,
          false,
        ),
        table1Id: deserializeParam(
          data['table1_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TeamMemberIdStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamMemberIdStruct &&
        table2Id == other.table2Id &&
        table1Id == other.table1Id;
  }

  @override
  int get hashCode => const ListEquality().hash([table2Id, table1Id]);
}

TeamMemberIdStruct createTeamMemberIdStruct({
  int? table2Id,
  int? table1Id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TeamMemberIdStruct(
      table2Id: table2Id,
      table1Id: table1Id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TeamMemberIdStruct? updateTeamMemberIdStruct(
  TeamMemberIdStruct? teamMemberId, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    teamMemberId
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTeamMemberIdStructData(
  Map<String, dynamic> firestoreData,
  TeamMemberIdStruct? teamMemberId,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (teamMemberId == null) {
    return;
  }
  if (teamMemberId.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && teamMemberId.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final teamMemberIdData =
      getTeamMemberIdFirestoreData(teamMemberId, forFieldValue);
  final nestedData =
      teamMemberIdData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = teamMemberId.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTeamMemberIdFirestoreData(
  TeamMemberIdStruct? teamMemberId, [
  bool forFieldValue = false,
]) {
  if (teamMemberId == null) {
    return {};
  }
  final firestoreData = mapToFirestore(teamMemberId.toMap());

  // Add any Firestore field values
  teamMemberId.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTeamMemberIdListFirestoreData(
  List<TeamMemberIdStruct>? teamMemberIds,
) =>
    teamMemberIds?.map((e) => getTeamMemberIdFirestoreData(e, true)).toList() ??
    [];
