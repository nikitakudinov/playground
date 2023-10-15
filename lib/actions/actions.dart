import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future updateAppStateAuthUser(BuildContext context) async {
  ApiCallResponse? apiResultnzr;

  apiResultnzr = await GetdataGroup.datalistCall.call(
    contentType: 'User',
    fields: 'Id,Nickname,CreatedAt,UpdatedAt,Tag,Country,Flag,FBUserId,Avatar',
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
          ).toString().toString(),
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
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('1'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}

Future loadOrganizators(
  BuildContext context, {
  required int? tournamentId,
}) async {
  ApiCallResponse? jsonOrganizatorsDataList;
  List<OrganizatorStruct>? organizatorData;

  jsonOrganizatorsDataList = await RelationGroup.letationslistCall.call(
    contentType: 'Tournament',
    contentId: tournamentId,
    relationField: 'OrganizatorsCount',
  );
  if ((jsonOrganizatorsDataList?.succeeded ?? true)) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('1'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    organizatorData = await actions.jsonToDataTypeOrganizator(
      getJsonField(
        (jsonOrganizatorsDataList?.jsonBody ?? ''),
        r'''$.list''',
        true,
      ),
    );
    FFAppState().update(() {
      FFAppState().Organizators =
          organizatorData!.toList().cast<OrganizatorStruct>();
    });
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('11'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
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
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('1'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    membersData = await actions.jsonToDataTypeTeam(
      getJsonField(
        (jsonMembersDataList?.jsonBody ?? ''),
        r'''$.list''',
        true,
      ),
    );
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('11'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    FFAppState().update(() {
      FFAppState().tournamentMembers = membersData!.toList().cast<TeamStruct>();
    });
  }
}

Future loadTeams(BuildContext context) async {}
