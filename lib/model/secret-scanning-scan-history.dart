import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/secret-scanning-scan-history.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan-history_custom_pattern_backfill_scans_inner.dart';
import 'package:github/model/secret-scanning-scan-history.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan.dart';
import 'package:github/model/secret-scanning-scan-history_custom_pattern_backfill_scans_inner.dart';
@immutable
class Secret-scanning-scan-history {
    Secret-scanning-scan-history(
        {  this.incremental_scans = const [], this.pattern_update_scans = const [], this.backfill_scans = const [], this.custom_pattern_backfill_scans = const [],
         }
    );

    factory Secret-scanning-scan-history.fromJson(Map<String, dynamic>
        json) {
        return Secret-scanning-scan-history(
            incremental_scans: (json['incremental_scans'] as List?)?.map<Secret-scanning-scan>((e) => Secret-scanning-scan.fromJson(e as Map<String, dynamic>) ).toList() ,
            pattern_update_scans: (json['pattern_update_scans'] as List?)?.map<Secret-scanning-scan>((e) => Secret-scanning-scan.fromJson(e as Map<String, dynamic>) ).toList() ,
            backfill_scans: (json['backfill_scans'] as List?)?.map<Secret-scanning-scan>((e) => Secret-scanning-scan.fromJson(e as Map<String, dynamic>) ).toList() ,
            custom_pattern_backfill_scans: (json['custom_pattern_backfill_scans'] as List?)?.map<Secret-scanning-scan-historyCustomPatternBackfillScansInner>((e) => Secret-scanning-scan-historyCustomPatternBackfillScansInner.fromJson(e as Map<String, dynamic>) ).toList() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Secret-scanning-scan-history? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Secret-scanning-scan-history.fromJson(json);
    }

    final  List<Secret-scanning-scan>? incremental_scans;
    final  List<Secret-scanning-scan>? pattern_update_scans;
    final  List<Secret-scanning-scan>? backfill_scans;
    final  List<Secret-scanning-scan-historyCustomPatternBackfillScansInner>? custom_pattern_backfill_scans;


    Map<String, dynamic> toJson() {
        return {
            'incremental_scans': incremental_scans?.map((e) => e.toJson()).toList(),
            'pattern_update_scans': pattern_update_scans?.map((e) => e.toJson()).toList(),
            'backfill_scans': backfill_scans?.map((e) => e.toJson()).toList(),
            'custom_pattern_backfill_scans': custom_pattern_backfill_scans?.map((e) => e.toJson()).toList(),
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          incremental_scans,
          pattern_update_scans,
          backfill_scans,
          custom_pattern_backfill_scans,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Secret-scanning-scan-history
            && listsEqual(incremental_scans, other.incremental_scans)
            && listsEqual(pattern_update_scans, other.pattern_update_scans)
            && listsEqual(backfill_scans, other.backfill_scans)
            && listsEqual(custom_pattern_backfill_scans, other.custom_pattern_backfill_scans)
        ;
    }
}
