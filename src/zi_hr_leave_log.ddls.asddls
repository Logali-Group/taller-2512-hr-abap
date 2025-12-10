@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Leave Request Approval Log'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_HR_LEAVE_LOG
  as select from ZR_HR_APPROVAL_LOG
  association to parent ZI_HR_LEAVE_REQ as _LeaveReq on $projection.RequestID = _LeaveReq.RequestID
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
      /** Associations*/
      _LeaveReq
} where RequestType = 'LEAVE';
