import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
import 'package:github/model/runner.dart';
import 'package:github/model/runner-label.dart';
import 'package:github/model/runner-label_type.dart';
@immutable
class Runner {
    Runner(
        { required this.id, this.runner_group_id,required this.name,required this.os,required this.status,required this.busy, this.labels = const [], this.ephemeral,
         }
    );

    factory Runner.fromJson(Map<String, dynamic>
        json) {
        return Runner(
            id: (json['id'] as int).toInt() ,
            runner_group_id: (json['runner_group_id'] as int?).toInt() ,
            name: json['name'] as String ,
            os: json['os'] as String ,
            status: json['status'] as String ,
            busy: (json['busy'] as bool) ,
            labels: (json['labels'] as List).map<Runner-label>((e) => Runner-label.fromJson(e as Map<String, dynamic>) ).toList() ,
            ephemeral: (json['ephemeral'] as bool?) ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Runner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Runner.fromJson(json);
    }

    final int  id;
    final  int? runner_group_id;
    final String  name;
    final String  os;
    final String  status;
    final bool  busy;
    final List<Runner-label>  labels;
    final  bool? ephemeral;


    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'runner_group_id': runner_group_id,
            'name': name,
            'os': os,
            'status': status,
            'busy': busy,
            'labels': labels.map((e) => e.toJson()).toList(),
            'ephemeral': ephemeral,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          id,
          runner_group_id,
          name,
          os,
          status,
          busy,
          labels,
          ephemeral,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Runner
            && id == other.id
            && runner_group_id == other.runner_group_id
            && name == other.name
            && os == other.os
            && status == other.status
            && busy == other.busy
            && listsEqual(labels, other.labels)
            && ephemeral == other.ephemeral
        ;
    }
}
