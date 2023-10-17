import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future updateAppStateAuthUser(BuildContext context) async {
  ApiCallResponse? apiResultnzr;

  apiResultnzr = await GetdataGroup.datalistCall.call(
    contentType: 'User',
    fields:
        'Id,Nickname,CreatedAt,UpdatedAt,Tag,Country,Flag,FBUserId,Avatar,TeamRole,LineUp',
    field1: 'FBUserId',
    field2: currentUserUid,
  );
  if ((apiResultnzr?.succeeded ?? true)) {
    FFAppState().update(() {
      FFAppState().updateAuthenticatedUserStruct(
        (e) => e
          ..id = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].Id''',
          )
          ..nickname = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].Nickname''',
          ).toString().toString()
          ..fBUserId = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].FBUserId''',
          ).toString().toString()
          ..tag = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].Tag''',
          ).toString().toString()
          ..teamRole = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].TeamRole''',
          ).toString().toString()
          ..lineUp = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].LineUp''',
          ).toString().toString()
          ..avatar = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].Avatar''',
          )
          ..country = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].Country''',
          ).toString().toString()
          ..flag = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].Flag''',
          ),
      );
    });
  }
}

Future loadCountriesToAppState(BuildContext context) async {
  ApiCallResponse? jsonCountryList;
  List<CountrieStruct>? countrieData;

  jsonCountryList = await GetdataGroup.datalistCall.call(
    contentType: 'Country',
    fields: 'RuName,FlagLinkH24',
  );
  if ((jsonCountryList?.succeeded ?? true)) {
    countrieData = await actions.jsonToDataTypeCountrie(
      getJsonField(
        (jsonCountryList?.jsonBody ?? ''),
        r'''$.list''',
        true,
      ),
    );
    FFAppState().update(() {
      FFAppState().countries = countrieData!.toList().cast<CountrieStruct>();
    });
  }
}

Future loadTournamentsToAppState(BuildContext context) async {
  ApiCallResponse? jsonTournamentListData;
  List<TournamentStruct>? tournamentData;

  jsonTournamentListData = await GetdataGroup.datalistCall.call(
    contentType: 'Tournament',
    fields: 'Id,Name,Tag,Logo,Country,Flag',
  );
  if ((jsonTournamentListData?.succeeded ?? true)) {
    tournamentData = await actions.jsonToDataTypeTournament(
      getJsonField(
        (jsonTournamentListData?.jsonBody ?? ''),
        r'''$.list''',
        true,
      ),
    );
    FFAppState().update(() {
      FFAppState().tournaments =
          tournamentData!.toList().cast<TournamentStruct>();
    });
  }
}

Future loadOrganizators(
  BuildContext context, {
  required int? tournamentId,
}) async {
  ApiCallResponse? jsonOrganizatorsDataList;
  List<UserStruct>? organizatorData;

  jsonOrganizatorsDataList = await RelationGroup.letationslistCall.call(
    contentType: 'Tournament',
    contentId: tournamentId,
    relationField: 'OrganizatorsCount',
  );
  if ((jsonOrganizatorsDataList?.succeeded ?? true)) {
    organizatorData = await actions.jsonToDataTypeUser(
      getJsonField(
        (jsonOrganizatorsDataList?.jsonBody ?? ''),
        r'''$.list''',
        true,
      ),
    );
    FFAppState().update(() {
      FFAppState().TournamentOrganizators =
          organizatorData!.toList().cast<UserStruct>();
    });
  }
}

Future loadTournamentMembers(
  BuildContext context, {
  int? tournamentId,
}) async {
  ApiCallResponse? jsonMembersDataList;
  List<TeamStruct>? membersData;

  jsonMembersDataList = await RelationGroup.letationslistCall.call(
    contentType: 'Tournament',
    contentId: tournamentId,
    relationField: 'MembersCount',
  );
  if ((jsonMembersDataList?.succeeded ?? true)) {
    membersData = await actions.jsonToDataTypeTeam(
      getJsonField(
        (jsonMembersDataList?.jsonBody ?? ''),
        r'''$.list''',
        true,
      ),
    );
    FFAppState().update(() {
      FFAppState().tournamentMembers = membersData!.toList().cast<TeamStruct>();
    });
  }
}

Future loadTeams(BuildContext context) async {}

Future creatTournament(
  BuildContext context, {
  String? name,
  String? tag,
  String? country,
  String? flag,
  String? logo,
}) async {
  ApiCallResponse? apiResult0ll;

  apiResult0ll = await CreatdataGroup.creattournamentCall.call(
    name: name,
    tag: tag,
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    country: country,
    flag: flag,
    logo: logo,
    creatorFBUserId: FFAppState().AuthenticatedUser.fBUserId,
  );
  if ((apiResult0ll?.succeeded ?? true)) {
    context.pushNamed('LIST_TOURNAMENT');
  }
}

Future loadTournament(
  BuildContext context, {
  int? id,
}) async {
  ApiCallResponse? apiResulttyn;

  apiResulttyn = await GetdataGroup.datalistCall.call(
    contentType: 'Tournament',
    field1: 'Id',
    field2: id?.toString(),
  );
  if ((apiResulttyn?.succeeded ?? true)) {
    FFAppState().update(() {
      FFAppState().updateTournamentStruct(
        (e) => e
          ..id = getJsonField(
            (apiResulttyn?.jsonBody ?? ''),
            r'''$.list[:].Id''',
          )
          ..name = getJsonField(
            (apiResulttyn?.jsonBody ?? ''),
            r'''$.list[:].Name''',
          ).toString().toString()
          ..tag = getJsonField(
            (apiResulttyn?.jsonBody ?? ''),
            r'''$.list[:].Tag''',
          ).toString().toString()
          ..logo = getJsonField(
            (apiResulttyn?.jsonBody ?? ''),
            r'''$.list[:].Logo''',
          )
          ..owner = getJsonField(
            (apiResulttyn?.jsonBody ?? ''),
            r'''$.list[:].Owner''',
          ).toString().toString()
          ..headerLogo = getJsonField(
            (apiResulttyn?.jsonBody ?? ''),
            r'''$.list[:].HeaderLogo''',
          )
          ..country = getJsonField(
            (apiResulttyn?.jsonBody ?? ''),
            r'''$.list[:].Country''',
          ).toString().toString()
          ..flag = getJsonField(
            (apiResulttyn?.jsonBody ?? ''),
            r'''$.list[:].Flag''',
          ),
      );
    });
  }
}

Future loadMatches(
  BuildContext context, {
  int? tournamentId,
}) async {
  ApiCallResponse? apiResulta4h;
  List<MatchStruct>? matchesData;

  apiResulta4h = await GetdataGroup.datalistCall.call(
    contentType: 'Match',
    field1: 'TournamentId',
    field2: tournamentId?.toString(),
  );
  if ((apiResulta4h?.succeeded ?? true)) {
    matchesData = await actions.jsonToDataTypeMatch(
      getJsonField(
        (apiResulta4h?.jsonBody ?? ''),
        r'''$.list''',
        true,
      ),
    );
    FFAppState().update(() {
      FFAppState().matches = matchesData!.toList().cast<MatchStruct>();
    });
  }
}

Future creatTournamentMatchGrid16(
  BuildContext context, {
  int? tournamentId,
}) async {
  ApiCallResponse? match1;
  ApiCallResponse? match2;
  ApiCallResponse? match3;
  ApiCallResponse? match4;
  ApiCallResponse? match5;
  ApiCallResponse? match6;
  ApiCallResponse? match7;
  ApiCallResponse? match8;
  ApiCallResponse? match9;
  ApiCallResponse? match10;
  ApiCallResponse? match11;
  ApiCallResponse? match12;
  ApiCallResponse? match13;
  ApiCallResponse? match14;
  ApiCallResponse? match15;

  match1 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 1,
    pair: 1,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match2 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 1,
    pair: 2,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match3 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 1,
    pair: 3,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match4 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 1,
    pair: 4,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match5 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 1,
    pair: 5,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match6 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 1,
    pair: 6,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match7 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 1,
    pair: 7,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match8 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 1,
    pair: 8,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match9 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 2,
    pair: 1,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match10 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 2,
    pair: 2,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match11 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 2,
    pair: 3,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match12 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 2,
    pair: 4,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match13 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 3,
    pair: 1,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match14 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 3,
    pair: 2,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
  match15 = await CreatdataGroup.creatmatchCall.call(
    status: 'Добавлен в сетку',
    createdAt: getCurrentTimestamp.toString(),
    updatedAt: getCurrentTimestamp.toString(),
    round: 4,
    pair: 1,
    tournamentId: tournamentId,
    rival1Name: 'Не определен',
    rival2Name: 'Не определен',
  );
}
