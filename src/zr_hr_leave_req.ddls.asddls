@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Leave Request - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_HR_LEAVE_REQ
  as select from zhr_leave_req
  association [1..1] to ZR_HR_EMPLOYEE as _Employee on $projection.EmployeeID = _Employee.EmployeeID
{
  key request_id            as RequestID,
      employee_id           as EmployeeID,
      leave_type            as LeaveType,
      start_date            as StartDate,
      end_date              as EndDate,
      total_days            as TotalDays,
      start_time            as StartTime,
      end_time              as EndTime,
      half_day_indicator    as HalfDayIndicator,
      reason                as Reason,
      comments              as Comments,
      emergency_contact     as EmergencyContact,
      covering_person       as CoveringPerson,
      status                as Status,
      submission_date       as SubmissionDate,
      approver_id           as ApproverId,
      approval_date         as ApprovalDate,
      approval_comments     as ApprovalComments,
      approval_level        as ApprovalLevel,
      external_ref_number   as ExternalRefNumber,
      payroll_processed     as PayrollProcessed,
      calendar_updated      as CalendarUpdated,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      _Employee
}
