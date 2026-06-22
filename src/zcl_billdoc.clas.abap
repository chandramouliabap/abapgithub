CLASS zcl_billdoc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_billdoc IMPLEMENTATION.


  METHOD if_rap_query_provider~select.
  DATA it_response TYPE TABLE OF zdemo_custom_entity.
  TRY.
  DATA(lt_conditions) = io_request->get_filter( )->get_as_ranges( ).
  CATCH cx_rap_query_filter_no_range.
  ENDTRY.
  IF lines( lt_conditions ) > 0.
    DATA(r_vbeln) = lt_conditions[ name = 'BILLINGDOCUMENT' ]-range.
  ENDIF.
  it_response =   VALUE #( ( BillingDocument = '0090067876' BillingDate = '20261201' Payer = '1100' NetValue = 1000 Currency = 'INR' )
                           ( BillingDocument = '0090067877' BillingDate = '20261202' Payer = '1200' NetValue = 2000 Currency = 'INR' )
                         ).


  try.
      DATA(lv_top) = io_request->get_paging( )->get_page_size( ).
      io_response->set_total_number_of_records( lines( it_response ) ).
      io_response->set_data( it_data = it_response ).
    catch cx_rap_query_response_set_twic.
  endtry.
  ENDMETHOD.
ENDCLASS.
