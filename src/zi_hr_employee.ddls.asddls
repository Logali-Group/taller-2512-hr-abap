@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee - Interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_HR_EMPLOYEE
  as select from ZR_HR_EMPLOYEE
  association [0..1] to ZI_HR_EMPLOYEE as _Manager on $projection.ManagerID = _Manager.EmployeeID
{
  key EmployeeID,
      FirstName,
      LastName,
      Email,
      Phone,
      Department,
      EmpPosition,
      ManagerID,
      HireDate,
      BirthDate,
      Street,
      City,
      PostalCode,
      Country,
      EmployeeNumber,
      ContractType,
      WorkSchedule,
      SalaryLevel,
      CostCenter,
      CompanyCode,
      TotalLeaveDays,
      UsedLeaveDays,
      CarriedOverDays,
      Status,
      PhotoUrl,
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
      _Manager
}
