import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner_external_refs_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner_external_refs_inner.dart';
@immutable
class Dependency-graph-spdx-sbomSbomPackagesInnerExternalRefsInner {
    Dependency-graph-spdx-sbomSbomPackagesInnerExternalRefsInner(
        { required this.referenceCategory,required this.referenceLocator,required this.referenceType,
         }
    );

    factory Dependency-graph-spdx-sbomSbomPackagesInnerExternalRefsInner.fromJson(Map<String, dynamic>
        json) {
        return Dependency-graph-spdx-sbomSbomPackagesInnerExternalRefsInner(
            referenceCategory: json['referenceCategory'] as String ,
            referenceLocator: json['referenceLocator'] as String ,
            referenceType: json['referenceType'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependency-graph-spdx-sbomSbomPackagesInnerExternalRefsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependency-graph-spdx-sbomSbomPackagesInnerExternalRefsInner.fromJson(json);
    }

    final String  referenceCategory;
    final String  referenceLocator;
    final String  referenceType;


    Map<String, dynamic> toJson() {
        return {
            'referenceCategory': referenceCategory,
            'referenceLocator': referenceLocator,
            'referenceType': referenceType,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          referenceCategory,
          referenceLocator,
          referenceType,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependency-graph-spdx-sbomSbomPackagesInnerExternalRefsInner
            && referenceCategory == other.referenceCategory
            && referenceLocator == other.referenceLocator
            && referenceType == other.referenceType
        ;
    }
}
