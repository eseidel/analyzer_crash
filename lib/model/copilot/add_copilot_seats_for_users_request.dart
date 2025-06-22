import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot/add_copilot_seats_for_users_request.dart';
import 'package:github/model/copilot/add_copilot_seats_for_users_request.dart';
@immutable
class Copilot&#x2F;addCopilotSeatsForUsersRequest {
    Copilot&#x2F;addCopilotSeatsForUsersRequest(
        {  this.selected_usernames = const [],
         }
    );

    factory Copilot&#x2F;addCopilotSeatsForUsersRequest.fromJson(Map<String, dynamic>
        json) {
        return Copilot&#x2F;addCopilotSeatsForUsersRequest(
            selected_usernames: (json['selected_usernames'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot&#x2F;addCopilotSeatsForUsersRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot&#x2F;addCopilotSeatsForUsersRequest.fromJson(json);
    }

    final List<String>  selected_usernames;


    Map<String, dynamic> toJson() {
        return {
            'selected_usernames': selected_usernames,
        };
    }

    @override
    int get hashCode =>
          selected_usernames.hashCode;

    @override
    bool operator ==(Object other) {
        if (identical(this, other)) return true;
        return other is Copilot&#x2F;addCopilotSeatsForUsersRequest
            && listsEqual(selected_usernames, other.selected_usernames)
        ;
    }
}
