import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-hosted-runner-limits_public_ips.dart';
import 'package:github/model/actions-hosted-runner-limits_public_ips.dart';
@immutable
class Actions-hosted-runner-limitsPublicIps {
    Actions-hosted-runner-limitsPublicIps(
        { required this.maximum,required this.current_usage,
         }
    );

    factory Actions-hosted-runner-limitsPublicIps.fromJson(Map<String, dynamic>
        json) {
        return Actions-hosted-runner-limitsPublicIps(
            maximum: (json['maximum'] as int).toInt() ,
            current_usage: (json['current_usage'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-hosted-runner-limitsPublicIps? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-hosted-runner-limitsPublicIps.fromJson(json);
    }

    final int  maximum;
    final int  current_usage;


    Map<String, dynamic> toJson() {
        return {
            'maximum': maximum,
            'current_usage': current_usage,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          maximum,
          current_usage,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-hosted-runner-limitsPublicIps
            && maximum == other.maximum
            && current_usage == other.current_usage
        ;
    }
}
