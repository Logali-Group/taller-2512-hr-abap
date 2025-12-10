@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Approval Log - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_HR_APPROVAL_LOG
  as select from zhr_approval_log
{
  key log_id            as LogID,
      request_id        as RequestID,
      request_type      as RequestType,
      approver_id       as ApproverId,
      approver_name     as ApproverName,
      approval_level    as ApprovalLevel,
      approval_sequence as ApprovalSequence,
      action            as Action,
      action_date       as ActionDate,
      action_time       as ActionTime,
      comments          as Comments,
      rejection_reason  as RejectionReason,
      conditions        as Conditions,
      delegated_from    as DelegatedFrom,
      delegated_to      as DelegatedTo,
      delegation_reason as DelegationReason,
      delegation_start  as DelegationStart,
      delegation_end    as DelegationEnd,
      requested_amount  as RequestedAmount,
      approved_amount   as ApprovedAmount,
      currency          as Currency,
      ip_address        as IpAddress,
      device_info       as DeviceInfo,
      approval_method   as ApprovalMethod,
      @Semantics.user.createdBy: true
      created_by        as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at        as CreatedAt
}
