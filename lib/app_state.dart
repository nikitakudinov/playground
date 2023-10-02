import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<TeamStruct> _teams = [];
  List<TeamStruct> get teams => _teams;
  set teams(List<TeamStruct> _value) {
    _teams = _value;
  }

  void addToTeams(TeamStruct _value) {
    _teams.add(_value);
  }

  void removeFromTeams(TeamStruct _value) {
    _teams.remove(_value);
  }

  void removeAtIndexFromTeams(int _index) {
    _teams.removeAt(_index);
  }

  void updateTeamsAtIndex(
    int _index,
    TeamStruct Function(TeamStruct) updateFn,
  ) {
    _teams[_index] = updateFn(_teams[_index]);
  }

  void insertAtIndexInTeams(int _index, TeamStruct _value) {
    _teams.insert(_index, _value);
  }

  TeamStruct _Team = TeamStruct();
  TeamStruct get Team => _Team;
  set Team(TeamStruct _value) {
    _Team = _value;
  }

  void updateTeamStruct(Function(TeamStruct) updateFn) {
    updateFn(_Team);
  }

  List<TournamentStruct> _tournaments = [];
  List<TournamentStruct> get tournaments => _tournaments;
  set tournaments(List<TournamentStruct> _value) {
    _tournaments = _value;
  }

  void addToTournaments(TournamentStruct _value) {
    _tournaments.add(_value);
  }

  void removeFromTournaments(TournamentStruct _value) {
    _tournaments.remove(_value);
  }

  void removeAtIndexFromTournaments(int _index) {
    _tournaments.removeAt(_index);
  }

  void updateTournamentsAtIndex(
    int _index,
    TournamentStruct Function(TournamentStruct) updateFn,
  ) {
    _tournaments[_index] = updateFn(_tournaments[_index]);
  }

  void insertAtIndexInTournaments(int _index, TournamentStruct _value) {
    _tournaments.insert(_index, _value);
  }

  List<CountrieStruct> _countries = [];
  List<CountrieStruct> get countries => _countries;
  set countries(List<CountrieStruct> _value) {
    _countries = _value;
  }

  void addToCountries(CountrieStruct _value) {
    _countries.add(_value);
  }

  void removeFromCountries(CountrieStruct _value) {
    _countries.remove(_value);
  }

  void removeAtIndexFromCountries(int _index) {
    _countries.removeAt(_index);
  }

  void updateCountriesAtIndex(
    int _index,
    CountrieStruct Function(CountrieStruct) updateFn,
  ) {
    _countries[_index] = updateFn(_countries[_index]);
  }

  void insertAtIndexInCountries(int _index, CountrieStruct _value) {
    _countries.insert(_index, _value);
  }

  List<TeamMemberStruct> _teamMembers = [];
  List<TeamMemberStruct> get teamMembers => _teamMembers;
  set teamMembers(List<TeamMemberStruct> _value) {
    _teamMembers = _value;
  }

  void addToTeamMembers(TeamMemberStruct _value) {
    _teamMembers.add(_value);
  }

  void removeFromTeamMembers(TeamMemberStruct _value) {
    _teamMembers.remove(_value);
  }

  void removeAtIndexFromTeamMembers(int _index) {
    _teamMembers.removeAt(_index);
  }

  void updateTeamMembersAtIndex(
    int _index,
    TeamMemberStruct Function(TeamMemberStruct) updateFn,
  ) {
    _teamMembers[_index] = updateFn(_teamMembers[_index]);
  }

  void insertAtIndexInTeamMembers(int _index, TeamMemberStruct _value) {
    _teamMembers.insert(_index, _value);
  }

  List<TeamMemberIdStruct> _teamMemberIds = [];
  List<TeamMemberIdStruct> get teamMemberIds => _teamMemberIds;
  set teamMemberIds(List<TeamMemberIdStruct> _value) {
    _teamMemberIds = _value;
  }

  void addToTeamMemberIds(TeamMemberIdStruct _value) {
    _teamMemberIds.add(_value);
  }

  void removeFromTeamMemberIds(TeamMemberIdStruct _value) {
    _teamMemberIds.remove(_value);
  }

  void removeAtIndexFromTeamMemberIds(int _index) {
    _teamMemberIds.removeAt(_index);
  }

  void updateTeamMemberIdsAtIndex(
    int _index,
    TeamMemberIdStruct Function(TeamMemberIdStruct) updateFn,
  ) {
    _teamMemberIds[_index] = updateFn(_teamMemberIds[_index]);
  }

  void insertAtIndexInTeamMemberIds(int _index, TeamMemberIdStruct _value) {
    _teamMemberIds.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
