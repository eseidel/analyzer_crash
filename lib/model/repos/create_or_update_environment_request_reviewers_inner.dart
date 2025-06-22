import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_or_update_environment_request_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
import 'package:github/model/repos/create_or_update_environment_request_reviewers_inner.dart';
import 'package:github/model/deployment-reviewer-type.dart';
@immutable
class Repos&#x2F;createOrUpdateEnvironmentRequestReviewersInner {
    Repos&#x2F;createOrUpdateEnvironmentRequestReviewersInner(
        {  this.type, this.id,
         }
    );

    factory Repos&#x2F;createOrUpdateEnvironmentRequestReviewersInner.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createOrUpdateEnvironmentRequestReviewersInner(
            type: Deployment-reviewer-type.maybeFromJson(json['type'] as String?) ,
            id: (json['id'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createOrUpdateEnvironmentRequestReviewersInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createOrUpdateEnvironmentRequestReviewersInner.fromJson(json);
    }

    final  Deployment-reviewer-type? type;
    final  int? id;


    Map<String, dynamic> toJson() {
        return {
            'type': type?.toJson(),
            'id': id,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          type,
          id,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createOrUpdateEnvironmentRequestReviewersInner
            && type == other.type
            && id == other.id
        ;
    }
}
