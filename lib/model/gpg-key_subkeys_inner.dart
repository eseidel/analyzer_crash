import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
@immutable
class Gpg-keySubkeysInner {
    Gpg-keySubkeysInner(
        {  this.id, this.primary_key_id, this.key_id, this.public_key, this.emails = const [], this.subkeys = const [], this.can_sign, this.can_encrypt_comms, this.can_encrypt_storage, this.can_certify, this.created_at, this.expires_at, this.raw_key, this.revoked,
         }
    );

    factory Gpg-keySubkeysInner.fromJson(Map<String, dynamic>
        json) {
        return Gpg-keySubkeysInner(
            id: (json['id'] as int?).toInt() ,
            primary_key_id: (json['primary_key_id'] as int?).toInt() ,
            key_id: json['key_id'] as String? ,
            public_key: json['public_key'] as String? ,
            emails: (json['emails'] as List?)?.map<Gpg-keySubkeysInnerEmailsInner>((e) => Gpg-keySubkeysInnerEmailsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            subkeys: (json['subkeys'] as List?)?.cast<dynamic>() ,
            can_sign: (json['can_sign'] as bool?) ,
            can_encrypt_comms: (json['can_encrypt_comms'] as bool?) ,
            can_encrypt_storage: (json['can_encrypt_storage'] as bool?) ,
            can_certify: (json['can_certify'] as bool?) ,
            created_at: json['created_at'] as String? ,
            expires_at: json['expires_at'] as String? ,
            raw_key: json['raw_key'] as String? ,
            revoked: (json['revoked'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gpg-keySubkeysInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gpg-keySubkeysInner.fromJson(json);
    }

    final  int? id;
    final  int? primary_key_id;
    final  String? key_id;
    final  String? public_key;
    final  List<Gpg-keySubkeysInnerEmailsInner>? emails;
    final  List<dynamic>? subkeys;
    final  bool? can_sign;
    final  bool? can_encrypt_comms;
    final  bool? can_encrypt_storage;
    final  bool? can_certify;
    final  String? created_at;
    final  String? expires_at;
    final  String? raw_key;
    final  bool? revoked;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'primary_key_id': primary_key_id,
            'key_id': key_id,
            'public_key': public_key,
            'emails': emails?.map((e) => e.toJson()).toList(),
            'subkeys': subkeys?.map((e) => e.toJson()).toList(),
            'can_sign': can_sign,
            'can_encrypt_comms': can_encrypt_comms,
            'can_encrypt_storage': can_encrypt_storage,
            'can_certify': can_certify,
            'created_at': created_at,
            'expires_at': expires_at,
            'raw_key': raw_key,
            'revoked': revoked,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          primary_key_id,
          key_id,
          public_key,
          emails,
          subkeys,
          can_sign,
          can_encrypt_comms,
          can_encrypt_storage,
          can_certify,
          created_at,
          expires_at,
          raw_key,
          revoked,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gpg-keySubkeysInner
            && id == other.id
            && primary_key_id == other.primary_key_id
            && key_id == other.key_id
            && public_key == other.public_key
            && listsEqual(emails, other.emails)
            && listsEqual(subkeys, other.subkeys)
            && can_sign == other.can_sign
            && can_encrypt_comms == other.can_encrypt_comms
            && can_encrypt_storage == other.can_encrypt_storage
            && can_certify == other.can_certify
            && created_at == other.created_at
            && expires_at == other.expires_at
            && raw_key == other.raw_key
            && revoked == other.revoked
        ;
    }
}
