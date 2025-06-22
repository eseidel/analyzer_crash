import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
import 'package:github/model/branch-protection_required_conversation_resolution.dart';
@immutable
class Branch-protectionRequiredConversationResolution {
    Branch-protectionRequiredConversationResolution(
        {  this.enabled,
         }
    );

    factory Branch-protectionRequiredConversationResolution.fromJson(Map<String, dynamic>
        json) {
        return Branch-protectionRequiredConversationResolution(
            enabled: (json['enabled'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Branch-protectionRequiredConversationResolution? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Branch-protectionRequiredConversationResolution.fromJson(json);
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
        return other is Branch-protectionRequiredConversationResolution
            && enabled == other.enabled
        ;
    }
}
