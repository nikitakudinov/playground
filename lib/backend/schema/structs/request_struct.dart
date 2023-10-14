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
    int? fromTeamId,
    int? toUserId,
    int? creatorId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _type = type,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _fromTeamId = fromTeamId,
        _toUserId = toUserId,
        _creatorId = creatorId,
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

  // "FromTeamId" field.
  int? _fromTeamId;
  int get fromTeamId => _fromTeamId ?? 0;
  set fromTeamId(int? val) => _fromTeamId = val;
  void incrementFromTeamId(int amount) => _fromTeamId = fromTeamId + amount;
  bool hasFromTeamId() => _fromTeamId != null;

  // "ToUserId" field.
  int? _toUserId;
  int get toUserId => _toUserId ?? 0;
  set toUserId(int? val) => _toUserId = val;
  void incrementToUserId(int amount) => _toUserId = toUserId + amount;
  bool hasToUserId() => _toUserId != null;

  // "CreatorId" field.
  int? _creatorId;
  int get creatorId => _creatorId ?? 0;
  set creatorId(int? val) => _creatorId = val;
  void incrementCreatorId(int amount) => _creatorId = creatorId + amount;
  bool hasCreatorId() => _creatorId != null;

  static RequestStruct fromMap(Map<String, dynamic> data) => RequestStruct(
        id: castToType<int>(data['Id']),
        type: data['Type'] as String?,
        createdAt: data['CreatedAt'] as String?,
        updatedAt: data['UpdatedAt'] as String?,
        fromTeamId: castToType<int>(data['FromTeamId']),
        toUserId: castToType<int>(data['ToUserId']),
        creatorId: castToType<int>(data['CreatorId']),
      );

  static RequestStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RequestStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Type': _type,
        'CreatedAt': _createdAt,
        'UpdatedAt': _updatedAt,
        'FromTeamId': _fromTeamId,
        'ToUserId': _toUserId,
        'CreatorId': _creatorId,
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
        'FromTeamId': serializeParam(
          _fromTeamId,
          ParamType.int,
        ),
        'ToUserId': serializeParam(
          _toUserId,
          ParamType.int,
        ),
        'CreatorId': serializeParam(
          _creatorId,
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
        fromTeamId: deserializeParam(
          data['FromTeamId'],
          ParamType.int,
          false,
        ),
        toUserId: deserializeParam(
          data['ToUserId'],
          ParamType.int,
          false,
        ),
        creatorId: deserializeParam(
          data['CreatorId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RequestStruct &&
        id == other.id &&
        type == other.type &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        fromTeamId == other.fromTeamId &&
        toUserId == other.toUserId &&
        creatorId == other.creatorId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, type, createdAt, updatedAt, fromTeamId, toUserId, creatorId]);
}

RequestStruct createRequestStruct({
  int? id,
  String? type,
  String? createdAt,
  String? updatedAt,
  int? fromTeamId,
  int? toUserId,
  int? creatorId,
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
      fromTeamId: fromTeamId,
      toUserId: toUserId,
      creatorId: creatorId,
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
