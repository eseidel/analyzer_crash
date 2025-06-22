import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pages-health-check.dart';
import 'package:github/model/pages-health-check_domain.dart';
import 'package:github/model/pages-health-check_alt_domain.dart';
import 'package:github/model/pages-health-check.dart';
import 'package:github/model/pages-health-check_domain.dart';
import 'package:github/model/pages-health-check_alt_domain.dart';
@immutable
class Pages-health-check {
    Pages-health-check(
        {  this.domain, this.alt_domain,
         }
    );

    factory Pages-health-check.fromJson(Map<String, dynamic>
        json) {
        return Pages-health-check(
            domain: Pages-health-checkDomain.maybeFromJson(json['domain'] as Map<String, dynamic>?) ,
            alt_domain: Pages-health-checkAltDomain.maybeFromJson(json['alt_domain'] as Map<String, dynamic>?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pages-health-check? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pages-health-check.fromJson(json);
    }

    final  Pages-health-checkDomain? domain;
    final  Pages-health-checkAltDomain? alt_domain;


    Map<String, dynamic> toJson() {
        return {
            'domain': domain?.toJson(),
            'alt_domain': alt_domain?.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          domain,
          alt_domain,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pages-health-check
            && domain == other.domain
            && alt_domain == other.alt_domain
        ;
    }
}
