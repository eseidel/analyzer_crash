import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/rate-limit-overview.dart';
import 'package:github/model/rate-limit-overview_resources.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit-overview.dart';
import 'package:github/model/rate-limit-overview_resources.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
import 'package:github/model/rate-limit.dart';
@immutable
class Rate-limit-overview {
    Rate-limit-overview(
        { required this.resources,required this.rate,
         }
    );

    factory Rate-limit-overview.fromJson(Map<String, dynamic>
        json) {
        return Rate-limit-overview(
            resources: Rate-limit-overviewResources.fromJson(json['resources'] as Map<String, dynamic>) ,
            rate: Rate-limit.fromJson(json['rate'] as Map<String, dynamic>) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Rate-limit-overview? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Rate-limit-overview.fromJson(json);
    }

    final Rate-limit-overviewResources  resources;
    final Rate-limit  rate;


    Map<String, dynamic> toJson() {
        return {
            'resources': resources.toJson(),
            'rate': rate.toJson(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          resources,
          rate,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Rate-limit-overview
            && resources == other.resources
            && rate == other.rate
        ;
    }
}
