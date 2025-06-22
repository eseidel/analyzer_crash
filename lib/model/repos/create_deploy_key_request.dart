import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/repos/create_deploy_key_request.dart';
import 'package:github/model/repos/create_deploy_key_request.dart';
@immutable
class Repos&#x2F;createDeployKeyRequest {
    Repos&#x2F;createDeployKeyRequest(
        {  this.title,required this.key, this.read_only,
         }
    );

    factory Repos&#x2F;createDeployKeyRequest.fromJson(Map<String, dynamic>
        json) {
        return Repos&#x2F;createDeployKeyRequest(
            title: json['title'] as String? ,
            key: json['key'] as String ,
            read_only: (json['read_only'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Repos&#x2F;createDeployKeyRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Repos&#x2F;createDeployKeyRequest.fromJson(json);
    }

    final  String? title;
    final String  key;
    final  bool? read_only;


    Map<String, dynamic> toJson() {
        return {
            'title': title,
            'key': key,
            'read_only': read_only,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          title,
          key,
          read_only,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Repos&#x2F;createDeployKeyRequest
            && title == other.title
            && key == other.key
            && read_only == other.read_only
        ;
    }
}
