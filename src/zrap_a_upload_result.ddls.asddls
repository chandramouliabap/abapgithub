@EndUserText.label: 'Excel Upload - Result Row'
define abstract entity ZRAP_A_UPLOAD_RESULT
{
  @UI.lineItem: [{ position: 10, label: 'Row' }]
  RowNumber : abap.int4;

  @UI.lineItem: [{ position: 20, label: 'Name' }]
  Name      : abap.char(20);

  @UI.lineItem: [{ position: 30, label: 'Course' }]
  Course    : abap.char(20);

  @UI.lineItem: [{ position: 40, label: 'Outcome' }]
  Outcome   : abap.char(20);

  @UI.lineItem: [{ position: 50, label: 'Message' }]
  Message   : abap.char(255);
}
