import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner_external_refs_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner_external_refs_inner.dart';
@immutable
class Dependency-graph-spdx-sbomSbomPackagesInner {
    Dependency-graph-spdx-sbomSbomPackagesInner(
        {  this.SPDXID, this.name, this.versionInfo, this.downloadLocation, this.filesAnalyzed, this.licenseConcluded, this.licenseDeclared, this.supplier, this.copyrightText, this.externalRefs = const [],
         }
    );

    factory Dependency-graph-spdx-sbomSbomPackagesInner.fromJson(Map<String, dynamic>
        json) {
        return Dependency-graph-spdx-sbomSbomPackagesInner(
            SPDXID: json['SPDXID'] as String? ,
            name: json['name'] as String? ,
            versionInfo: json['versionInfo'] as String? ,
            downloadLocation: json['downloadLocation'] as String? ,
            filesAnalyzed: (json['filesAnalyzed'] as bool?) ,
            licenseConcluded: json['licenseConcluded'] as String? ,
            licenseDeclared: json['licenseDeclared'] as String? ,
            supplier: json['supplier'] as String? ,
            copyrightText: json['copyrightText'] as String? ,
            externalRefs: (json['externalRefs'] as List?)?.map<Dependency-graph-spdx-sbomSbomPackagesInnerExternalRefsInner>((e) => Dependency-graph-spdx-sbomSbomPackagesInnerExternalRefsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependency-graph-spdx-sbomSbomPackagesInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependency-graph-spdx-sbomSbomPackagesInner.fromJson(json);
    }

    final  String? SPDXID;
    final  String? name;
    final  String? versionInfo;
    final  String? downloadLocation;
    final  bool? filesAnalyzed;
    final  String? licenseConcluded;
    final  String? licenseDeclared;
    final  String? supplier;
    final  String? copyrightText;
    final  List<Dependency-graph-spdx-sbomSbomPackagesInnerExternalRefsInner>? externalRefs;


    Map<String, dynamic> toJson() {
        return {
            'SPDXID': SPDXID,
            'name': name,
            'versionInfo': versionInfo,
            'downloadLocation': downloadLocation,
            'filesAnalyzed': filesAnalyzed,
            'licenseConcluded': licenseConcluded,
            'licenseDeclared': licenseDeclared,
            'supplier': supplier,
            'copyrightText': copyrightText,
            'externalRefs': externalRefs?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          SPDXID,
          name,
          versionInfo,
          downloadLocation,
          filesAnalyzed,
          licenseConcluded,
          licenseDeclared,
          supplier,
          copyrightText,
          externalRefs,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependency-graph-spdx-sbomSbomPackagesInner
            && SPDXID == other.SPDXID
            && name == other.name
            && versionInfo == other.versionInfo
            && downloadLocation == other.downloadLocation
            && filesAnalyzed == other.filesAnalyzed
            && licenseConcluded == other.licenseConcluded
            && licenseDeclared == other.licenseDeclared
            && supplier == other.supplier
            && copyrightText == other.copyrightText
            && listsEqual(externalRefs, other.externalRefs)
        ;
    }
}
