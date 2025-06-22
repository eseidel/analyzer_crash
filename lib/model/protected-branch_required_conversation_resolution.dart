import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/protected-branch_required_conversation_resolution.dart';
import 'package:github/model/protected-branch_required_conversation_resolution.dart';
@immutable
class Protected-branchRequiredConversationResolution {
    Protected-branchRequiredConversationResolution(
        {  this.enabled,
         }
    );

    factory Protected-branchRequiredConversationResolution.fromJson(Map<String, dynamic>
        json) {
        return Protected-branchRequiredConversationResolution(
            enabled: (json['enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Protected-branchRequiredConversationResolution? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Protected-branchRequiredConversationResolution.fromJson(json);
    }

    final  bool? enabled;


    Map<String, dynamic> toJson() {
        return {
            'enabled': enabled,
        };
    }

    @override
    int get hashCode =>
          enabled.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Protected-branchRequiredConversationResolution
            && enabled == other.enabled
        ;
    }
}
