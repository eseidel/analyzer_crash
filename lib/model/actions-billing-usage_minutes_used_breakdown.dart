import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/actions-billing-usage_minutes_used_breakdown.dart';
import 'package:github/model/actions-billing-usage_minutes_used_breakdown.dart';
@immutable
class Actions-billing-usageMinutesUsedBreakdown {
    Actions-billing-usageMinutesUsedBreakdown(
        {  this.UBUNTU, this.MACOS, this.WINDOWS, this.ubuntu_4_core, this.ubuntu_8_core, this.ubuntu_16_core, this.ubuntu_32_core, this.ubuntu_64_core, this.windows_4_core, this.windows_8_core, this.windows_16_core, this.windows_32_core, this.windows_64_core, this.macos_12_core, this.total,
         }
    );

    factory Actions-billing-usageMinutesUsedBreakdown.fromJson(Map<String, dynamic>
        json) {
        return Actions-billing-usageMinutesUsedBreakdown(
            UBUNTU: (json['UBUNTU'] as int?).toInt() ,
            MACOS: (json['MACOS'] as int?).toInt() ,
            WINDOWS: (json['WINDOWS'] as int?).toInt() ,
            ubuntu_4_core: (json['ubuntu_4_core'] as int?).toInt() ,
            ubuntu_8_core: (json['ubuntu_8_core'] as int?).toInt() ,
            ubuntu_16_core: (json['ubuntu_16_core'] as int?).toInt() ,
            ubuntu_32_core: (json['ubuntu_32_core'] as int?).toInt() ,
            ubuntu_64_core: (json['ubuntu_64_core'] as int?).toInt() ,
            windows_4_core: (json['windows_4_core'] as int?).toInt() ,
            windows_8_core: (json['windows_8_core'] as int?).toInt() ,
            windows_16_core: (json['windows_16_core'] as int?).toInt() ,
            windows_32_core: (json['windows_32_core'] as int?).toInt() ,
            windows_64_core: (json['windows_64_core'] as int?).toInt() ,
            macos_12_core: (json['macos_12_core'] as int?).toInt() ,
            total: (json['total'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Actions-billing-usageMinutesUsedBreakdown? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Actions-billing-usageMinutesUsedBreakdown.fromJson(json);
    }

    final  int? UBUNTU;
    final  int? MACOS;
    final  int? WINDOWS;
    final  int? ubuntu_4_core;
    final  int? ubuntu_8_core;
    final  int? ubuntu_16_core;
    final  int? ubuntu_32_core;
    final  int? ubuntu_64_core;
    final  int? windows_4_core;
    final  int? windows_8_core;
    final  int? windows_16_core;
    final  int? windows_32_core;
    final  int? windows_64_core;
    final  int? macos_12_core;
    final  int? total;


    Map<String, dynamic> toJson() {
        return {
            'UBUNTU': UBUNTU,
            'MACOS': MACOS,
            'WINDOWS': WINDOWS,
            'ubuntu_4_core': ubuntu_4_core,
            'ubuntu_8_core': ubuntu_8_core,
            'ubuntu_16_core': ubuntu_16_core,
            'ubuntu_32_core': ubuntu_32_core,
            'ubuntu_64_core': ubuntu_64_core,
            'windows_4_core': windows_4_core,
            'windows_8_core': windows_8_core,
            'windows_16_core': windows_16_core,
            'windows_32_core': windows_32_core,
            'windows_64_core': windows_64_core,
            'macos_12_core': macos_12_core,
            'total': total,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          UBUNTU,
          MACOS,
          WINDOWS,
          ubuntu_4_core,
          ubuntu_8_core,
          ubuntu_16_core,
          ubuntu_32_core,
          ubuntu_64_core,
          windows_4_core,
          windows_8_core,
          windows_16_core,
          windows_32_core,
          windows_64_core,
          macos_12_core,
          total,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Actions-billing-usageMinutesUsedBreakdown
            && UBUNTU == other.UBUNTU
            && MACOS == other.MACOS
            && WINDOWS == other.WINDOWS
            && ubuntu_4_core == other.ubuntu_4_core
            && ubuntu_8_core == other.ubuntu_8_core
            && ubuntu_16_core == other.ubuntu_16_core
            && ubuntu_32_core == other.ubuntu_32_core
            && ubuntu_64_core == other.ubuntu_64_core
            && windows_4_core == other.windows_4_core
            && windows_8_core == other.windows_8_core
            && windows_16_core == other.windows_16_core
            && windows_32_core == other.windows_32_core
            && windows_64_core == other.windows_64_core
            && macos_12_core == other.macos_12_core
            && total == other.total
        ;
    }
}
