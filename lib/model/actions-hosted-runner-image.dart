import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-hosted-runner-image.dart';
import 'package:github/model/actions-hosted-runner-image_source.dart';
import 'package:github/model/actions-hosted-runner-image.dart';
import 'package:github/model/actions-hosted-runner-image_source.dart';
@immutable
class Actions-hosted-runner-image {
    Actions-hosted-runner-image(
        { required this.id,required this.platform,required this.size_gb,required this.display_name,required this.source,
         }
    );

    factory Actions-hosted-runner-image.fromJson(Map<String, dynamic>
        json) {
        return Actions-hosted-runner-image(
            id: json['id'] as String ,
            platform: json['platform'] as String ,
            size_gb: (json['size_gb'] as int).toInt() ,
            display_name: json['display_name'] as String ,
            source: Actions-hosted-runner-imageSource.fromJson(json['source'] as String) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-hosted-runner-image? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-hosted-runner-image.fromJson(json);
    }

    final String  id;
    final String  platform;
    final int  size_gb;
    final String  display_name;
    final Actions-hosted-runner-imageSource  source;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'platform': platform,
            'size_gb': size_gb,
            'display_name': display_name,
            'source': source.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          platform,
          size_gb,
          display_name,
          source,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-hosted-runner-image
            && id == other.id
            && platform == other.platform
            && size_gb == other.size_gb
            && display_name == other.display_name
            && source == other.source
        ;
    }
}
