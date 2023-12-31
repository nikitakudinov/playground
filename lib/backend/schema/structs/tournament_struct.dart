// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentStruct extends FFFirebaseStruct {
  TournamentStruct({
    int? id,
    String? name,
    String? tag,
    String? logo,
    String? owner,
    String? headerLogo,
    String? country,
    String? flag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _tag = tag,
        _logo = logo,
        _owner = owner,
        _headerLogo = headerLogo,
        _country = country,
        _flag = flag,
        super(firestoreUtilData);

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "Logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;
  bool hasLogo() => _logo != null;

  // "Owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  set owner(String? val) => _owner = val;
  bool hasOwner() => _owner != null;

  // "HeaderLogo" field.
  String? _headerLogo;
  String get headerLogo => _headerLogo ?? '';
  set headerLogo(String? val) => _headerLogo = val;
  bool hasHeaderLogo() => _headerLogo != null;

  // "Country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  // "Flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  set flag(String? val) => _flag = val;
  bool hasFlag() => _flag != null;

  static TournamentStruct fromMap(Map<String, dynamic> data) =>
      TournamentStruct(
        id: castToType<int>(data['Id']),
        name: data['Name'] as String?,
        tag: data['Tag'] as String?,
        logo: data['Logo'] as String?,
        owner: data['Owner'] as String?,
        headerLogo: data['HeaderLogo'] as String?,
        country: data['Country'] as String?,
        flag: data['Flag'] as String?,
      );

  static TournamentStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TournamentStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Name': _name,
        'Tag': _tag,
        'Logo': _logo,
        'Owner': _owner,
        'HeaderLogo': _headerLogo,
        'Country': _country,
        'Flag': _flag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'Logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'Owner': serializeParam(
          _owner,
          ParamType.String,
        ),
        'HeaderLogo': serializeParam(
          _headerLogo,
          ParamType.String,
        ),
        'Country': serializeParam(
          _country,
          ParamType.String,
        ),
        'Flag': serializeParam(
          _flag,
          ParamType.String,
        ),
      }.withoutNulls;

  static TournamentStruct fromSerializableMap(Map<String, dynamic> data) =>
      TournamentStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        tag: deserializeParam(
          data['Tag'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['Logo'],
          ParamType.String,
          false,
        ),
        owner: deserializeParam(
          data['Owner'],
          ParamType.String,
          false,
        ),
        headerLogo: deserializeParam(
          data['HeaderLogo'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['Country'],
          ParamType.String,
          false,
        ),
        flag: deserializeParam(
          data['Flag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TournamentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TournamentStruct &&
        id == other.id &&
        name == other.name &&
        tag == other.tag &&
        logo == other.logo &&
        owner == other.owner &&
        headerLogo == other.headerLogo &&
        country == other.country &&
        flag == other.flag;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, tag, logo, owner, headerLogo, country, flag]);
}

TournamentStruct createTournamentStruct({
  int? id,
  String? name,
  String? tag,
  String? logo,
  String? owner,
  String? headerLogo,
  String? country,
  String? flag,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TournamentStruct(
      id: id,
      name: name,
      tag: tag,
      logo: logo,
      owner: owner,
      headerLogo: headerLogo,
      country: country,
      flag: flag,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TournamentStruct? updateTournamentStruct(
  TournamentStruct? tournament, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tournament
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTournamentStructData(
  Map<String, dynamic> firestoreData,
  TournamentStruct? tournament,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tournament == null) {
    return;
  }
  if (tournament.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tournament.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tournamentData = getTournamentFirestoreData(tournament, forFieldValue);
  final nestedData = tournamentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tournament.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTournamentFirestoreData(
  TournamentStruct? tournament, [
  bool forFieldValue = false,
]) {
  if (tournament == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tournament.toMap());

  // Add any Firestore field values
  tournament.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTournamentListFirestoreData(
  List<TournamentStruct>? tournaments,
) =>
    tournaments?.map((e) => getTournamentFirestoreData(e, true)).toList() ?? [];
