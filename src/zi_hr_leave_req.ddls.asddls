@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Leave Request - Interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_HR_LEAVE_REQ
  as select from ZR_HR_LEAVE_REQ
  composition [0..*] of ZI_HR_LEAVE_LOG as _Logs
  composition [0..*] of ZI_HR_LEAVE_ATT as _Attachments
  association [1..1] to ZI_HR_EMPLOYEE as _Employee on $projection.EmployeeID = _Employee.EmployeeID
{
  key RequestID,
      EmployeeID,
      LeaveType,
      StartDate,
      EndDate,
      TotalDays,
      StartTime,
      EndTime,
      HalfDayIndicator,
      Reason,
      Comments,
      EmergencyContact,
      CoveringPerson,
      Status,
      SubmissionDate,
      ApproverId,
      ApprovalDate,
      ApprovalComments,
      ApprovalLevel,
      ExternalRefNumber,
      PayrollProcessed,
      CalendarUpdated,
      @Semantics.user.createdBy: true
      CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      CreatedAt,
      @Semantics.user.lastChangedBy: true
      LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      /* Associations */
      _Employee,
      _Logs,
      _Attachments
}
