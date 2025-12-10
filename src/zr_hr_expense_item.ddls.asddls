@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Expense Item - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_HR_EXPENSE_ITEM
  as select from zhr_expense_item
  association [1..1] to ZR_HR_EXPENSE_REQ as _ParentReq on $projection.RequestID = _ParentReq.RequestID
{
  key request_id             as RequestID,
  key item_id                as ItemID,
      expense_type           as ExpenseType,
      expense_date           as ExpenseDate,
      description            as Description,
      amount                 as Amount,
      currency               as Currency,
      amount_local           as AmountLocal,
      currency_local         as CurrencyLocal,
      exchange_rate          as ExchangeRate,
      receipt_number         as ReceiptNumber,
      receipt_date           as ReceiptDate,
      vendor_name            as VendorName,
      vendor_tax_id          as VendorTaxId,
      tax_amount             as TaxAmount,
      tax_code               as TaxCode,
      tax_recoverable        as TaxRecoverable,
      city                   as City,
      country                as Country,
      business_purpose       as BusinessPurpose,
      attendees              as Attendees,
      billable               as Billable,
      client_code            as ClientCode,
      requires_justification as RequiresJustification,
      justification          as Justification,
      policy_exception       as PolicyException,
      exception_reason       as ExceptionReason,
      @Semantics.user.createdBy: true
      created_by             as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at             as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by        as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at        as LastChangedAt,
      _ParentReq
}
