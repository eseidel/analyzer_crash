import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/review_pending_deployments_for_run_request_state.dart';
import 'package:github/model/actions/review_pending_deployments_for_run_request_state.dart';
enum Actions&#x2F;reviewPendingDeploymentsForRunRequestState {
    approved._('approved'),
    rejected._('rejected'),
    ;

    const Actions&#x2F;reviewPendingDeploymentsForRunRequestState._(this.value);

    factory Actions&#x2F;reviewPendingDeploymentsForRunRequestState.fromJson(String json) {
        return Actions&#x2F;reviewPendingDeploymentsForRunRequestState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Actions&#x2F;reviewPendingDeploymentsForRunRequestState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;reviewPendingDeploymentsForRunRequestState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;reviewPendingDeploymentsForRunRequestState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
