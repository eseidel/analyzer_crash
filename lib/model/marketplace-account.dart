import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/marketplace-account.dart';
import 'package:github/model/marketplace-account.dart';
@immutable
class Marketplace-account {
    Marketplace-account(
        { required this.url,required this.id,required this.type, this.node_id,required this.login, this.email, this.organization_billing_email,
         }
    );

    factory Marketplace-account.fromJson(Map<String, dynamic>
        json) {
        return Marketplace-account(
            url: json['url'] as String ,
            id: (json['id'] as int).toInt() ,
            type: json['type'] as String ,
            node_id: json['node_id'] as String? ,
            login: json['login'] as String ,
            email: json['email'] as String? ,
            organization_billing_email: json['organization_billing_email'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Marketplace-account? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Marketplace-account.fromJson(json);
    }

    final String  url;
    final int  id;
    final String  type;
    final  String? node_id;
    final String  login;
    final  String? email;
    final  String? organization_billing_email;


    Map<String, dynamic> toJson() {
        return {
            'url': url,
            'id': id,
            'type': type,
            'node_id': node_id,
            'login': login,
            'email': email,
            'organization_billing_email': organization_billing_email,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          url,
          id,
          type,
          node_id,
          login,
          email,
          organization_billing_email,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Marketplace-account
            && url == other.url
            && id == other.id
            && type == other.type
            && node_id == other.node_id
            && login == other.login
            && email == other.email
            && organization_billing_email == other.organization_billing_email
        ;
    }
}
