import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/get_hosted_runners_platforms_for_org200_response.dart';
import 'package:github/model/actions/get_hosted_runners_platforms_for_org200_response.dart';
@immutable
class Actions&#x2F;getHostedRunnersPlatformsForOrg200Response {
    Actions&#x2F;getHostedRunnersPlatformsForOrg200Response(
        { required this.total_count, this.platforms = const [],
         }
    );

    factory Actions&#x2F;getHostedRunnersPlatformsForOrg200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;getHostedRunnersPlatformsForOrg200Response(
            total_count: (json['total_count'] as int).toInt() ,
            platforms: (json['platforms'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;getHostedRunnersPlatformsForOrg200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;getHostedRunnersPlatformsForOrg200Response.fromJson(json);
    }

    final int  total_count;
    final List<String>  platforms;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'platforms': platforms,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          platforms,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;getHostedRunnersPlatformsForOrg200Response
            && total_count == other.total_count
            && listsEqual(platforms, other.platforms)
        ;
    }
}
