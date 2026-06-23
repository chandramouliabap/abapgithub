@EndUserText.label: 'Dummy cds view'
define root abstract entity ZRAP_A_DUMMY_CDS
{
  @UI.hidden : true
  dummy   : abap.char(1);
  _upload : association [1] to ZRAP_A_FILE_UPLOAD on 1 = 1;

}
