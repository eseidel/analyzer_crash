import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/package-version_metadata_container.dart';
import 'package:github/model/package-version_metadata_container.dart';
@immutable
class Package-versionMetadataContainer {
    Package-versionMetadataContainer(
        {  this.tags = const [],
         }
    );

    factory Package-versionMetadataContainer.fromJson(Map<String, dynamic>
        json) {
        return Package-versionMetadataContainer(
            tags: (json['tags'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Package-versionMetadataContainer? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Package-versionMetadataContainer.fromJson(json);
    }

    final List<String>  tags;


    Map<String, dynamic> toJson() {
        return {
            'tags': tags,
        };
    }

    @override
    int get hashCode =>
          tags.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Package-versionMetadataContainer
            && listsEqual(tags, other.tags)
        ;
    }
}
