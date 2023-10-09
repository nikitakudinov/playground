// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountrieStruct extends FFFirebaseStruct {
  CountrieStruct({
    String? ruName,
    String? flagLinkH24,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ruName = ruName,
        _flagLinkH24 = flagLinkH24,
        super(firestoreUtilData);

  // "RuName" field.
  String? _ruName;
  String get ruName => _ruName ?? '';
  set ruName(String? val) => _ruName = val;
  bool hasRuName() => _ruName != null;

  // "FlagLinkH24" field.
  String? _flagLinkH24;
  String get flagLinkH24 => _flagLinkH24 ?? '';
  set flagLinkH24(String? val) => _flagLinkH24 = val;
  bool hasFlagLinkH24() => _flagLinkH24 != null;

  static CountrieStruct fromMap(Map<String, dynamic> data) => CountrieStruct(
        ruName: data['RuName'] as String?,
        flagLinkH24: data['FlagLinkH24'] as String?,
      );

  static CountrieStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CountrieStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'RuName': _ruName,
        'FlagLinkH24': _flagLinkH24,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'RuName': serializeParam(
          _ruName,
          ParamType.String,
        ),
        'FlagLinkH24': serializeParam(
          _flagLinkH24,
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
        flagLinkH24: deserializeParam(
          data['FlagLinkH24'],
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
        flagLinkH24 == other.flagLinkH24;
  }

  @override
  int get hashCode => const ListEquality().hash([ruName, flagLinkH24]);
}

CountrieStruct createCountrieStruct({
  String? ruName,
  String? flagLinkH24,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CountrieStruct(
      ruName: ruName,
      flagLinkH24: flagLinkH24,
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
