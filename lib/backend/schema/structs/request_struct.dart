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
    List<String>? fromTeamTag,
    List<String>? fromTeamName,
    List<String>? fromTeamLogo,
    List<String>? fromTeamCountry,
    List<String>? fromTeamFlag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _type = type,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _toUserRAW = toUserRAW,
        _fromTeamIdRAW = fromTeamIdRAW,
        _fromTeamTag = fromTeamTag,
        _fromTeamName = fromTeamName,
        _fromTeamLogo = fromTeamLogo,
        _fromTeamCountry = fromTeamCountry,
        _fromTeamFlag = fromTeamFlag,
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

  // "FromTeamTag" field.
  List<String>? _fromTeamTag;
  List<String> get fromTeamTag => _fromTeamTag ?? const [];
  set fromTeamTag(List<String>? val) => _fromTeamTag = val;
  void updateFromTeamTag(Function(List<String>) updateFn) =>
      updateFn(_fromTeamTag ??= []);
  bool hasFromTeamTag() => _fromTeamTag != null;

  // "FromTeamName" field.
  List<String>? _fromTeamName;
  List<String> get fromTeamName => _fromTeamName ?? const [];
  set fromTeamName(List<String>? val) => _fromTeamName = val;
  void updateFromTeamName(Function(List<String>) updateFn) =>
      updateFn(_fromTeamName ??= []);
  bool hasFromTeamName() => _fromTeamName != null;

  // "FromTeamLogo" field.
  List<String>? _fromTeamLogo;
  List<String> get fromTeamLogo => _fromTeamLogo ?? const [];
  set fromTeamLogo(List<String>? val) => _fromTeamLogo = val;
  void updateFromTeamLogo(Function(List<String>) updateFn) =>
      updateFn(_fromTeamLogo ??= []);
  bool hasFromTeamLogo() => _fromTeamLogo != null;

  // "FromTeamCountry" field.
  List<String>? _fromTeamCountry;
  List<String> get fromTeamCountry => _fromTeamCountry ?? const [];
  set fromTeamCountry(List<String>? val) => _fromTeamCountry = val;
  void updateFromTeamCountry(Function(List<String>) updateFn) =>
      updateFn(_fromTeamCountry ??= []);
  bool hasFromTeamCountry() => _fromTeamCountry != null;

  // "FromTeamFlag" field.
  List<String>? _fromTeamFlag;
  List<String> get fromTeamFlag => _fromTeamFlag ?? const [];
  set fromTeamFlag(List<String>? val) => _fromTeamFlag = val;
  void updateFromTeamFlag(Function(List<String>) updateFn) =>
      updateFn(_fromTeamFlag ??= []);
  bool hasFromTeamFlag() => _fromTeamFlag != null;

  static RequestStruct fromMap(Map<String, dynamic> data) => RequestStruct(
        id: castToType<int>(data['Id']),
        type: data['Type'] as String?,
        createdAt: data['CreatedAt'] as String?,
        updatedAt: data['UpdatedAt'] as String?,
        toUserRAW: getDataList(data['ToUserRAW']),
        fromTeamIdRAW: castToType<int>(data['FromTeamIdRAW']),
        fromTeamTag: getDataList(data['FromTeamTag']),
        fromTeamName: getDataList(data['FromTeamName']),
        fromTeamLogo: getDataList(data['FromTeamLogo']),
        fromTeamCountry: getDataList(data['FromTeamCountry']),
        fromTeamFlag: getDataList(data['FromTeamFlag']),
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
        'FromTeamTag': _fromTeamTag,
        'FromTeamName': _fromTeamName,
        'FromTeamLogo': _fromTeamLogo,
        'FromTeamCountry': _fromTeamCountry,
        'FromTeamFlag': _fromTeamFlag,
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
        'FromTeamTag': serializeParam(
          _fromTeamTag,
          ParamType.String,
          true,
        ),
        'FromTeamName': serializeParam(
          _fromTeamName,
          ParamType.String,
          true,
        ),
        'FromTeamLogo': serializeParam(
          _fromTeamLogo,
          ParamType.String,
          true,
        ),
        'FromTeamCountry': serializeParam(
          _fromTeamCountry,
          ParamType.String,
          true,
        ),
        'FromTeamFlag': serializeParam(
          _fromTeamFlag,
          ParamType.String,
          true,
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
        fromTeamTag: deserializeParam<String>(
          data['FromTeamTag'],
          ParamType.String,
          true,
        ),
        fromTeamName: deserializeParam<String>(
          data['FromTeamName'],
          ParamType.String,
          true,
        ),
        fromTeamLogo: deserializeParam<String>(
          data['FromTeamLogo'],
          ParamType.String,
          true,
        ),
        fromTeamCountry: deserializeParam<String>(
          data['FromTeamCountry'],
          ParamType.String,
          true,
        ),
        fromTeamFlag: deserializeParam<String>(
          data['FromTeamFlag'],
          ParamType.String,
          true,
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
        fromTeamIdRAW == other.fromTeamIdRAW &&
        listEquality.equals(fromTeamTag, other.fromTeamTag) &&
        listEquality.equals(fromTeamName, other.fromTeamName) &&
        listEquality.equals(fromTeamLogo, other.fromTeamLogo) &&
        listEquality.equals(fromTeamCountry, other.fromTeamCountry) &&
        listEquality.equals(fromTeamFlag, other.fromTeamFlag);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        type,
        createdAt,
        updatedAt,
        toUserRAW,
        fromTeamIdRAW,
        fromTeamTag,
        fromTeamName,
        fromTeamLogo,
        fromTeamCountry,
        fromTeamFlag
      ]);
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
