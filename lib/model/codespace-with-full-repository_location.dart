import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace-with-full-repository_location.dart';
import 'package:github/model/codespace-with-full-repository_location.dart';
enum Codespace-with-full-repositoryLocation {
    eastus._('EastUs'),
    southeastasia._('SouthEastAsia'),
    westeurope._('WestEurope'),
    westus2._('WestUs2'),
    ;

    const Codespace-with-full-repositoryLocation._(this.value);

    factory Codespace-with-full-repositoryLocation.fromJson(String json) {
        return Codespace-with-full-repositoryLocation.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Codespace-with-full-repositoryLocation value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespace-with-full-repositoryLocation? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Codespace-with-full-repositoryLocation.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
