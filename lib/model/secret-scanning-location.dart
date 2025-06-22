import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location.dart';
import 'package:github/model/secret-scanning-location_type.dart';
import 'package:github/model/secret-scanning-location_details.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
import 'package:github/model/secret-scanning-location.dart';
import 'package:github/model/secret-scanning-location_type.dart';
import 'package:github/model/secret-scanning-location_details.dart';
import 'package:github/model/secret-scanning-location-commit.dart';
import 'package:github/model/secret-scanning-location-wiki-commit.dart';
import 'package:github/model/secret-scanning-location-issue-title.dart';
import 'package:github/model/secret-scanning-location-issue-body.dart';
import 'package:github/model/secret-scanning-location-issue-comment.dart';
import 'package:github/model/secret-scanning-location-discussion-title.dart';
import 'package:github/model/secret-scanning-location-discussion-body.dart';
import 'package:github/model/secret-scanning-location-discussion-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-body.dart';
import 'package:github/model/secret-scanning-location-pull-request-comment.dart';
import 'package:github/model/secret-scanning-location-pull-request-review.dart';
import 'package:github/model/secret-scanning-location-pull-request-review-comment.dart';
@immutable
class Secret-scanning-location {
    Secret-scanning-location(
        {  this.type, this.details,
         }
    );

    factory Secret-scanning-location.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-location(
            type: Secret-scanning-locationType.maybeFromJson(json['type'] as String?) ,
            details: Secret-scanning-locationDetails.maybeFromJson(json['details'] as dynamic),
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-location? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-location.fromJson(json);
    }

    final  Secret-scanning-locationType? type;
    final  Secret-scanning-locationDetails? details;


    Map<String, dynamic> toJson() {
        return {
            'type': type?.toJson(),
            'details': details?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          details,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-location
            && type == other.type
            && details == other.details
        ;
    }
}
