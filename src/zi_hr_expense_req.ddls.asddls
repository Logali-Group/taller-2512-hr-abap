@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Expense Request - Interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_HR_EXPENSE_REQ
  as select from ZR_HR_EXPENSE_REQ
  
  composition [0..*] of ZI_HR_EXPENSE_ITEM as _Items
  composition [0..*] of ZI_HR_EXPENSE_LOG as _Logs
  composition [0..*] of ZI_HR_EXPENSE_ATT as _Attachments
  
  association [1..1] to ZI_HR_EMPLOYEE as _Employee on $projection.EmployeeID = _Employee.EmployeeID
{
  key RequestID,
      EmployeeID,
      ExpenseReportName,
      ExpenseDate,
      TripPurpose,
      TripStartDate,
      TripEndDate,
      Destination,
      ProjectCode,
      CostCenter,
      WbsElement,
      InternalOrder,
      GlAccount,
      TotalAmount,
      Currency,
      Status,
      SubmissionDate,
      ApproverId,
      ApprovalDate,
      ApprovalComments,
      PaymentStatus,
      PaymentDate,
      PaymentMethod,
      PaymentReference,
      BankAccount,
      ReceiptsAttached,
      PolicyCompliant,
      AuditRequired,
      AuditComments,
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
      _Items,
      _Logs,
      _Attachments
}
