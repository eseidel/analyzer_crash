import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/gpg-key.dart';
import 'package:github/model/gpg-key_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
import 'package:github/model/gpg-key.dart';
import 'package:github/model/gpg-key_emails_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner.dart';
import 'package:github/model/gpg-key_subkeys_inner_emails_inner.dart';
@immutable
class Gpg-key {
    Gpg-key(
        { required this.id, this.name,required this.primary_key_id,required this.key_id,required this.public_key, this.emails = const [], this.subkeys = const [],required this.can_sign,required this.can_encrypt_comms,required this.can_encrypt_storage,required this.can_certify,required this.created_at,required this.expires_at,required this.revoked,required this.raw_key,
         }
    );

    factory Gpg-key.fromJson(Map<String, dynamic>
        json) {
        return Gpg-key(
            id: (json['id'] as int).toInt() ,
            name: json['name'] as String? ,
            primary_key_id: (json['primary_key_id'] as int).toInt() ,
            key_id: json['key_id'] as String ,
            public_key: json['public_key'] as String ,
            emails: (json['emails'] as List).map<Gpg-keyEmailsInner>((e) => Gpg-keyEmailsInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            subkeys: (json['subkeys'] as List).map<Gpg-keySubkeysInner>((e) => Gpg-keySubkeysInner.fromJson(e as Map<String, dynamic>) ).toList() ,
            can_sign: (json['can_sign'] as bool) ,
            can_encrypt_comms: (json['can_encrypt_comms'] as bool) ,
            can_encrypt_storage: (json['can_encrypt_storage'] as bool) ,
            can_certify: (json['can_certify'] as bool) ,
            created_at: DateTime.parse(json['created_at'] as String),
            expires_at: DateTime.parse(json['expires_at'] as String),
            revoked: (json['revoked'] as bool) ,
            raw_key: json['raw_key'] as String ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Gpg-key? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Gpg-key.fromJson(json);
    }

    final int  id;
    final  String? name;
    final int  primary_key_id;
    final String  key_id;
    final String  public_key;
    final List<Gpg-keyEmailsInner>  emails;
    final List<Gpg-keySubkeysInner>  subkeys;
    final bool  can_sign;
    final bool  can_encrypt_comms;
    final bool  can_encrypt_storage;
    final bool  can_certify;
    final DateTime  created_at;
    final DateTime  expires_at;
    final bool  revoked;
    final String  raw_key;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
            'primary_key_id': primary_key_id,
            'key_id': key_id,
            'public_key': public_key,
            'emails': emails.map((e) => e.toJson()).toList(),
            'subkeys': subkeys.map((e) => e.toJson()).toList(),
            'can_sign': can_sign,
            'can_encrypt_comms': can_encrypt_comms,
            'can_encrypt_storage': can_encrypt_storage,
            'can_certify': can_certify,
            'created_at': created_at.toIso8601String(),
            'expires_at': expires_at.toIso8601String(),
            'revoked': revoked,
            'raw_key': raw_key,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          name,
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
          revoked,
          raw_key,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Gpg-key
            && id == other.id
            && name == other.name
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
            && revoked == other.revoked
            && raw_key == other.raw_key
        ;
    }
}
