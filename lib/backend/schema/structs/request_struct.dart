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
    int? fromTeam,
    String? toUser,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _type = type,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _fromTeam = fromTeam,
        _toUser = toUser,
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

  // "fromTeam" field.
  int? _fromTeam;
  int get fromTeam => _fromTeam ?? 0;
  set fromTeam(int? val) => _fromTeam = val;
  void incrementFromTeam(int amount) => _fromTeam = fromTeam + amount;
  bool hasFromTeam() => _fromTeam != null;

  // "toUser" field.
  String? _toUser;
  String get toUser => _toUser ?? '';
  set toUser(String? val) => _toUser = val;
  bool hasToUser() => _toUser != null;

  static RequestStruct fromMap(Map<String, dynamic> data) => RequestStruct(
        id: castToType<int>(data['Id']),
        type: data['Type'] as String?,
        createdAt: data['CreatedAt'] as String?,
        updatedAt: data['UpdatedAt'] as String?,
        fromTeam: castToType<int>(data['fromTeam']),
        toUser: data['toUser'] as String?,
      );

  static RequestStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RequestStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Type': _type,
        'CreatedAt': _createdAt,
        'UpdatedAt': _updatedAt,
        'fromTeam': _fromTeam,
        'toUser': _toUser,
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
        'fromTeam': serializeParam(
          _fromTeam,
          ParamType.int,
        ),
        'toUser': serializeParam(
          _toUser,
          ParamType.String,
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
        fromTeam: deserializeParam(
          data['fromTeam'],
          ParamType.int,
          false,
        ),
        toUser: deserializeParam(
          data['toUser'],
          ParamType.String,
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
        fromTeam == other.fromTeam &&
        toUser == other.toUser;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, type, createdAt, updatedAt, fromTeam, toUser]);
}

RequestStruct createRequestStruct({
  int? id,
  String? type,
  String? createdAt,
  String? updatedAt,
  int? fromTeam,
  String? toUser,
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
      fromTeam: fromTeam,
      toUser: toUser,
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
