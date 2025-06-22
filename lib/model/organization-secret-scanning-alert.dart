import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/organization-secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
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
import 'package:github/model/organization-secret-scanning-alert.dart';
import 'package:github/model/alert-url.dart';
import 'package:github/model/alert-html-url.dart';
import 'package:github/model/secret-scanning-alert-state.dart';
import 'package:github/model/secret-scanning-alert-resolution.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/simple-repository.dart';
import 'package:github/model/simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/nullable-simple-user.dart';
import 'package:github/model/organization-secret-scanning-alert_validity.dart';
import 'package:github/model/nullable-secret-scanning-first-detected-location.dart';
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
class Organization-secret-scanning-alert {
    Organization-secret-scanning-alert(
        {  this.number, this.created_at, this.updated_at, this.url, this.html_url, this.locations_url, this.state, this.resolution, this.resolved_at, this.resolved_by, this.secret_type, this.secret_type_display_name, this.secret, this.repository, this.push_protection_bypassed, this.push_protection_bypassed_by, this.push_protection_bypassed_at, this.push_protection_bypass_request_reviewer, this.push_protection_bypass_request_reviewer_comment, this.push_protection_bypass_request_comment, this.push_protection_bypass_request_html_url, this.resolution_comment, this.validity, this.publicly_leaked, this.multi_repo, this.is_base64_encoded, this.first_location_detected, this.has_more_locations,
         }
    );

    factory Organization-secret-scanning-alert.fromJson(Map<String, dynamic>
        json) {
        return Organization-secret-scanning-alert(
            number: (json['number'] as int?).toInt() ,
            created_at: maybeParseDateTime(json['created_at'] as String?) ,
            updated_at: maybeParseDateTime(json['updated_at'] as String?) ,
            url: Alert-url((json['url'] as String?) ),
            html_url: Alert-html-url((json['html_url'] as String?) ),
            locations_url: json['locations_url'] as String? ,
            state: Secret-scanning-alert-state.maybeFromJson(json['state'] as String?) ,
            resolution: Secret-scanning-alert-resolution.maybeFromJson(json['resolution'] as String?) ,
            resolved_at: maybeParseDateTime(json['resolved_at'] as String?) ,
            resolved_by: Nullable-simple-user.maybeFromJson(json['resolved_by'] as Map<String, dynamic>?) ,
            secret_type: json['secret_type'] as String? ,
            secret_type_display_name: json['secret_type_display_name'] as String? ,
            secret: json['secret'] as String? ,
            repository: Simple-repository.maybeFromJson(json['repository'] as Map<String, dynamic>?) ,
            push_protection_bypassed: (json['push_protection_bypassed'] as bool?) ,
            push_protection_bypassed_by: Nullable-simple-user.maybeFromJson(json['push_protection_bypassed_by'] as Map<String, dynamic>?) ,
            push_protection_bypassed_at: maybeParseDateTime(json['push_protection_bypassed_at'] as String?) ,
            push_protection_bypass_request_reviewer: Nullable-simple-user.maybeFromJson(json['push_protection_bypass_request_reviewer'] as Map<String, dynamic>?) ,
            push_protection_bypass_request_reviewer_comment: json['push_protection_bypass_request_reviewer_comment'] as String? ,
            push_protection_bypass_request_comment: json['push_protection_bypass_request_comment'] as String? ,
            push_protection_bypass_request_html_url: json['push_protection_bypass_request_html_url'] as String? ,
            resolution_comment: json['resolution_comment'] as String? ,
            validity: Organization-secret-scanning-alertValidity.maybeFromJson(json['validity'] as String?) ,
            publicly_leaked: (json['publicly_leaked'] as bool?) ,
            multi_repo: (json['multi_repo'] as bool?) ,
            is_base64_encoded: (json['is_base64_encoded'] as bool?) ,
            first_location_detected: Nullable-secret-scanning-first-detected-location.maybeFromJson(json['first_location_detected'] as dynamic),
            has_more_locations: (json['has_more_locations'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-secret-scanning-alert? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-secret-scanning-alert.fromJson(json);
    }

    final  int? number;
    final  DateTime? created_at;
    final  DateTime? updated_at;
    final  Alert-url? url;
    final  Alert-html-url? html_url;
    final  String? locations_url;
    final  Secret-scanning-alert-state? state;
    final  Secret-scanning-alert-resolution? resolution;
    final  DateTime? resolved_at;
    final  Nullable-simple-user? resolved_by;
    final  String? secret_type;
    final  String? secret_type_display_name;
    final  String? secret;
    final  Simple-repository? repository;
    final  bool? push_protection_bypassed;
    final  Nullable-simple-user? push_protection_bypassed_by;
    final  DateTime? push_protection_bypassed_at;
    final  Nullable-simple-user? push_protection_bypass_request_reviewer;
    final  String? push_protection_bypass_request_reviewer_comment;
    final  String? push_protection_bypass_request_comment;
    final  String? push_protection_bypass_request_html_url;
    final  String? resolution_comment;
    final  Organization-secret-scanning-alertValidity? validity;
    final  bool? publicly_leaked;
    final  bool? multi_repo;
    final  bool? is_base64_encoded;
    final  Nullable-secret-scanning-first-detected-location? first_location_detected;
    final  bool? has_more_locations;


    Map<String, dynamic> toJson() {
        return {
            'number': number,
            'created_at': created_at?.toIso8601String(),
            'updated_at': updated_at?.toIso8601String(),
            'url': url?.toJson(),
            'html_url': html_url?.toJson(),
            'locations_url': locations_url,
            'state': state?.toJson(),
            'resolution': resolution?.toJson(),
            'resolved_at': resolved_at?.toIso8601String(),
            'resolved_by': resolved_by?.toJson(),
            'secret_type': secret_type,
            'secret_type_display_name': secret_type_display_name,
            'secret': secret,
            'repository': repository?.toJson(),
            'push_protection_bypassed': push_protection_bypassed,
            'push_protection_bypassed_by': push_protection_bypassed_by?.toJson(),
            'push_protection_bypassed_at': push_protection_bypassed_at?.toIso8601String(),
            'push_protection_bypass_request_reviewer': push_protection_bypass_request_reviewer?.toJson(),
            'push_protection_bypass_request_reviewer_comment': push_protection_bypass_request_reviewer_comment,
            'push_protection_bypass_request_comment': push_protection_bypass_request_comment,
            'push_protection_bypass_request_html_url': push_protection_bypass_request_html_url,
            'resolution_comment': resolution_comment,
            'validity': validity?.toJson(),
            'publicly_leaked': publicly_leaked,
            'multi_repo': multi_repo,
            'is_base64_encoded': is_base64_encoded,
            'first_location_detected': first_location_detected?.toJson(),
            'has_more_locations': has_more_locations,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          number,
          created_at,
          updated_at,
          url,
          html_url,
          locations_url,
          state,
          resolution,
          resolved_at,
          resolved_by,
          secret_type,
          secret_type_display_name,
          secret,
          repository,
          push_protection_bypassed,
          push_protection_bypassed_by,
          push_protection_bypassed_at,
          push_protection_bypass_request_reviewer,
          push_protection_bypass_request_reviewer_comment,
          push_protection_bypass_request_comment,
          push_protection_bypass_request_html_url,
          resolution_comment,
          validity,
          publicly_leaked,
          multi_repo,
          is_base64_encoded,
          first_location_detected,
          has_more_locations,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Organization-secret-scanning-alert
            && number == other.number
            && created_at == other.created_at
            && updated_at == other.updated_at
            && url == other.url
            && html_url == other.html_url
            && locations_url == other.locations_url
            && state == other.state
            && resolution == other.resolution
            && resolved_at == other.resolved_at
            && resolved_by == other.resolved_by
            && secret_type == other.secret_type
            && secret_type_display_name == other.secret_type_display_name
            && secret == other.secret
            && repository == other.repository
            && push_protection_bypassed == other.push_protection_bypassed
            && push_protection_bypassed_by == other.push_protection_bypassed_by
            && push_protection_bypassed_at == other.push_protection_bypassed_at
            && push_protection_bypass_request_reviewer == other.push_protection_bypass_request_reviewer
            && push_protection_bypass_request_reviewer_comment == other.push_protection_bypass_request_reviewer_comment
            && push_protection_bypass_request_comment == other.push_protection_bypass_request_comment
            && push_protection_bypass_request_html_url == other.push_protection_bypass_request_html_url
            && resolution_comment == other.resolution_comment
            && validity == other.validity
            && publicly_leaked == other.publicly_leaked
            && multi_repo == other.multi_repo
            && is_base64_encoded == other.is_base64_encoded
            && first_location_detected == other.first_location_detected
            && has_more_locations == other.has_more_locations
        ;
    }
}
