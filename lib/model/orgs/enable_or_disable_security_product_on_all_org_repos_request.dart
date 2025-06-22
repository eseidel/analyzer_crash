import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/orgs/enable_or_disable_security_product_on_all_org_repos_request.dart';
import 'package:github/model/orgs/enable_or_disable_security_product_on_all_org_repos_request_query_suite.dart';
import 'package:github/model/orgs/enable_or_disable_security_product_on_all_org_repos_request.dart';
import 'package:github/model/orgs/enable_or_disable_security_product_on_all_org_repos_request_query_suite.dart';
@immutable
class Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequest {
    Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequest(
        {  this.query_suite,
         }
    );

    factory Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequest.fromJson(Map<String, dynamic>
        json) {
        return Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequest(
            query_suite: Orgs/enableOrDisableSecurityProductOnAllOrgReposRequestQuerySuite.maybeFromJson(json['query_suite'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequest.fromJson(json);
    }

    final  Orgs/enableOrDisableSecurityProductOnAllOrgReposRequestQuerySuite? query_suite;


    Map<String, dynamic> toJson() {
        return {
            'query_suite': query_suite?.toJson(),
        };
    }

    @override
    int get hashCode =>
          query_suite.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Orgs&#x2F;enableOrDisableSecurityProductOnAllOrgReposRequest
            && query_suite == other.query_suite
        ;
    }
}
