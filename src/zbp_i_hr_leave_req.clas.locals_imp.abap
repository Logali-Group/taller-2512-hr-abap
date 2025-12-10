CLASS lhc_leaveattachment DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS setRequestType FOR DETERMINE ON MODIFY
      IMPORTING keys FOR LeaveAttachment~setRequestType.

ENDCLASS.

CLASS lhc_leaveattachment IMPLEMENTATION.

  METHOD setRequestType.

    DATA: lt_att_update TYPE TABLE FOR UPDATE zi_hr_leave_att.

    READ ENTITIES OF zi_hr_leave_req IN LOCAL MODE
      ENTITY LeaveAttachment
      FIELDS ( RequestType )
      WITH CORRESPONDING #( keys )
      RESULT DATA(lt_leave_atts).

    LOOP AT lt_leave_atts ASSIGNING FIELD-SYMBOL(<fs_att>).
      IF <fs_att>-RequestType IS INITIAL.
        APPEND VALUE #(
          %tky        = <fs_att>-%tky
          RequestType = 'LEAVE'
          %control-RequestType = if_abap_behv=>mk-on
        ) TO lt_att_update.
      ENDIF.
    ENDLOOP.


    IF lt_att_update IS NOT INITIAL.
      MODIFY ENTITIES OF zi_hr_leave_req IN LOCAL MODE
        ENTITY LeaveAttachment
        UPDATE FROM lt_att_update.
    ENDIF.

  ENDMETHOD.

ENDCLASS.

CLASS lhc_LeaveRequest DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR LeaveRequest RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR LeaveRequest RESULT result.

ENDCLASS.



CLASS lhc_LeaveRequest IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_LeaveLog DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS setRequestType FOR DETERMINE ON MODIFY
      IMPORTING keys FOR LeaveLog~setRequestType.

ENDCLASS.

CLASS lhc_LeaveLog IMPLEMENTATION.

  METHOD setRequestType.

    DATA: lt_log_update TYPE TABLE FOR UPDATE zi_hr_leave_log.

    READ ENTITIES OF zi_hr_leave_req IN LOCAL MODE
          ENTITY LeaveLog
          FIELDS ( RequestType )
          WITH CORRESPONDING #( keys )
          RESULT DATA(lt_leave_logs).

    LOOP AT lt_leave_logs ASSIGNING FIELD-SYMBOL(<fs_log>).
          IF <fs_log>-RequestType IS INITIAL.
            APPEND VALUE #(
              %tky        = <fs_log>-%tky
              RequestType = 'LEAVE'
              %control-RequestType = if_abap_behv=>mk-on
            ) TO lt_log_update.
          ENDIF.
    ENDLOOP.

    MODIFY ENTITIES OF zi_hr_leave_req IN LOCAL MODE
          ENTITY LeaveLog
          UPDATE FROM lt_log_update.


  ENDMETHOD.

ENDCLASS.
