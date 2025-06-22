import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/migrations/set_lfs_preference_request.dart';
import 'package:github/model/migrations/set_lfs_preference_request_use_lfs.dart';
import 'package:github/model/migrations/set_lfs_preference_request.dart';
import 'package:github/model/migrations/set_lfs_preference_request_use_lfs.dart';
@immutable
class Migrations&#x2F;setLfsPreferenceRequest {
    Migrations&#x2F;setLfsPreferenceRequest(
        { required this.use_lfs,
         }
    );

    factory Migrations&#x2F;setLfsPreferenceRequest.fromJson(Map<String, dynamic>
        json) {
        return Migrations&#x2F;setLfsPreferenceRequest(
            use_lfs: Migrations/setLfsPreferenceRequestUseLfs.fromJson(json['use_lfs'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Migrations&#x2F;setLfsPreferenceRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Migrations&#x2F;setLfsPreferenceRequest.fromJson(json);
    }

    final Migrations/setLfsPreferenceRequestUseLfs  use_lfs;


    Map<String, dynamic> toJson() {
        return {
            'use_lfs': use_lfs.toJson(),
        };
    }

    @override
    int get hashCode =>
          use_lfs.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Migrations&#x2F;setLfsPreferenceRequest
            && use_lfs == other.use_lfs
        ;
    }
}
