import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/release-asset_state.dart';
import 'package:github/model/release-asset_state.dart';
enum Release-assetState {
    uploaded._('uploaded'),
    open._('open'),
    ;

    const Release-assetState._(this.value);

    factory Release-assetState.fromJson(String json) {
        return Release-assetState.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Release-assetState value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Release-assetState? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Release-assetState.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
