import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/public-ip.dart';
import 'package:github/model/public-ip.dart';
@immutable
class Public-ip {
    Public-ip(
        {  this.enabled, this.prefix, this.length,
         }
    );

    factory Public-ip.fromJson(Map<String, dynamic>
        json) {
        return Public-ip(
            enabled: (json['enabled'] as bool?) ,
            prefix: json['prefix'] as String? ,
            length: (json['length'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Public-ip? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Public-ip.fromJson(json);
    }

    final  bool? enabled;
    final  String? prefix;
    final  int? length;


    Map<String, dynamic> toJson() {
        return {
            'enabled': enabled,
            'prefix': prefix,
            'length': length,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          enabled,
          prefix,
          length,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Public-ip
            && enabled == other.enabled
            && prefix == other.prefix
            && length == other.length
        ;
    }
}
