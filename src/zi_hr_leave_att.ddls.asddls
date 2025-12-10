@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Leave Request Attachments - Interface'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_HR_LEAVE_ATT
  as select from ZR_HR_ATTACHMENT
  association to parent ZI_HR_LEAVE_REQ as _LeaveReq on $projection.RequestID = _LeaveReq.RequestID
{
  key AttachmentID,
      RequestID,
      RequestType,
      ItemId,
      FileName,
      FileExtension,
      FileType,
      FileSize,
      MimeType,
      FileContent,
      StorageLocation,
      ExternalUrl,
      DmsDocumentId,
      ArchiveId,
      Description,
      Category,
      OcrProcessed,
      OcrText,
      VendorExtracted,
      AmountExtracted,
      DateExtracted,
      VirusScanned,
      ScanDate,
      Verified,
      VerifiedBy,
      VerificationDate,
      RetentionPeriod,
      DeletionDate,
      @Semantics.user.createdBy: true
      UploadedBy,
      @Semantics.systemDateTime.createdAt: true
      UploadedAt,
      LastAccessedBy,
      LastAccessedAt,
      /** Associations*/
      _LeaveReq
} where RequestType = 'LEAVE';
