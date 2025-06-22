import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-hosted-runner-limits.dart';
import 'package:github/model/actions-hosted-runner-limits_public_ips.dart';
import 'package:github/model/actions-hosted-runner-limits.dart';
import 'package:github/model/actions-hosted-runner-limits_public_ips.dart';
@immutable
class Actions-hosted-runner-limits {
    Actions-hosted-runner-limits(
        { required this.public_ips,
         }
    );

    factory Actions-hosted-runner-limits.fromJson(Map<String, dynamic>
        json) {
        return Actions-hosted-runner-limits(
            public_ips: Actions-hosted-runner-limitsPublicIps.fromJson(json['public_ips'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-hosted-runner-limits? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-hosted-runner-limits.fromJson(json);
    }

    final Actions-hosted-runner-limitsPublicIps  public_ips;


    Map<String, dynamic> toJson() {
        return {
            'public_ips': public_ips.toJson(),
        };
    }

    @override
    int get hashCode =>
          public_ips.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-hosted-runner-limits
            && public_ips == other.public_ips
        ;
    }
}
