import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/clone-traffic.dart';
import 'package:github/model/traffic.dart';
import 'package:github/model/clone-traffic.dart';
import 'package:github/model/traffic.dart';
@immutable
class Clone-traffic {
    Clone-traffic(
        { required this.count,required this.uniques, this.clones = const [],
         }
    );

    factory Clone-traffic.fromJson(Map<String, dynamic>
        json) {
        return Clone-traffic(
            count: (json['count'] as int).toInt() ,
            uniques: (json['uniques'] as int).toInt() ,
            clones: (json['clones'] as List).map<Traffic>((e) => Traffic.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Clone-traffic? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Clone-traffic.fromJson(json);
    }

    final int  count;
    final int  uniques;
    final List<Traffic>  clones;


    Map<String, dynamic> toJson() {
        return {
            'count': count,
            'uniques': uniques,
            'clones': clones.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          count,
          uniques,
          clones,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Clone-traffic
            && count == other.count
            && uniques == other.uniques
            && listsEqual(clones, other.clones)
        ;
    }
}
