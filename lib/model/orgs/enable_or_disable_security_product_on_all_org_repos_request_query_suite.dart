import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/enable_or_disable_security_product_on_all_org_repos_request_query_suite.dart';
import 'package:github/model/orgs/enable_or_disable_security_product_on_all_org_repos_request_query_suite.dart';
enum Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequestQuerySuite {
    default._('default'),
    extended._('extended'),
    ;

    const Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequestQuerySuite._(this.value);

    factory Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequestQuerySuite.fromJson(String json) {
        return Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequestQuerySuite.values.firstWhere(
            (value) => value.value == json,
            orElse: () =>
                throw FormatException('Unknown Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequestQuerySuite value: $json')
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequestQuerySuite? maybeFromJson(String? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequestQuerySuite.fromJson(json);
    }

    final String value;

    String toJson() => value;

    @override
    String toString() => value;
}
