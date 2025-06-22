import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/view-traffic.dart';
import 'package:github/model/traffic.dart';
import 'package:github/model/view-traffic.dart';
import 'package:github/model/traffic.dart';
@immutable
class View-traffic {
    View-traffic(
        { required this.count,required this.uniques, this.views = const [],
         }
    );

    factory View-traffic.fromJson(Map<String, dynamic>
        json) {
        return View-traffic(
            count: (json['count'] as int).toInt() ,
            uniques: (json['uniques'] as int).toInt() ,
            views: (json['views'] as List).map<Traffic>((e) => Traffic.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static View-traffic? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return View-traffic.fromJson(json);
    }

    final int  count;
    final int  uniques;
    final List<Traffic>  views;


    Map<String, dynamic> toJson() {
        return {
            'count': count,
            'uniques': uniques,
            'views': views.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          count,
          uniques,
          views,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is View-traffic
            && count == other.count
            && uniques == other.uniques
            && listsEqual(views, other.views)
        ;
    }
}
