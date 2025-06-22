import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions/get_hosted_runners_github_owned_images_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner-image.dart';
import 'package:github/model/actions-hosted-runner-image_source.dart';
import 'package:github/model/actions/get_hosted_runners_github_owned_images_for_org200_response.dart';
import 'package:github/model/actions-hosted-runner-image.dart';
import 'package:github/model/actions-hosted-runner-image_source.dart';
@immutable
class Actions&#x2F;getHostedRunnersGithubOwnedImagesForOrg200Response {
    Actions&#x2F;getHostedRunnersGithubOwnedImagesForOrg200Response(
        { required this.total_count, this.images = const [],
         }
    );

    factory Actions&#x2F;getHostedRunnersGithubOwnedImagesForOrg200Response.fromJson(Map<String, dynamic>
        json) {
        return Actions&#x2F;getHostedRunnersGithubOwnedImagesForOrg200Response(
            total_count: (json['total_count'] as int).toInt() ,
            images: (json['images'] as List).map<Actions-hosted-runner-image>((e) => Actions-hosted-runner-image.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions&#x2F;getHostedRunnersGithubOwnedImagesForOrg200Response? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions&#x2F;getHostedRunnersGithubOwnedImagesForOrg200Response.fromJson(json);
    }

    final int  total_count;
    final List<Actions-hosted-runner-image>  images;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'images': images.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          images,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions&#x2F;getHostedRunnersGithubOwnedImagesForOrg200Response
            && total_count == other.total_count
            && listsEqual(images, other.images)
        ;
    }
}
