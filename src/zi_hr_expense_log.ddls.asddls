@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Expense Request Log - Interface'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_HR_EXPENSE_LOG
  as select from ZR_HR_APPROVAL_LOG
  association to parent ZI_HR_EXPENSE_REQ as _ExpenseReq on $projection.RequestID = _ExpenseReq.RequestID
{
  key LogID,
      RequestID,
      RequestType,
      ApproverId,
      ApproverName,
      ApprovalLevel,
      ApprovalSequence,
      Action,
      ActionDate,
      ActionTime,
      Comments,
      RejectionReason,
      Conditions,
      DelegatedFrom,
      DelegatedTo,
      DelegationReason,
      DelegationStart,
      DelegationEnd,
      RequestedAmount,
      ApprovedAmount,
      Currency,
      IpAddress,
      DeviceInfo,
      ApprovalMethod,
      @Semantics.user.createdBy: true
      CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      CreatedAt,
      /** Associations */
      _ExpenseReq
} where RequestType = 'EXPENSE';
