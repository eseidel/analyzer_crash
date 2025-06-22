import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
@immutable
class Gpg-keySubkeysInnerEmailsInner {
    Gpg-keySubkeysInnerEmailsInner(
        {  this.email, this.verified,
         }
    );

    factory Gpg-keySubkeysInnerEmailsInner.fromJson(Map<String, dynamic>
        json) {
        return Gpg-keySubkeysInnerEmailsInner(
            email: json['email'] as String? ,
            verified: (json['verified'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gpg-keySubkeysInnerEmailsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gpg-keySubkeysInnerEmailsInner.fromJson(json);
    }

    final  String? email;
    final  bool? verified;


    Map<String, dynamic> toJson() {
        return {
            'email': email,
            'verified': verified,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          email,
          verified,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gpg-keySubkeysInnerEmailsInner
            && email == other.email
            && verified == other.verified
        ;
    }
}
