import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
import 'package:github/model/code-scanning-alert-instance_message.dart';
@immutable
class Code-scanning-alert-instanceMessage {
    Code-scanning-alert-instanceMessage(
        {  this.text,
         }
    );

    factory Code-scanning-alert-instanceMessage.fromJson(Map<String, dynamic>
        json) {
        return Code-scanning-alert-instanceMessage(
            text: json['text'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Code-scanning-alert-instanceMessage? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Code-scanning-alert-instanceMessage.fromJson(json);
    }

    final  String? text;


    Map<String, dynamic> toJson() {
        return {
            'text': text,
        };
    }

    @override
    int get hashCode =>
          text.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Code-scanning-alert-instanceMessage
            && text == other.text
        ;
    }
}
