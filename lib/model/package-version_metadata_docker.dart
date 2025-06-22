import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/package-version_metadata_docker.dart';
import 'package:github/model/package-version_metadata_docker.dart';
@immutable
class Package-versionMetadataDocker {
    Package-versionMetadataDocker(
        {  this.tag = const [],
         }
    );

    factory Package-versionMetadataDocker.fromJson(Map<String, dynamic>
        json) {
        return Package-versionMetadataDocker(
            tag: (json['tag'] as List?)?.cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Package-versionMetadataDocker? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Package-versionMetadataDocker.fromJson(json);
    }

    final  List<String>? tag;


    Map<String, dynamic> toJson() {
        return {
            'tag': tag,
        };
    }

    @override
    int get hashCode =>
          tag.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Package-versionMetadataDocker
            && listsEqual(tag, other.tag)
        ;
    }
}
