import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-cache-usage-org-enterprise.dart';
import 'package:github/model/actions-cache-usage-org-enterprise.dart';
@immutable
class Actions-cache-usage-org-enterprise {
    Actions-cache-usage-org-enterprise(
        { required this.total_active_caches_count,required this.total_active_caches_size_in_bytes,
         }
    );

    factory Actions-cache-usage-org-enterprise.fromJson(Map<String, dynamic>
        json) {
        return Actions-cache-usage-org-enterprise(
            total_active_caches_count: (json['total_active_caches_count'] as int).toInt() ,
            total_active_caches_size_in_bytes: (json['total_active_caches_size_in_bytes'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-cache-usage-org-enterprise? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-cache-usage-org-enterprise.fromJson(json);
    }

    final int  total_active_caches_count;
    final int  total_active_caches_size_in_bytes;


    Map<String, dynamic> toJson() {
        return {
            'total_active_caches_count': total_active_caches_count,
            'total_active_caches_size_in_bytes': total_active_caches_size_in_bytes,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_active_caches_count,
          total_active_caches_size_in_bytes,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-cache-usage-org-enterprise
            && total_active_caches_count == other.total_active_caches_count
            && total_active_caches_size_in_bytes == other.total_active_caches_size_in_bytes
        ;
    }
}
