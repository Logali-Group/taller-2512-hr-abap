@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_HR_EMPLOYEE
  as select from zhr_employee
  association [0..1] to ZR_HR_EMPLOYEE as _Manager on $projection.ManagerID = _Manager.EmployeeID
{
  key employee_id           as EmployeeID,
      first_name            as FirstName,
      last_name             as LastName,
      email                 as Email,
      phone                 as Phone,
      department            as Department,
      emp_position          as EmpPosition,
      manager_id            as ManagerID,
      hire_date             as HireDate,
      birth_date            as BirthDate,
      street                as Street,
      city                  as City,
      postal_code           as PostalCode,
      country               as Country,
      employee_number       as EmployeeNumber,
      contract_type         as ContractType,
      work_schedule         as WorkSchedule,
      salary_level          as SalaryLevel,
      cost_center           as CostCenter,
      company_code          as CompanyCode,
      total_leave_days      as TotalLeaveDays,
      used_leave_days       as UsedLeaveDays,
      carried_over_days     as CarriedOverDays,
      status                as Status,
      photo_url             as PhotoUrl,
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
      _Manager
}
