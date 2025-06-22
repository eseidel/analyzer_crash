import 'dart:convert';
import 'dart:io';
import 'package:meta/meta.dart';
import 'package:github/model_helpers.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_users_request.dart';
import 'package:github/model/copilot/cancel_copilot_seat_assignment_for_users_request.dart';
@immutable
class Copilot&#x2F;cancelCopilotSeatAssignmentForUsersRequest {
    Copilot&#x2F;cancelCopilotSeatAssignmentForUsersRequest(
        {  this.selected_usernames = const [],
         }
    );

    factory Copilot&#x2F;cancelCopilotSeatAssignmentForUsersRequest.fromJson(Map<String, dynamic>
        json) {
        return Copilot&#x2F;cancelCopilotSeatAssignmentForUsersRequest(
            selected_usernames: (json['selected_usernames'] as List).cast<String>() ,
        );
    }

    /// Convenience to create a nullable type from a nullable json object.
    /// Useful when parsing optional fields.
    static Copilot&#x2F;cancelCopilotSeatAssignmentForUsersRequest? maybeFromJson(Map<String, dynamic>? json) {
        if (json == null) {
            return null;
        }
        return Copilot&#x2F;cancelCopilotSeatAssignmentForUsersRequest.fromJson(json);
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
        return other is Copilot&#x2F;cancelCopilotSeatAssignmentForUsersRequest
            && listsEqual(selected_usernames, other.selected_usernames)
        ;
    }
}
