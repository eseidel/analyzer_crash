import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/activity/mark_repo_notifications_as_read_response.dart';
import 'package:github/model/activity/mark_repo_notifications_as_read202_response.dart';
import 'package:github/model/activity/mark_repo_notifications_as_read_response.dart';
import 'package:github/model/activity/mark_repo_notifications_as_read202_response.dart';

sealed class Activity&#x2F;markRepoNotificationsAsReadResponse {
    static Activity&#x2F;markRepoNotificationsAsReadResponse fromJson(dynamic jsonArg) {
        // Determine which schema to use based on the json.
        // TODO(eseidel): Implement this.
        throw UnimplementedError('Activity&#x2F;markRepoNotificationsAsReadResponse.fromJson');
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Activity&#x2F;markRepoNotificationsAsReadResponse? maybeFromJson(dynamic json) {
        if (json == null) {
            return null;
        }
        return Activity&#x2F;markRepoNotificationsAsReadResponse.fromJson(json);
    }

    /// Require all subclasses to implement toJson.
    dynamic toJson();
}
