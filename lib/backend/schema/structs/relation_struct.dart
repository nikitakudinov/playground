// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RelationStruct extends FFFirebaseStruct {
  RelationStruct({
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

  static RelationStruct fromMap(Map<String, dynamic> data) => RelationStruct(
        table2Id: castToType<int>(data['table2_id']),
        table1Id: castToType<int>(data['table1_id']),
      );

  static RelationStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RelationStruct.fromMap(data) : null;

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

  static RelationStruct fromSerializableMap(Map<String, dynamic> data) =>
      RelationStruct(
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
  String toString() => 'RelationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RelationStruct &&
        table2Id == other.table2Id &&
        table1Id == other.table1Id;
  }

  @override
  int get hashCode => const ListEquality().hash([table2Id, table1Id]);
}

RelationStruct createRelationStruct({
  int? table2Id,
  int? table1Id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RelationStruct(
      table2Id: table2Id,
      table1Id: table1Id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RelationStruct? updateRelationStruct(
  RelationStruct? relation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    relation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRelationStructData(
  Map<String, dynamic> firestoreData,
  RelationStruct? relation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (relation == null) {
    return;
  }
  if (relation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && relation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final relationData = getRelationFirestoreData(relation, forFieldValue);
  final nestedData = relationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = relation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRelationFirestoreData(
  RelationStruct? relation, [
  bool forFieldValue = false,
]) {
  if (relation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(relation.toMap());

  // Add any Firestore field values
  relation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRelationListFirestoreData(
  List<RelationStruct>? relations,
) =>
    relations?.map((e) => getRelationFirestoreData(e, true)).toList() ?? [];
