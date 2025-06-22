import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pages-health-check_domain.dart';
import 'package:github/model/pages-health-check_domain.dart';
@immutable
class Pages-health-checkDomain {
    Pages-health-checkDomain(
        {  this.host, this.uri, this.nameservers, this.dns_resolves, this.is_proxied, this.is_cloudflare_ip, this.is_fastly_ip, this.is_old_ip_address, this.is_a_record, this.has_cname_record, this.has_mx_records_present, this.is_valid_domain, this.is_apex_domain, this.should_be_a_record, this.is_cname_to_github_user_domain, this.is_cname_to_pages_dot_github_dot_com, this.is_cname_to_fastly, this.is_pointed_to_github_pages_ip, this.is_non_github_pages_ip_present, this.is_pages_domain, this.is_served_by_pages, this.is_valid, this.reason, this.responds_to_https, this.enforces_https, this.https_error, this.is_https_eligible, this.caa_error,
         }
    );

    factory Pages-health-checkDomain.fromJson(Map<String, dynamic>
        json) {
        return Pages-health-checkDomain(
            host: json['host'] as String? ,
            uri: json['uri'] as String? ,
            nameservers: json['nameservers'] as String? ,
            dns_resolves: (json['dns_resolves'] as bool?) ,
            is_proxied: (json['is_proxied'] as bool?) ,
            is_cloudflare_ip: (json['is_cloudflare_ip'] as bool?) ,
            is_fastly_ip: (json['is_fastly_ip'] as bool?) ,
            is_old_ip_address: (json['is_old_ip_address'] as bool?) ,
            is_a_record: (json['is_a_record'] as bool?) ,
            has_cname_record: (json['has_cname_record'] as bool?) ,
            has_mx_records_present: (json['has_mx_records_present'] as bool?) ,
            is_valid_domain: (json['is_valid_domain'] as bool?) ,
            is_apex_domain: (json['is_apex_domain'] as bool?) ,
            should_be_a_record: (json['should_be_a_record'] as bool?) ,
            is_cname_to_github_user_domain: (json['is_cname_to_github_user_domain'] as bool?) ,
            is_cname_to_pages_dot_github_dot_com: (json['is_cname_to_pages_dot_github_dot_com'] as bool?) ,
            is_cname_to_fastly: (json['is_cname_to_fastly'] as bool?) ,
            is_pointed_to_github_pages_ip: (json['is_pointed_to_github_pages_ip'] as bool?) ,
            is_non_github_pages_ip_present: (json['is_non_github_pages_ip_present'] as bool?) ,
            is_pages_domain: (json['is_pages_domain'] as bool?) ,
            is_served_by_pages: (json['is_served_by_pages'] as bool?) ,
            is_valid: (json['is_valid'] as bool?) ,
            reason: json['reason'] as String? ,
            responds_to_https: (json['responds_to_https'] as bool?) ,
            enforces_https: (json['enforces_https'] as bool?) ,
            https_error: json['https_error'] as String? ,
            is_https_eligible: (json['is_https_eligible'] as bool?) ,
            caa_error: json['caa_error'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pages-health-checkDomain? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pages-health-checkDomain.fromJson(json);
    }

    final  String? host;
    final  String? uri;
    final  String? nameservers;
    final  bool? dns_resolves;
    final  bool? is_proxied;
    final  bool? is_cloudflare_ip;
    final  bool? is_fastly_ip;
    final  bool? is_old_ip_address;
    final  bool? is_a_record;
    final  bool? has_cname_record;
    final  bool? has_mx_records_present;
    final  bool? is_valid_domain;
    final  bool? is_apex_domain;
    final  bool? should_be_a_record;
    final  bool? is_cname_to_github_user_domain;
    final  bool? is_cname_to_pages_dot_github_dot_com;
    final  bool? is_cname_to_fastly;
    final  bool? is_pointed_to_github_pages_ip;
    final  bool? is_non_github_pages_ip_present;
    final  bool? is_pages_domain;
    final  bool? is_served_by_pages;
    final  bool? is_valid;
    final  String? reason;
    final  bool? responds_to_https;
    final  bool? enforces_https;
    final  String? https_error;
    final  bool? is_https_eligible;
    final  String? caa_error;


    Map<String, dynamic> toJson() {
        return {
            'host': host,
            'uri': uri,
            'nameservers': nameservers,
            'dns_resolves': dns_resolves,
            'is_proxied': is_proxied,
            'is_cloudflare_ip': is_cloudflare_ip,
            'is_fastly_ip': is_fastly_ip,
            'is_old_ip_address': is_old_ip_address,
            'is_a_record': is_a_record,
            'has_cname_record': has_cname_record,
            'has_mx_records_present': has_mx_records_present,
            'is_valid_domain': is_valid_domain,
            'is_apex_domain': is_apex_domain,
            'should_be_a_record': should_be_a_record,
            'is_cname_to_github_user_domain': is_cname_to_github_user_domain,
            'is_cname_to_pages_dot_github_dot_com': is_cname_to_pages_dot_github_dot_com,
            'is_cname_to_fastly': is_cname_to_fastly,
            'is_pointed_to_github_pages_ip': is_pointed_to_github_pages_ip,
            'is_non_github_pages_ip_present': is_non_github_pages_ip_present,
            'is_pages_domain': is_pages_domain,
            'is_served_by_pages': is_served_by_pages,
            'is_valid': is_valid,
            'reason': reason,
            'responds_to_https': responds_to_https,
            'enforces_https': enforces_https,
            'https_error': https_error,
            'is_https_eligible': is_https_eligible,
            'caa_error': caa_error,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          host,
          uri,
          nameservers,
          dns_resolves,
          is_proxied,
          is_cloudflare_ip,
          is_fastly_ip,
          is_old_ip_address,
          is_a_record,
          has_cname_record,
          has_mx_records_present,
          is_valid_domain,
          is_apex_domain,
          should_be_a_record,
          is_cname_to_github_user_domain,
          is_cname_to_pages_dot_github_dot_com,
          is_cname_to_fastly,
          is_pointed_to_github_pages_ip,
          is_non_github_pages_ip_present,
          is_pages_domain,
          is_served_by_pages,
          is_valid,
          reason,
          responds_to_https,
          enforces_https,
          https_error,
          is_https_eligible,
          caa_error,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pages-health-checkDomain
            && host == other.host
            && uri == other.uri
            && nameservers == other.nameservers
            && dns_resolves == other.dns_resolves
            && is_proxied == other.is_proxied
            && is_cloudflare_ip == other.is_cloudflare_ip
            && is_fastly_ip == other.is_fastly_ip
            && is_old_ip_address == other.is_old_ip_address
            && is_a_record == other.is_a_record
            && has_cname_record == other.has_cname_record
            && has_mx_records_present == other.has_mx_records_present
            && is_valid_domain == other.is_valid_domain
            && is_apex_domain == other.is_apex_domain
            && should_be_a_record == other.should_be_a_record
            && is_cname_to_github_user_domain == other.is_cname_to_github_user_domain
            && is_cname_to_pages_dot_github_dot_com == other.is_cname_to_pages_dot_github_dot_com
            && is_cname_to_fastly == other.is_cname_to_fastly
            && is_pointed_to_github_pages_ip == other.is_pointed_to_github_pages_ip
            && is_non_github_pages_ip_present == other.is_non_github_pages_ip_present
            && is_pages_domain == other.is_pages_domain
            && is_served_by_pages == other.is_served_by_pages
            && is_valid == other.is_valid
            && reason == other.reason
            && responds_to_https == other.responds_to_https
            && enforces_https == other.enforces_https
            && https_error == other.https_error
            && is_https_eligible == other.is_https_eligible
            && caa_error == other.caa_error
        ;
    }
}
