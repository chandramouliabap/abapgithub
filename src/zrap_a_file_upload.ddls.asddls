@EndUserText.label: 'Excel File Upload - Action Parameter'
define root abstract entity ZRAP_A_FILE_UPLOAD
{
  @EndUserText.label: 'Excel File'
  @Semantics.largeObject: { mimeType: 'MimeType',
                            fileName: 'FileName',
                            acceptableMimeTypes:
                              [ 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' ],
                            contentDispositionPreference: #INLINE }
  ExcelFile : abap.rawstring(0);

  @UI.hidden: true
  @Semantics.mimeType: true
  MimeType  : abap.char(128);

  @UI.hidden: true
  FileName  : abap.char(128);
}
