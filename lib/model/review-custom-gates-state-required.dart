import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/review-custom-gates-state-required.dart';
import 'package:github/model/review-custom-gates-state-required_state.dart';
import 'package:github/model/review-custom-gates-state-required.dart';
import 'package:github/model/review-custom-gates-state-required_state.dart';
@immutable
class Review-custom-gates-state-required {
    Review-custom-gates-state-required(
        { required this.environment_name,required this.state, this.comment,
         }
    );

    factory Review-custom-gates-state-required.fromJson(Map<String, dynamic>
        json) {
        return Review-custom-gates-state-required(
            environment_name: json['environment_name'] as String ,
            state: Review-custom-gates-state-requiredState.fromJson(json['state'] as String) ,
            comment: json['comment'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Review-custom-gates-state-required? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Review-custom-gates-state-required.fromJson(json);
    }

    final String  environment_name;
    final Review-custom-gates-state-requiredState  state;
    final  String? comment;


    Map<String, dynamic> toJson() {
        return {
            'environment_name': environment_name,
            'state': state.toJson(),
            'comment': comment,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          environment_name,
          state,
          comment,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Review-custom-gates-state-required
            && environment_name == other.environment_name
            && state == other.state
            && comment == other.comment
        ;
    }
}
