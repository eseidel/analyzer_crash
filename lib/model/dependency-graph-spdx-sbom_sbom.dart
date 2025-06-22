import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_creation_info.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner_external_refs_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_relationships_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_creation_info.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner_external_refs_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_relationships_inner.dart';
@immutable
class Dependency-graph-spdx-sbomSbom {
    Dependency-graph-spdx-sbomSbom(
        { required this.SPDXID,required this.spdxVersion, this.comment,required this.creationInfo,required this.name,required this.dataLicense,required this.documentNamespace, this.packages = const [], this.relationships = const [],
         }
    );

    factory Dependency-graph-spdx-sbomSbom.fromJson(Map<String, dynamic>
        json) {
        return Dependency-graph-spdx-sbomSbom(
            SPDXID: json['SPDXID'] as String ,
            spdxVersion: json['spdxVersion'] as String ,
            comment: json['comment'] as String? ,
            creationInfo: Dependency-graph-spdx-sbomSbomCreationInfo.fromJson(json['creationInfo'] as Map<String, dynamic>) ,
            name: json['name'] as String ,
            dataLicense: json['dataLicense'] as String ,
            documentNamespace: json['documentNamespace'] as String ,
            packages: (json['packages'] as List).map<Dependency-graph-spdx-sbomSbomPackagesInner>((e) => Dependency-graph-spdx-sbomSbomPackagesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            relationships: (json['relationships'] as List?)?.map<Dependency-graph-spdx-sbomSbomRelationshipsInner>((e) => Dependency-graph-spdx-sbomSbomRelationshipsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependency-graph-spdx-sbomSbom? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependency-graph-spdx-sbomSbom.fromJson(json);
    }

    final String  SPDXID;
    final String  spdxVersion;
    final  String? comment;
    final Dependency-graph-spdx-sbomSbomCreationInfo  creationInfo;
    final String  name;
    final String  dataLicense;
    final String  documentNamespace;
    final List<Dependency-graph-spdx-sbomSbomPackagesInner>  packages;
    final  List<Dependency-graph-spdx-sbomSbomRelationshipsInner>? relationships;


    Map<String, dynamic> toJson() {
        return {
            'SPDXID': SPDXID,
            'spdxVersion': spdxVersion,
            'comment': comment,
            'creationInfo': creationInfo.toJson(),
            'name': name,
            'dataLicense': dataLicense,
            'documentNamespace': documentNamespace,
            'packages': packages.map((e) => e.toJson()).toList(),
            'relationships': relationships?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          SPDXID,
          spdxVersion,
          comment,
          creationInfo,
          name,
          dataLicense,
          documentNamespace,
          packages,
          relationships,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependency-graph-spdx-sbomSbom
            && SPDXID == other.SPDXID
            && spdxVersion == other.spdxVersion
            && comment == other.comment
            && creationInfo == other.creationInfo
            && name == other.name
            && dataLicense == other.dataLicense
            && documentNamespace == other.documentNamespace
            && listsEqual(packages, other.packages)
            && listsEqual(relationships, other.relationships)
        ;
    }
}
