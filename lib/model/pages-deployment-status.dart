import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/pages-deployment-status.dart';
import 'package:github/model/pages-deployment-status_status.dart';
import 'package:github/model/pages-deployment-status.dart';
import 'package:github/model/pages-deployment-status_status.dart';
@immutable
class Pages-deployment-status {
    Pages-deployment-status(
        {  this.status,
         }
    );

    factory Pages-deployment-status.fromJson(Map<String, dynamic>
        json) {
        return Pages-deployment-status(
            status: Pages-deployment-statusStatus.maybeFromJson(json['status'] as String?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Pages-deployment-status? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Pages-deployment-status.fromJson(json);
    }

    final  Pages-deployment-statusStatus? status;


    Map<String, dynamic> toJson() {
        return {
            'status': status?.toJson(),
        };
    }

    @override
    int get hashCode =>
          status.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Pages-deployment-status
            && status == other.status
        ;
    }
}
