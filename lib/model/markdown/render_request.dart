import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/markdown/render_request.dart';
import 'package:github/model/markdown/render_request_mode.dart';
import 'package:github/model/markdown/render_request.dart';
import 'package:github/model/markdown/render_request_mode.dart';
@immutable
class Markdown&#x2F;renderRequest {
    Markdown&#x2F;renderRequest(
        { required this.text, this.mode = Markdown/renderRequestMode.markdown, this.context,
         }
    );

    factory Markdown&#x2F;renderRequest.fromJson(Map<String, dynamic>
        json) {
        return Markdown&#x2F;renderRequest(
            text: json['text'] as String ,
            mode: Markdown/renderRequestMode.maybeFromJson(json['mode'] as String?) ,
            context: json['context'] as String? ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Markdown&#x2F;renderRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Markdown&#x2F;renderRequest.fromJson(json);
    }

    final String  text;
    final  Markdown/renderRequestMode? mode;
    final  String? context;


    Map<String, dynamic> toJson() {
        return {
            'text': text,
            'mode': mode?.toJson(),
            'context': context,
        };
    }

    @override
    int get hashCode =>
        Object.hash(
          text,
          mode,
          context,
        );

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Markdown&#x2F;renderRequest
            && text == other.text
            && mode == other.mode
            && context == other.context
        ;
    }
}
