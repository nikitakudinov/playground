// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountrieStruct extends FFFirebaseStruct {
  CountrieStruct({
    String? ruName,
    String? flagLink48x36,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ruName = ruName,
        _flagLink48x36 = flagLink48x36,
        super(firestoreUtilData);

  // "RuName" field.
  String? _ruName;
  String get ruName => _ruName ?? '';
  set ruName(String? val) => _ruName = val;
  bool hasRuName() => _ruName != null;

  // "FlagLink48x36" field.
  String? _flagLink48x36;
  String get flagLink48x36 => _flagLink48x36 ?? '';
  set flagLink48x36(String? val) => _flagLink48x36 = val;
  bool hasFlagLink48x36() => _flagLink48x36 != null;

  static CountrieStruct fromMap(Map<String, dynamic> data) => CountrieStruct(
        ruName: data['RuName'] as String?,
        flagLink48x36: data['FlagLink48x36'] as String?,
      );

  static CountrieStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CountrieStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'RuName': _ruName,
        'FlagLink48x36': _flagLink48x36,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'RuName': serializeParam(
          _ruName,
          ParamType.String,
        ),
        'FlagLink48x36': serializeParam(
          _flagLink48x36,
          ParamType.String,
        ),
      }.withoutNulls;

  static CountrieStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountrieStruct(
        ruName: deserializeParam(
          data['RuName'],
          ParamType.String,
          false,
        ),
        flagLink48x36: deserializeParam(
          data['FlagLink48x36'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CountrieStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountrieStruct &&
        ruName == other.ruName &&
        flagLink48x36 == other.flagLink48x36;
  }

  @override
  int get hashCode => const ListEquality().hash([ruName, flagLink48x36]);
}

CountrieStruct createCountrieStruct({
  String? ruName,
  String? flagLink48x36,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CountrieStruct(
      ruName: ruName,
      flagLink48x36: flagLink48x36,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CountrieStruct? updateCountrieStruct(
  CountrieStruct? countrie, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    countrie
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCountrieStructData(
  Map<String, dynamic> firestoreData,
  CountrieStruct? countrie,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (countrie == null) {
    return;
  }
  if (countrie.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && countrie.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final countrieData = getCountrieFirestoreData(countrie, forFieldValue);
  final nestedData = countrieData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = countrie.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCountrieFirestoreData(
  CountrieStruct? countrie, [
  bool forFieldValue = false,
]) {
  if (countrie == null) {
    return {};
  }
  final firestoreData = mapToFirestore(countrie.toMap());

  // Add any Firestore field values
  countrie.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCountrieListFirestoreData(
  List<CountrieStruct>? countries,
) =>
    countries?.map((e) => getCountrieFirestoreData(e, true)).toList() ?? [];
