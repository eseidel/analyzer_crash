import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/codespace-with-full-repository_runtime_constraints.dart';
import 'package:github/model/codespace-with-full-repository_runtime_constraints.dart';
@immutable
class Codespace-with-full-repositoryRuntimeConstraints {
    Codespace-with-full-repositoryRuntimeConstraints(
        {  this.allowed_port_privacy_settings = const [],
         }
    );

    factory Codespace-with-full-repositoryRuntimeConstraints.fromJson(Map<String, dynamic>
        json) {
        return Codespace-with-full-repositoryRuntimeConstraints(
            allowed_port_privacy_settings: (json['allowed_port_privacy_settings'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Codespace-with-full-repositoryRuntimeConstraints? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Codespace-with-full-repositoryRuntimeConstraints.fromJson(json);
    }

    final  List<String>? allowed_port_privacy_settings;


    Map<String, dynamic> toJson() {
        return {
            'allowed_port_privacy_settings': allowed_port_privacy_settings,
        };
    }

    @override
    int get hashCode =>
          allowed_port_privacy_settings.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Codespace-with-full-repositoryRuntimeConstraints
            && listsEqual(allowed_port_privacy_settings, other.allowed_port_privacy_settings)
        ;
    }
}
