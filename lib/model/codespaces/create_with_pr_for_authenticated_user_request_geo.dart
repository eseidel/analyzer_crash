import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces/create_with_pr_for_authenticated_user_request_geo.dart';
import 'package:github/model/codespaces/create_with_pr_for_authenticated_user_request_geo.dart';
enum Codespaces&#x2F;createWithPrForAuthenticatedUserRequestGeo {
    europewest._('EuropeWest'),
    southeastasia._('SoutheastAsia'),
    useast._('UsEast'),
    uswest._('UsWest'),
    ;

    const Codespaces&#x2F;createWithPrForAuthenticatedUserRequestGeo._(this.value);

    factory Codespaces&#x2F;createWithPrForAuthenticatedUserRequestGeo.fromJson(String json) {
        return Codespaces&#x2F;createWithPrForAuthenticatedUserRequestGeo.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Codespaces&#x2F;createWithPrForAuthenticatedUserRequestGeo value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces&#x2F;createWithPrForAuthenticatedUserRequestGeo? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Codespaces&#x2F;createWithPrForAuthenticatedUserRequestGeo.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
