@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Attachment - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_HR_ATTACHMENT
  as select from zhr_attachment
{
  key attachment_id     as AttachmentID,
      request_id        as RequestID,
      request_type      as RequestType,
      item_id           as ItemId,
      file_name         as FileName,
      file_extension    as FileExtension,
      file_type         as FileType,
      file_size         as FileSize,
      mime_type         as MimeType,
      file_content      as FileContent,
      storage_location  as StorageLocation,
      external_url      as ExternalUrl,
      dms_document_id   as DmsDocumentId,
      archive_id        as ArchiveId,
      description       as Description,
      category          as Category,
      ocr_processed     as OcrProcessed,
      ocr_text          as OcrText,
      vendor_extracted  as VendorExtracted,
      amount_extracted  as AmountExtracted,
      date_extracted    as DateExtracted,
      virus_scanned     as VirusScanned,
      scan_date         as ScanDate,
      verified          as Verified,
      verified_by       as VerifiedBy,
      verification_date as VerificationDate,
      retention_period  as RetentionPeriod,
      deletion_date     as DeletionDate,
      @Semantics.user.createdBy: true
      uploaded_by       as UploadedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      uploaded_at       as UploadedAt,
      last_accessed_by  as LastAccessedBy,
      last_accessed_at  as LastAccessedAt
}
