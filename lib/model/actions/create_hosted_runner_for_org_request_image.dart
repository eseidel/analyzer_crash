import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/create_hosted_runner_for_org_request_image.dart';
import 'package:github/model/actions/create_hosted_runner_for_org_request_image_source.dart';
import 'package:github/model/actions/create_hosted_runner_for_org_request_image.dart';
import 'package:github/model/actions/create_hosted_runner_for_org_request_image_source.dart';
@immutable
class Actions&#x2F;createHostedRunnerForOrgRequestImage {
    Actions&#x2F;createHostedRunnerForOrgRequestImage(
        {  this.id, this.source,
         }
    );

    factory Actions&#x2F;createHostedRunnerForOrgRequestImage.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;createHostedRunnerForOrgRequestImage(
            id: json['id'] as String? ,
            source: Actions/createHostedRunnerForOrgRequestImageSource.maybeFromJson(json['source'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;createHostedRunnerForOrgRequestImage? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;createHostedRunnerForOrgRequestImage.fromJson(json);
    }

    final  String? id;
    final  Actions/createHostedRunnerForOrgRequestImageSource? source;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'source': source?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          source,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;createHostedRunnerForOrgRequestImage
            && id == other.id
            && source == other.source
        ;
    }
}
