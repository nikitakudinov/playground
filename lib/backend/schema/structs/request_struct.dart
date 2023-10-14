// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestStruct extends FFFirebaseStruct {
  RequestStruct({
    int? id,
    String? type,
    String? createdAt,
    String? updatedAt,
    List<String>? toUserRAW,
    int? fromTeamIdRAW,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _type = type,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _toUserRAW = toUserRAW,
        _fromTeamIdRAW = fromTeamIdRAW,
        super(firestoreUtilData);

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

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

  // "ToUserRAW" field.
  List<String>? _toUserRAW;
  List<String> get toUserRAW => _toUserRAW ?? const [];
  set toUserRAW(List<String>? val) => _toUserRAW = val;
  void updateToUserRAW(Function(List<String>) updateFn) =>
      updateFn(_toUserRAW ??= []);
  bool hasToUserRAW() => _toUserRAW != null;

  // "FromTeamIdRAW" field.
  int? _fromTeamIdRAW;
  int get fromTeamIdRAW => _fromTeamIdRAW ?? 0;
  set fromTeamIdRAW(int? val) => _fromTeamIdRAW = val;
  void incrementFromTeamIdRAW(int amount) =>
      _fromTeamIdRAW = fromTeamIdRAW + amount;
  bool hasFromTeamIdRAW() => _fromTeamIdRAW != null;

  static RequestStruct fromMap(Map<String, dynamic> data) => RequestStruct(
        id: castToType<int>(data['Id']),
        type: data['Type'] as String?,
        createdAt: data['CreatedAt'] as String?,
        updatedAt: data['UpdatedAt'] as String?,
        toUserRAW: getDataList(data['ToUserRAW']),
        fromTeamIdRAW: castToType<int>(data['FromTeamIdRAW']),
      );

  static RequestStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RequestStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Type': _type,
        'CreatedAt': _createdAt,
        'UpdatedAt': _updatedAt,
        'ToUserRAW': _toUserRAW,
        'FromTeamIdRAW': _fromTeamIdRAW,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'Type': serializeParam(
          _type,
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
        'ToUserRAW': serializeParam(
          _toUserRAW,
          ParamType.String,
          true,
        ),
        'FromTeamIdRAW': serializeParam(
          _fromTeamIdRAW,
          ParamType.int,
        ),
      }.withoutNulls;

  static RequestStruct fromSerializableMap(Map<String, dynamic> data) =>
      RequestStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['Type'],
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
        toUserRAW: deserializeParam<String>(
          data['ToUserRAW'],
          ParamType.String,
          true,
        ),
        fromTeamIdRAW: deserializeParam(
          data['FromTeamIdRAW'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RequestStruct &&
        id == other.id &&
        type == other.type &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        listEquality.equals(toUserRAW, other.toUserRAW) &&
        fromTeamIdRAW == other.fromTeamIdRAW;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, type, createdAt, updatedAt, toUserRAW, fromTeamIdRAW]);
}

RequestStruct createRequestStruct({
  int? id,
  String? type,
  String? createdAt,
  String? updatedAt,
  int? fromTeamIdRAW,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RequestStruct(
      id: id,
      type: type,
      createdAt: createdAt,
      updatedAt: updatedAt,
      fromTeamIdRAW: fromTeamIdRAW,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RequestStruct? updateRequestStruct(
  RequestStruct? request, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    request
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRequestStructData(
  Map<String, dynamic> firestoreData,
  RequestStruct? request,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (request == null) {
    return;
  }
  if (request.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && request.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final requestData = getRequestFirestoreData(request, forFieldValue);
  final nestedData = requestData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = request.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRequestFirestoreData(
  RequestStruct? request, [
  bool forFieldValue = false,
]) {
  if (request == null) {
    return {};
  }
  final firestoreData = mapToFirestore(request.toMap());

  // Add any Firestore field values
  request.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRequestListFirestoreData(
  List<RequestStruct>? requests,
) =>
    requests?.map((e) => getRequestFirestoreData(e, true)).toList() ?? [];
