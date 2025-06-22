import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-cache-usage-by-repository.dart';
import 'package:github/model/actions-cache-usage-by-repository.dart';
@immutable
class Actions-cache-usage-by-repository {
    Actions-cache-usage-by-repository(
        { required this.full_name,required this.active_caches_size_in_bytes,required this.active_caches_count,
         }
    );

    factory Actions-cache-usage-by-repository.fromJson(Map<String, dynamic>
        json) {
        return Actions-cache-usage-by-repository(
            full_name: json['full_name'] as String ,
            active_caches_size_in_bytes: (json['active_caches_size_in_bytes'] as int).toInt() ,
            active_caches_count: (json['active_caches_count'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-cache-usage-by-repository? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-cache-usage-by-repository.fromJson(json);
    }

    final String  full_name;
    final int  active_caches_size_in_bytes;
    final int  active_caches_count;


    Map<String, dynamic> toJson() {
        return {
            'full_name': full_name,
            'active_caches_size_in_bytes': active_caches_size_in_bytes,
            'active_caches_count': active_caches_count,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          full_name,
          active_caches_size_in_bytes,
          active_caches_count,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-cache-usage-by-repository
            && full_name == other.full_name
            && active_caches_size_in_bytes == other.active_caches_size_in_bytes
            && active_caches_count == other.active_caches_count
        ;
    }
}
