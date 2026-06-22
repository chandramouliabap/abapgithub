@EndUserText.label: '.'
//@ObjectModel.query.implementedBy: 'ABAP:ZCL_BILLDOC'
define root custom entity zdemo_custom_entity
{
@UI.lineItem: [{ position: 10 }]
@UI.selectionField: [{ position: 10 }]

  key BillingDocument : abap.char( 10 );
  @UI.lineItem: [{ position: 20 }]
  BillingDate : fkdat;
  @UI.lineItem: [{ position: 30 }]
  Payer : kunrg;
  @UI.lineItem: [{ position: 40 }]
  @Semantics.amount.currencyCode: 'Currency'
  NetValue : abap.curr( 13, 3 );
  Currency : waerk;
  
}
