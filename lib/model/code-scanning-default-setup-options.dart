import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-default-setup-options.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
import 'package:github/model/code-scanning-default-setup-options.dart';
import 'package:github/model/code-scanning-default-setup-options_runner_type.dart';
@immutable
class Code-scanning-default-setup-options {
    Code-scanning-default-setup-options(
        {  this.runner_type, this.runner_label,
         }
    );

    factory Code-scanning-default-setup-options.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-default-setup-options(
            runner_type: Code-scanning-default-setup-optionsRunnerType.maybeFromJson(json['runner_type'] as String?) ,
            runner_label: json['runner_label'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-default-setup-options? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-default-setup-options.fromJson(json);
    }

    final  Code-scanning-default-setup-optionsRunnerType? runner_type;
    final  String? runner_label;


    Map<String, dynamic> toJson() {
        return {
            'runner_type': runner_type?.toJson(),
            'runner_label': runner_label,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          runner_type,
          runner_label,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-default-setup-options
            && runner_type == other.runner_type
            && runner_label == other.runner_label
        ;
    }
}
