import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pages-https-certificate_state.dart';
import 'package:github/model/pages-https-certificate_state.dart';
enum Pages-https-certificateState {
    new._('new'),
    authorizationCreated._('authorization_created'),
    authorizationPending._('authorization_pending'),
    authorized._('authorized'),
    authorizationRevoked._('authorization_revoked'),
    issued._('issued'),
    uploaded._('uploaded'),
    approved._('approved'),
    errored._('errored'),
    badAuthz._('bad_authz'),
    destroyPending._('destroy_pending'),
    dnsChanged._('dns_changed'),
    ;

    const Pages-https-certificateState._(this.value);

    factory Pages-https-certificateState.fromJson(String json) {
        return Pages-https-certificateState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Pages-https-certificateState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pages-https-certificateState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Pages-https-certificateState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
