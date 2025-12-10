@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Expense Item - Interface'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_HR_EXPENSE_ITEM as select from ZR_HR_EXPENSE_ITEM
    association to parent ZI_HR_EXPENSE_REQ as _ExpenseReq on $projection.RequestID = _ExpenseReq.RequestID
{
    key RequestID,
    key ItemID,
    ExpenseType,
    ExpenseDate,
    Description,
    Amount,
    Currency,
    AmountLocal,
    CurrencyLocal,
    ExchangeRate,
    ReceiptNumber,
    ReceiptDate,
    VendorName,
    VendorTaxId,
    TaxAmount,
    TaxCode,
    TaxRecoverable,
    City,
    Country,
    BusinessPurpose,
    Attendees,
    Billable,
    ClientCode,
    RequiresJustification,
    Justification,
    PolicyException,
    ExceptionReason,
    @Semantics.user.createdBy: true
    CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    CreatedAt,
    @Semantics.user.lastChangedBy: true
    LastChangedBy,
    @Semantics.systemDateTime.lastChangedAt: true
    LastChangedAt,
    /* Associations */
    _ExpenseReq
}
