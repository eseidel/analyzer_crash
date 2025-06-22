import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace-with-full-repository_state.dart';
import 'package:github/model/codespace-with-full-repository_state.dart';
enum Codespace-with-full-repositoryState {
    unknown._('Unknown'),
    created._('Created'),
    queued._('Queued'),
    provisioning._('Provisioning'),
    available._('Available'),
    awaiting._('Awaiting'),
    unavailable._('Unavailable'),
    deleted._('Deleted'),
    moved._('Moved'),
    shutdown._('Shutdown'),
    archived._('Archived'),
    starting._('Starting'),
    shuttingdown._('ShuttingDown'),
    failed._('Failed'),
    exporting._('Exporting'),
    updating._('Updating'),
    rebuilding._('Rebuilding'),
    ;

    const Codespace-with-full-repositoryState._(this.value);

    factory Codespace-with-full-repositoryState.fromJson(String json) {
        return Codespace-with-full-repositoryState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Codespace-with-full-repositoryState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespace-with-full-repositoryState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Codespace-with-full-repositoryState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
