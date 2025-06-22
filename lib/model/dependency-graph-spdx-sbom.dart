import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/dependency-graph-spdx-sbom.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_creation_info.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner_external_refs_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_relationships_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_creation_info.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_packages_inner_external_refs_inner.dart';
import 'package:github/model/dependency-graph-spdx-sbom_sbom_relationships_inner.dart';
@immutable
class Dependency-graph-spdx-sbom {
    Dependency-graph-spdx-sbom(
        { required this.sbom,
         }
    );

    factory Dependency-graph-spdx-sbom.fromJson(Map<String, dynamic>
        json) {
        return Dependency-graph-spdx-sbom(
            sbom: Dependency-graph-spdx-sbomSbom.fromJson(json['sbom'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Dependency-graph-spdx-sbom? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Dependency-graph-spdx-sbom.fromJson(json);
    }

    final Dependency-graph-spdx-sbomSbom  sbom;


    Map<String, dynamic> toJson() {
        return {
            'sbom': sbom.toJson(),
        };
    }

    @override
    int get hashCode =>
          sbom.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Dependency-graph-spdx-sbom
            && sbom == other.sbom
        ;
    }
}
