import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/participation-stats.dart';
import 'package:github/model/participation-stats.dart';
@immutable
class Participation-stats {
    Participation-stats(
        {  this.all = const [], this.owner = const [],
         }
    );

    factory Participation-stats.fromJson(Map<String, dynamic>
        json) {
        return Participation-stats(
            all: (json['all'] as List).cast<int>() ,
            owner: (json['owner'] as List).cast<int>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Participation-stats? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Participation-stats.fromJson(json);
    }

    final List<int>  all;
    final List<int>  owner;


    Map<String, dynamic> toJson() {
        return {
            'all': all,
            'owner': owner,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          all,
          owner,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Participation-stats
            && listsEqual(all, other.all)
            && listsEqual(owner, other.owner)
        ;
    }
}
