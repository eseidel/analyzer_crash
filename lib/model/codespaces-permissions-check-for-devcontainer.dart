import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespaces-permissions-check-for-devcontainer.dart';
import 'package:github/model/codespaces-permissions-check-for-devcontainer.dart';
@immutable
class Codespaces-permissions-check-for-devcontainer {
    Codespaces-permissions-check-for-devcontainer(
        { required this.accepted,
         }
    );

    factory Codespaces-permissions-check-for-devcontainer.fromJson(Map<String, dynamic>
        json) {
        return Codespaces-permissions-check-for-devcontainer(
            accepted: (json['accepted'] as bool) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespaces-permissions-check-for-devcontainer? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespaces-permissions-check-for-devcontainer.fromJson(json);
    }

    final bool  accepted;


    Map<String, dynamic> toJson() {
        return {
            'accepted': accepted,
        };
    }

    @override
    int get hashCode =>
          accepted.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespaces-permissions-check-for-devcontainer
            && accepted == other.accepted
        ;
    }
}
