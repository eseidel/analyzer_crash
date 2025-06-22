import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions_runner_jitconfig_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/actions_runner_jitconfig_response.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';

@immutable
class ActionsRunnerJitconfigResponse {
  ActionsRunnerJitconfigResponse({
    required this.runner,
    required this.encoded_jit_config,
  });

  factory ActionsRunnerJitconfigResponse.fromJson(Map<String, dynamic> json) {
    return ActionsRunnerJitconfigResponse(
      runner: Runner.fromJson(json['runner'] as Map<String, dynamic>),
      encoded_jit_config: json['encoded_jit_config'] as String,
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsRunnerJitconfigResponse? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ActionsRunnerJitconfigResponse.fromJson(json);
  }

  final Runner runner;
  final String encoded_jit_config;

  Map<String, dynamic> toJson() {
    return {
      'runner': runner.toJson(),
      'encoded_jit_config': encoded_jit_config,
    };
  }

  @override
  int get hashCode => Object.hash(runner, encoded_jit_config);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ActionsRunnerJitconfigResponse &&
        runner == other.runner &&
        encoded_jit_config == other.encoded_jit_config;
  }
}
