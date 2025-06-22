import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/organization-full_plan.dart';
import 'package:github/model/organization-full_plan.dart';
@immutable
class Organization-fullPlan {
    Organization-fullPlan(
        { required this.name,required this.space,required this.private_repos, this.filled_seats, this.seats,
         }
    );

    factory Organization-fullPlan.fromJson(Map<String, dynamic>
        json) {
        return Organization-fullPlan(
            name: json['name'] as String ,
            space: (json['space'] as int).toInt() ,
            private_repos: (json['private_repos'] as int).toInt() ,
            filled_seats: (json['filled_seats'] as int?).toInt() ,
            seats: (json['seats'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Organization-fullPlan? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Organization-fullPlan.fromJson(json);
    }

    final String  name;
    final int  space;
    final int  private_repos;
    final  int? filled_seats;
    final  int? seats;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'space': space,
            'private_repos': private_repos,
            'filled_seats': filled_seats,
            'seats': seats,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          space,
          private_repos,
          filled_seats,
          seats,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Organization-fullPlan
            && name == other.name
            && space == other.space
            && private_repos == other.private_repos
            && filled_seats == other.filled_seats
            && seats == other.seats
        ;
    }
}
