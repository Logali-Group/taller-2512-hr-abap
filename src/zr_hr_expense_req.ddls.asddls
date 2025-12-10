@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Expense Request - Root Enttiy'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_HR_EXPENSE_REQ
  as select from zhr_expense_req
  association [1..1] to ZR_HR_EMPLOYEE as _Employee on $projection.EmployeeID = _Employee.EmployeeID
{
  key request_id            as RequestID,
      employee_id           as EmployeeID,
      expense_report_name   as ExpenseReportName,
      expense_date          as ExpenseDate,
      trip_purpose          as TripPurpose,
      trip_start_date       as TripStartDate,
      trip_end_date         as TripEndDate,
      destination           as Destination,
      project_code          as ProjectCode,
      cost_center           as CostCenter,
      wbs_element           as WbsElement,
      internal_order        as InternalOrder,
      gl_account            as GlAccount,
      total_amount          as TotalAmount,
      currency              as Currency,
      status                as Status,
      submission_date       as SubmissionDate,
      approver_id           as ApproverId,
      approval_date         as ApprovalDate,
      approval_comments     as ApprovalComments,
      payment_status        as PaymentStatus,
      payment_date          as PaymentDate,
      payment_method        as PaymentMethod,
      payment_reference     as PaymentReference,
      bank_account          as BankAccount,
      receipts_attached     as ReceiptsAttached,
      policy_compliant      as PolicyCompliant,
      audit_required        as AuditRequired,
      audit_comments        as AuditComments,
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
