import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/packages-billing-usage.dart';
import 'package:github/model/packages-billing-usage.dart';
@immutable
class Packages-billing-usage {
    Packages-billing-usage(
        { required this.total_gigabytes_bandwidth_used,required this.total_paid_gigabytes_bandwidth_used,required this.included_gigabytes_bandwidth,
         }
    );

    factory Packages-billing-usage.fromJson(Map<String, dynamic>
        json) {
        return Packages-billing-usage(
            total_gigabytes_bandwidth_used: (json['total_gigabytes_bandwidth_used'] as int).toInt() ,
            total_paid_gigabytes_bandwidth_used: (json['total_paid_gigabytes_bandwidth_used'] as int).toInt() ,
            included_gigabytes_bandwidth: (json['included_gigabytes_bandwidth'] as int).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Packages-billing-usage? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Packages-billing-usage.fromJson(json);
    }

    final int  total_gigabytes_bandwidth_used;
    final int  total_paid_gigabytes_bandwidth_used;
    final int  included_gigabytes_bandwidth;


    Map<String, dynamic> toJson() {
        return {
            'total_gigabytes_bandwidth_used': total_gigabytes_bandwidth_used,
            'total_paid_gigabytes_bandwidth_used': total_paid_gigabytes_bandwidth_used,
            'included_gigabytes_bandwidth': included_gigabytes_bandwidth,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          total_gigabytes_bandwidth_used,
          total_paid_gigabytes_bandwidth_used,
          included_gigabytes_bandwidth,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Packages-billing-usage
            && total_gigabytes_bandwidth_used == other.total_gigabytes_bandwidth_used
            && total_paid_gigabytes_bandwidth_used == other.total_paid_gigabytes_bandwidth_used
            && included_gigabytes_bandwidth == other.included_gigabytes_bandwidth
        ;
    }
}
