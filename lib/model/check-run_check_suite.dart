import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/check-run_check_suite.dart';
import 'package:github/model/check-run_check_suite.dart';
@immutable
class Check-runCheckSuite {
    Check-runCheckSuite(
        { required this.id,
         }
    );

    factory Check-runCheckSuite.fromJson(Map<String, dynamic>
        json) {
        return Check-runCheckSuite(
            id: (json['id'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Check-runCheckSuite? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Check-runCheckSuite.fromJson(json);
    }

    final int  id;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
        };
    }

    @override
    int get hashCode =>
          id.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Check-runCheckSuite
            && id == other.id
        ;
    }
}
