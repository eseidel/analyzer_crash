import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-seat-details_assigning_team.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/enterprise-team.dart';
import 'package:github/model/copilot-seat-details_assigning_team.dart';
import 'package:github/model/team.dart';
import 'package:github/model/team_permissions.dart';
import 'package:github/model/nullable-team-simple.dart';
import 'package:github/model/enterprise-team.dart';

sealed class Copilot-seat-detailsAssigningTeam {
    static Copilot-seat-detailsAssigningTeam fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Copilot-seat-detailsAssigningTeam.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-seat-detailsAssigningTeam? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Copilot-seat-detailsAssigningTeam.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
