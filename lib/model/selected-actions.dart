import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/selected-actions.dart';
import 'package:github/model/selected-actions.dart';
@immutable
class Selected-actions {
    Selected-actions(
        {  this.github_owned_allowed, this.verified_allowed, this.patterns_allowed = const [],
         }
    );

    factory Selected-actions.fromJson(Map<String, dynamic>
        json) {
        return Selected-actions(
            github_owned_allowed: (json['github_owned_allowed'] as bool?) ,
            verified_allowed: (json['verified_allowed'] as bool?) ,
            patterns_allowed: (json['patterns_allowed'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Selected-actions? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Selected-actions.fromJson(json);
    }

    final  bool? github_owned_allowed;
    final  bool? verified_allowed;
    final  List<String>? patterns_allowed;


    Map<String, dynamic> toJson() {
        return {
            'github_owned_allowed': github_owned_allowed,
            'verified_allowed': verified_allowed,
            'patterns_allowed': patterns_allowed,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          github_owned_allowed,
          verified_allowed,
          patterns_allowed,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Selected-actions
            && github_owned_allowed == other.github_owned_allowed
            && verified_allowed == other.verified_allowed
            && listsEqual(patterns_allowed, other.patterns_allowed)
        ;
    }
}
