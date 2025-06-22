import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pages-https-certificate.dart';
import 'package:github/model/pages-https-certificate_state.dart';
import 'package:github/model/pages-https-certificate.dart';
import 'package:github/model/pages-https-certificate_state.dart';
@immutable
class Pages-https-certificate {
    Pages-https-certificate(
        { required this.state,required this.description, this.domains = const [], this.expires_at,
         }
    );

    factory Pages-https-certificate.fromJson(Map<String, dynamic>
        json) {
        return Pages-https-certificate(
            state: Pages-https-certificateState.fromJson(json['state'] as String) ,
            description: json['description'] as String ,
            domains: (json['domains'] as List).cast<String>() ,
            expires_at: json['expires_at'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pages-https-certificate? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pages-https-certificate.fromJson(json);
    }

    final Pages-https-certificateState  state;
    final String  description;
    final List<String>  domains;
    final  String? expires_at;


    Map<String, dynamic> toJson() {
        return {
            'state': state.toJson(),
            'description': description,
            'domains': domains,
            'expires_at': expires_at,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          state,
          description,
          domains,
          expires_at,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pages-https-certificate
            && state == other.state
            && description == other.description
            && listsEqual(domains, other.domains)
            && expires_at == other.expires_at
        ;
    }
}
