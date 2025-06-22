import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pages-deployment-status_status.dart';
import 'package:github/model/pages-deployment-status_status.dart';
enum Pages-deployment-statusStatus {
    deploymentInProgress._('deployment_in_progress'),
    syncingFiles._('syncing_files'),
    finishedFileSync._('finished_file_sync'),
    updatingPages._('updating_pages'),
    purgingCdn._('purging_cdn'),
    deploymentCancelled._('deployment_cancelled'),
    deploymentFailed._('deployment_failed'),
    deploymentContentFailed._('deployment_content_failed'),
    deploymentAttemptError._('deployment_attempt_error'),
    deploymentLost._('deployment_lost'),
    succeed._('succeed'),
    ;

    const Pages-deployment-statusStatus._(this.value);

    factory Pages-deployment-statusStatus.fromJson(String json) {
        return Pages-deployment-statusStatus.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pages-deployment-statusStatus value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pages-deployment-statusStatus? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pages-deployment-statusStatus.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
