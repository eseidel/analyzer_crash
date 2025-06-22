import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_creation_info.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_creation_info.dart';
@immutable
class Dependency-graph-spdx-sbomSbomCreationInfo {
    Dependency-graph-spdx-sbomSbomCreationInfo(
        { required this.created, this.creators = const [],
         }
    );

    factory Dependency-graph-spdx-sbomSbomCreationInfo.fromJson(Map<String, dynamic>
        json) {
        return Dependency-graph-spdx-sbomSbomCreationInfo(
            created: json['created'] as String ,
            creators: (json['creators'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependency-graph-spdx-sbomSbomCreationInfo? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependency-graph-spdx-sbomSbomCreationInfo.fromJson(json);
    }

    final String  created;
    final List<String>  creators;


    Map<String, dynamic> toJson() {
        return {
            'created': created,
            'creators': creators,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          created,
          creators,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependency-graph-spdx-sbomSbomCreationInfo
            && created == other.created
            && listsEqual(creators, other.creators)
        ;
    }
}
