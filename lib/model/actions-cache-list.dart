import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-cache-list.dart';
import 'package:github/model/actions-cache-list_actions_caches_inner.dart';
import 'package:github/model/actions-cache-list.dart';
import 'package:github/model/actions-cache-list_actions_caches_inner.dart';
@immutable
class Actions-cache-list {
    Actions-cache-list(
        { required this.total_count, this.actions_caches = const [],
         }
    );

    factory Actions-cache-list.fromJson(Map<String, dynamic>
        json) {
        return Actions-cache-list(
            total_count: (json['total_count'] as int).toInt() ,
            actions_caches: (json['actions_caches'] as List).map<Actions-cache-listActionsCachesInner>((e) => Actions-cache-listActionsCachesInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-cache-list? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-cache-list.fromJson(json);
    }

    final int  total_count;
    final List<Actions-cache-listActionsCachesInner>  actions_caches;


    Map<String, dynamic> toJson() {
        return {
            'total_count': total_count,
            'actions_caches': actions_caches.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_count,
          actions_caches,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-cache-list
            && total_count == other.total_count
            && listsEqual(actions_caches, other.actions_caches)
        ;
    }
}
