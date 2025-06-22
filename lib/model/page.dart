import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/page.dart';
import 'package:github/model/page_status.dart';
import 'package:github/model/page_protected_domain_state.dart';
import 'package:github/model/page_build_type.dart';
import 'package:github/model/pages-source-hash.dart';
import 'package:github/model/pages-https-certificate.dart';
import 'package:github/model/pages-https-certificate_state.dart';
import 'package:github/model/page.dart';
import 'package:github/model/page_status.dart';
import 'package:github/model/page_protected_domain_state.dart';
import 'package:github/model/page_build_type.dart';
import 'package:github/model/pages-source-hash.dart';
import 'package:github/model/pages-https-certificate.dart';
import 'package:github/model/pages-https-certificate_state.dart';
@immutable
class Page {
    Page(
        { required this.url,required this.status,required this.cname, this.protected_domain_state, this.pending_domain_unverified_at, this.custom_404 = false, this.html_url, this.build_type, this.source,required this.public, this.https_certificate, this.https_enforced,
         }
    );

    factory Page.fromJson(Map<String, dynamic>
        json) {
        return Page(
            url: json['url'] as String ,
            status: PageStatus.fromJson(json['status'] as String) ,
            cname: json['cname'] as String ,
            protected_domain_state: PageProtectedDomainState.maybeFromJson(json['protected_domain_state'] as String?) ,
            pending_domain_unverified_at: maybeParseDateTime(json['pending_domain_unverified_at'] as String?) ,
            custom_404: (json['custom_404'] as bool) ,
            html_url: json['html_url'] as String? ,
            build_type: PageBuildType.maybeFromJson(json['build_type'] as String?) ,
            source: Pages-source-hash.maybeFromJson(json['source'] as Map<String, dynamic>?) ,
            public: (json['public'] as bool) ,
            https_certificate: Pages-https-certificate.maybeFromJson(json['https_certificate'] as Map<String, dynamic>?) ,
            https_enforced: (json['https_enforced'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Page? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Page.fromJson(json);
    }

    final String  url;
    final PageStatus  status;
    final String  cname;
    final  PageProtectedDomainState? protected_domain_state;
    final  DateTime? pending_domain_unverified_at;
    final bool  custom_404;
    final  String? html_url;
    final  PageBuildType? build_type;
    final  Pages-source-hash? source;
    final bool  public;
    final  Pages-https-certificate? https_certificate;
    final  bool? https_enforced;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'status': status.toJson(),
            'cname': cname,
            'protected_domain_state': protected_domain_state?.toJson(),
            'pending_domain_unverified_at': pending_domain_unverified_at?.toIso8601String(),
            'custom_404': custom_404,
            'html_url': html_url,
            'build_type': build_type?.toJson(),
            'source': source?.toJson(),
            'public': public,
            'https_certificate': https_certificate?.toJson(),
            'https_enforced': https_enforced,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          status,
          cname,
          protected_domain_state,
          pending_domain_unverified_at,
          custom_404,
          html_url,
          build_type,
          source,
          public,
          https_certificate,
          https_enforced,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Page
            && url == other.url
            && status == other.status
            && cname == other.cname
            && protected_domain_state == other.protected_domain_state
            && pending_domain_unverified_at == other.pending_domain_unverified_at
            && custom_404 == other.custom_404
            && html_url == other.html_url
            && build_type == other.build_type
            && source == other.source
            && public == other.public
            && https_certificate == other.https_certificate
            && https_enforced == other.https_enforced
        ;
    }
}
