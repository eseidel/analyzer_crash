import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup_options.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup_options_runner_type.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup_options.dart';
import 'package:github/model/code-security-configuration_code_scanning_default_setup_options_runner_type.dart';
@immutable
class Code-security-configurationCodeScanningDefaultSetupOptions {
    Code-security-configurationCodeScanningDefaultSetupOptions(
        {  this.runner_type, this.runner_label,
         }
    );

    factory Code-security-configurationCodeScanningDefaultSetupOptions.fromJson(Map<String, dynamic>
        json) {
        return Code-security-configurationCodeScanningDefaultSetupOptions(
            runner_type: Code-security-configurationCodeScanningDefaultSetupOptionsRunnerType.maybeFromJson(json['runner_type'] as String?) ,
            runner_label: json['runner_label'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-security-configurationCodeScanningDefaultSetupOptions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-security-configurationCodeScanningDefaultSetupOptions.fromJson(json);
    }

    final  Code-security-configurationCodeScanningDefaultSetupOptionsRunnerType? runner_type;
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
        return other is Code-security-configurationCodeScanningDefaultSetupOptions
            && runner_type == other.runner_type
            && runner_label == other.runner_label
        ;
    }
}
