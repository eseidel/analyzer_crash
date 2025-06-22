import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
import 'package:github/model/secret-scanning-location-pull-request-title.dart';
@immutable
class Secret-scanning-location-pull-request-title {
    Secret-scanning-location-pull-request-title(
        { required this.pull_request_title_url,
         }
    );

    factory Secret-scanning-location-pull-request-title.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-location-pull-request-title(
            pull_request_title_url: json['pull_request_title_url'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-location-pull-request-title? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-location-pull-request-title.fromJson(json);
    }

    final String  pull_request_title_url;


    Map<String, dynamic> toJson() {
        return {
            'pull_request_title_url': pull_request_title_url,
        };
    }

    @override
    int get hashCode =>
          pull_request_title_url.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-location-pull-request-title
            && pull_request_title_url == other.pull_request_title_url
        ;
    }
}
