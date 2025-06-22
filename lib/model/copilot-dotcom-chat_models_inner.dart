import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot-dotcom-chat_models_inner.dart';
import 'package:github/model/copilot-dotcom-chat_models_inner.dart';
@immutable
class Copilot-dotcom-chatModelsInner {
    Copilot-dotcom-chatModelsInner(
        {  this.name, this.is_custom_model, this.custom_model_training_date, this.total_engaged_users, this.total_chats,
         }
    );

    factory Copilot-dotcom-chatModelsInner.fromJson(Map<String, dynamic>
        json) {
        return Copilot-dotcom-chatModelsInner(
            name: json['name'] as String? ,
            is_custom_model: (json['is_custom_model'] as bool?) ,
            custom_model_training_date: json['custom_model_training_date'] as String? ,
            total_engaged_users: (json['total_engaged_users'] as int?).toInt() ,
            total_chats: (json['total_chats'] as int?).toInt() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot-dotcom-chatModelsInner? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot-dotcom-chatModelsInner.fromJson(json);
    }

    final  String? name;
    final  bool? is_custom_model;
    final  String? custom_model_training_date;
    final  int? total_engaged_users;
    final  int? total_chats;


    Map<String, dynamic> toJson() {
        return {
            'name': name,
            'is_custom_model': is_custom_model,
            'custom_model_training_date': custom_model_training_date,
            'total_engaged_users': total_engaged_users,
            'total_chats': total_chats,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          name,
          is_custom_model,
          custom_model_training_date,
          total_engaged_users,
          total_chats,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot-dotcom-chatModelsInner
            && name == other.name
            && is_custom_model == other.is_custom_model
            && custom_model_training_date == other.custom_model_training_date
            && total_engaged_users == other.total_engaged_users
            && total_chats == other.total_chats
        ;
    }
}
