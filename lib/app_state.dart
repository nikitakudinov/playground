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

  List<RequestStruct> _requests = [];
  List<RequestStruct> get requests => _requests;
  set requests(List<RequestStruct> _value) {
    _requests = _value;
  }

  void addToRequests(RequestStruct _value) {
    _requests.add(_value);
  }

  void removeFromRequests(RequestStruct _value) {
    _requests.remove(_value);
  }

  void removeAtIndexFromRequests(int _index) {
    _requests.removeAt(_index);
  }

  void updateRequestsAtIndex(
    int _index,
    RequestStruct Function(RequestStruct) updateFn,
  ) {
    _requests[_index] = updateFn(_requests[_index]);
  }

  void insertAtIndexInRequests(int _index, RequestStruct _value) {
    _requests.insert(_index, _value);
  }

  AuthenticatedUserStruct _AuthenticatedUser = AuthenticatedUserStruct();
  AuthenticatedUserStruct get AuthenticatedUser => _AuthenticatedUser;
  set AuthenticatedUser(AuthenticatedUserStruct _value) {
    _AuthenticatedUser = _value;
  }

  void updateAuthenticatedUserStruct(
      Function(AuthenticatedUserStruct) updateFn) {
    updateFn(_AuthenticatedUser);
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

  List<TeamStruct> _tournamentMembers = [];
  List<TeamStruct> get tournamentMembers => _tournamentMembers;
  set tournamentMembers(List<TeamStruct> _value) {
    _tournamentMembers = _value;
  }

  void addToTournamentMembers(TeamStruct _value) {
    _tournamentMembers.add(_value);
  }

  void removeFromTournamentMembers(TeamStruct _value) {
    _tournamentMembers.remove(_value);
  }

  void removeAtIndexFromTournamentMembers(int _index) {
    _tournamentMembers.removeAt(_index);
  }

  void updateTournamentMembersAtIndex(
    int _index,
    TeamStruct Function(TeamStruct) updateFn,
  ) {
    _tournamentMembers[_index] = updateFn(_tournamentMembers[_index]);
  }

  void insertAtIndexInTournamentMembers(int _index, TeamStruct _value) {
    _tournamentMembers.insert(_index, _value);
  }

  List<UserStruct> _teamMembers = [];
  List<UserStruct> get teamMembers => _teamMembers;
  set teamMembers(List<UserStruct> _value) {
    _teamMembers = _value;
  }

  void addToTeamMembers(UserStruct _value) {
    _teamMembers.add(_value);
  }

  void removeFromTeamMembers(UserStruct _value) {
    _teamMembers.remove(_value);
  }

  void removeAtIndexFromTeamMembers(int _index) {
    _teamMembers.removeAt(_index);
  }

  void updateTeamMembersAtIndex(
    int _index,
    UserStruct Function(UserStruct) updateFn,
  ) {
    _teamMembers[_index] = updateFn(_teamMembers[_index]);
  }

  void insertAtIndexInTeamMembers(int _index, UserStruct _value) {
    _teamMembers.insert(_index, _value);
  }

  TournamentStruct _tournament = TournamentStruct();
  TournamentStruct get tournament => _tournament;
  set tournament(TournamentStruct _value) {
    _tournament = _value;
  }

  void updateTournamentStruct(Function(TournamentStruct) updateFn) {
    updateFn(_tournament);
  }

  List<UserStruct> _TournamentOrganizators = [];
  List<UserStruct> get TournamentOrganizators => _TournamentOrganizators;
  set TournamentOrganizators(List<UserStruct> _value) {
    _TournamentOrganizators = _value;
  }

  void addToTournamentOrganizators(UserStruct _value) {
    _TournamentOrganizators.add(_value);
  }

  void removeFromTournamentOrganizators(UserStruct _value) {
    _TournamentOrganizators.remove(_value);
  }

  void removeAtIndexFromTournamentOrganizators(int _index) {
    _TournamentOrganizators.removeAt(_index);
  }

  void updateTournamentOrganizatorsAtIndex(
    int _index,
    UserStruct Function(UserStruct) updateFn,
  ) {
    _TournamentOrganizators[_index] = updateFn(_TournamentOrganizators[_index]);
  }

  void insertAtIndexInTournamentOrganizators(int _index, UserStruct _value) {
    _TournamentOrganizators.insert(_index, _value);
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
