import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/merged-upstream.dart';
import 'package:github/model/merged-upstream_merge_type.dart';
import 'package:github/model/merged-upstream.dart';
import 'package:github/model/merged-upstream_merge_type.dart';
@immutable
class Merged-upstream {
    Merged-upstream(
        {  this.message, this.merge_type, this.base_branch,
         }
    );

    factory Merged-upstream.fromJson(Map<String, dynamic>
        json) {
        return Merged-upstream(
            message: json['message'] as String? ,
            merge_type: Merged-upstreamMergeType.maybeFromJson(json['merge_type'] as String?) ,
            base_branch: json['base_branch'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Merged-upstream? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Merged-upstream.fromJson(json);
    }

    final  String? message;
    final  Merged-upstreamMergeType? merge_type;
    final  String? base_branch;


    Map<String, dynamic> toJson() {
        return {
            'message': message,
            'merge_type': merge_type?.toJson(),
            'base_branch': base_branch,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          message,
          merge_type,
          base_branch,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Merged-upstream
            && message == other.message
            && merge_type == other.merge_type
            && base_branch == other.base_branch
        ;
    }
}
