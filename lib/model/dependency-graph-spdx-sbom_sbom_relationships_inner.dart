import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_relationships_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_relationships_inner.dart';
@immutable
class Dependency-graph-spdx-sbomSbomRelationshipsInner {
    Dependency-graph-spdx-sbomSbomRelationshipsInner(
        {  this.relationshipType, this.spdxElementId, this.relatedSpdxElement,
         }
    );

    factory Dependency-graph-spdx-sbomSbomRelationshipsInner.fromJson(Map<String, dynamic>
        json) {
        return Dependency-graph-spdx-sbomSbomRelationshipsInner(
            relationshipType: json['relationshipType'] as String? ,
            spdxElementId: json['spdxElementId'] as String? ,
            relatedSpdxElement: json['relatedSpdxElement'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependency-graph-spdx-sbomSbomRelationshipsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependency-graph-spdx-sbomSbomRelationshipsInner.fromJson(json);
    }

    final  String? relationshipType;
    final  String? spdxElementId;
    final  String? relatedSpdxElement;


    Map<String, dynamic> toJson() {
        return {
            'relationshipType': relationshipType,
            'spdxElementId': spdxElementId,
            'relatedSpdxElement': relatedSpdxElement,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          relationshipType,
          spdxElementId,
          relatedSpdxElement,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependency-graph-spdx-sbomSbomRelationshipsInner
            && relationshipType == other.relationshipType
            && spdxElementId == other.spdxElementId
            && relatedSpdxElement == other.relatedSpdxElement
        ;
    }
}
