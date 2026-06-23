CLASS lsc_zrap_r_student DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

ENDCLASS.

CLASS lsc_zrap_r_student IMPLEMENTATION.

  METHOD save_modified.
    DATA it_event TYPE TABLE FOR EVENT zrap_r_student~studentEnrolled.
    DATA it_table TYPE STANDARD TABLE OF zrap_student.
    IF create IS NOT INITIAL.
      it_table = CORRESPONDING #( create-student MAPPING FROM ENTITY ).
      MODIFY zrap_student FROM TABLE @it_table.
      it_event = VALUE #( ( Id = it_table[ 1 ]-id ) ).
      RAISE ENTITY EVENT zrap_r_student~studentEnrolled FROM it_event.
    ENDIF.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Student DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Student RESULT result.

    METHODS uploadExcel FOR MODIFY
      IMPORTING keys FOR ACTION Student~uploadExcel RESULT result.
    METHODS uploadExcel1 FOR MODIFY
      IMPORTING keys FOR ACTION Student~uploadExcel1 RESULT result.

ENDCLASS.

CLASS lhc_Student IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD uploadexcel.

    TYPES: BEGIN OF ty_excel_row,
             name     TYPE string,
             location TYPE string,
             course   TYPE string,
             status   TYPE string,
           END OF ty_excel_row.

    TYPES: BEGIN OF ty_stage,
             cid      TYPE abp_behv_cid,
             row      TYPE i,
             name     TYPE c LENGTH 20,
             location TYPE c LENGTH 20,
             course   TYPE c LENGTH 20,
             status   TYPE abap_boolean,
           END OF ty_stage.

    DATA lt_excel  TYPE STANDARD TABLE OF ty_excel_row WITH DEFAULT KEY.
    DATA lt_stage  TYPE STANDARD TABLE OF ty_stage.
    DATA lt_create TYPE TABLE FOR CREATE zrap_r_student.

    READ TABLE keys INDEX 1 INTO DATA(ls_key).
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.

    DATA(lv_action_cid) = ls_key-%cid.
    DATA(lv_xfile)      = ls_key-%param-excelfile.

    IF lv_xfile IS INITIAL.
      result = VALUE #( ( %cid   = lv_action_cid
                          %param = VALUE #( rownumber = 0 outcome = 'ERROR'
                                            message = 'No file was uploaded.' ) ) ).
      RETURN.
    ENDIF.

    " ---------- 1. Parse the .xlsx with the XCO library (ABAP Cloud) ----------
    TRY.
        DATA(lo_read_access) = xco_cp_xlsx=>document->for_file_content( lv_xfile )->read_access( ).
        DATA(lo_worksheet)   = lo_read_access->get_workbook( )->worksheet->at_position( 1 ).

        " Selection starts at row 2, so the header row is skipped automatically.
        " Columns A..D map positionally to name, location, course, status.
        DATA(lo_pattern) = xco_cp_xlsx_selection=>pattern_builder->simple_from_to( )->from_column(
                             xco_cp_xlsx=>coordinate->for_alphabetic_value( 'A' )
                           )->from_row(
                             xco_cp_xlsx=>coordinate->for_numeric_value( 2 )
                           )->get_pattern( ).

        lo_worksheet->select( lo_pattern )->row_stream( )->operation->write_to( REF #( lt_excel )
                    )->set_value_transformation( xco_cp_xlsx_read_access=>value_transformation->string_value
                    )->if_xco_xlsx_ra_operation~execute( ).

      CATCH cx_root INTO DATA(lx_error).
        result = VALUE #( ( %cid   = lv_action_cid
                            %param = VALUE #( rownumber = 0 outcome = 'ERROR'
                                              message = |Could not read file: { lx_error->get_text( ) }| ) ) ).
        RETURN.
    ENDTRY.

    " ---------- 2. Map rows into the staging table ----------
    LOOP AT lt_excel INTO DATA(ls_excel) WHERE name IS NOT INITIAL OR course IS NOT INITIAL.
      DATA(lv_row) = sy-tabix.

      DATA(lv_status_txt) = to_upper( condense( ls_excel-status ) ).
      DATA(lv_status)     = COND abap_boolean(
                              WHEN lv_status_txt = 'X'  OR lv_status_txt = 'TRUE'
                                OR lv_status_txt = 'YES' OR lv_status_txt = '1'
                              THEN abap_true ELSE abap_false ).

      APPEND VALUE #( cid = |R{ lv_row }|  row = lv_row
                      name = ls_excel-name  location = ls_excel-location
                      course = ls_excel-course  status = lv_status ) TO lt_stage.
    ENDLOOP.

    IF lt_stage IS INITIAL.
      result = VALUE #( ( %cid   = lv_action_cid
                          %param = VALUE #( rownumber = 0 outcome = 'WARNING'
                                            message = 'No data rows found in the file.' ) ) ).
      RETURN.
    ENDIF.

    " ---------- 3. Build the CREATE table ----------
    lt_create = VALUE #( FOR ls IN lt_stage
                         ( %cid = ls-cid  Name = ls-name  Location = ls-location
                           Course = ls-course  Status = ls-status ) ).

    " ---------- 4. Persist ----------
    MODIFY ENTITIES OF zrap_r_student IN LOCAL MODE
      ENTITY Student
      CREATE FIELDS ( Name Location Course Status )
      WITH lt_create
      MAPPED DATA(ls_mapped)  FAILED DATA(ls_failed)  REPORTED DATA(ls_reported).

    " ---------- 5. Build the result for the popup ----------
    LOOP AT lt_stage INTO DATA(ls_done).
      DATA(lv_failed) = xsdbool( line_exists( ls_failed-student[ %cid = ls_done-cid ] ) ).
      APPEND VALUE #( %cid = lv_action_cid
                      %param = VALUE #( rownumber = ls_done-row  name = ls_done-name
                                        course = ls_done-course
                                        outcome = COND #( WHEN lv_failed = abap_true THEN 'FAILED' ELSE 'CREATED' )
                                        message = COND #( WHEN lv_failed = abap_true
                                                          THEN 'Row could not be created.'
                                                          ELSE 'Created successfully.' ) ) ) TO result.
    ENDLOOP.

  ENDMETHOD.

  METHOD uploadExcel1.
  TYPES: BEGIN OF ty_excel_row,
             name     TYPE string,
             location TYPE string,
             course   TYPE string,
             status   TYPE string,
           END OF ty_excel_row.

    TYPES: BEGIN OF ty_stage,
             cid      TYPE abp_behv_cid,
             row      TYPE i,
             name     TYPE c LENGTH 20,
             location TYPE c LENGTH 20,
             course   TYPE c LENGTH 20,
             status   TYPE abap_boolean,
           END OF ty_stage.

    DATA lt_excel  TYPE STANDARD TABLE OF ty_excel_row WITH DEFAULT KEY.
    DATA lt_stage  TYPE STANDARD TABLE OF ty_stage.
    DATA lt_create TYPE TABLE FOR CREATE zrap_r_student.

    READ TABLE keys INDEX 1 INTO DATA(ls_key).
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.

    DATA(lv_action_cid) = ls_key-%cid.
    DATA(lv_xfile)      = ls_key-%param-_upload-ExcelFile.

    IF lv_xfile IS INITIAL.
      result = VALUE #( ( %cid   = lv_action_cid
                          %param = VALUE #( rownumber = 0 outcome = 'ERROR'
                                            message = 'No file was uploaded.' ) ) ).
      RETURN.
    ENDIF.

    " ---------- 1. Parse the .xlsx with the XCO library (ABAP Cloud) ----------
    TRY.
        DATA(lo_read_access) = xco_cp_xlsx=>document->for_file_content( lv_xfile )->read_access( ).
        DATA(lo_worksheet)   = lo_read_access->get_workbook( )->worksheet->at_position( 1 ).

        " Selection starts at row 2, so the header row is skipped automatically.
        " Columns A..D map positionally to name, location, course, status.
        DATA(lo_pattern) = xco_cp_xlsx_selection=>pattern_builder->simple_from_to( )->from_column(
                             xco_cp_xlsx=>coordinate->for_alphabetic_value( 'A' )
                           )->from_row(
                             xco_cp_xlsx=>coordinate->for_numeric_value( 2 )
                           )->get_pattern( ).

        lo_worksheet->select( lo_pattern )->row_stream( )->operation->write_to( REF #( lt_excel )
                    )->set_value_transformation( xco_cp_xlsx_read_access=>value_transformation->string_value
                    )->if_xco_xlsx_ra_operation~execute( ).

      CATCH cx_root INTO DATA(lx_error).
        result = VALUE #( ( %cid   = lv_action_cid
                            %param = VALUE #( rownumber = 0 outcome = 'ERROR'
                                              message = |Could not read file: { lx_error->get_text( ) }| ) ) ).
        RETURN.
    ENDTRY.

    " ---------- 2. Map rows into the staging table ----------
    LOOP AT lt_excel INTO DATA(ls_excel) WHERE name IS NOT INITIAL OR course IS NOT INITIAL.
      DATA(lv_row) = sy-tabix.

      DATA(lv_status_txt) = to_upper( condense( ls_excel-status ) ).
      DATA(lv_status)     = COND abap_boolean(
                              WHEN lv_status_txt = 'X'  OR lv_status_txt = 'TRUE'
                                OR lv_status_txt = 'YES' OR lv_status_txt = '1'
                              THEN abap_true ELSE abap_false ).

      APPEND VALUE #( cid = |R{ lv_row }|  row = lv_row
                      name = ls_excel-name  location = ls_excel-location
                      course = ls_excel-course  status = lv_status ) TO lt_stage.
    ENDLOOP.

    IF lt_stage IS INITIAL.
      result = VALUE #( ( %cid   = lv_action_cid
                          %param = VALUE #( rownumber = 0 outcome = 'WARNING'
                                            message = 'No data rows found in the file.' ) ) ).
      RETURN.
    ENDIF.

    " ---------- 3. Build the CREATE table ----------
    lt_create = VALUE #( FOR ls IN lt_stage
                         ( %cid = ls-cid  Name = ls-name  Location = ls-location
                           Course = ls-course  Status = ls-status ) ).

    " ---------- 4. Persist ----------
    MODIFY ENTITIES OF zrap_r_student IN LOCAL MODE
      ENTITY Student
      CREATE FIELDS ( Name Location Course Status )
      WITH lt_create
      MAPPED DATA(ls_mapped)  FAILED DATA(ls_failed)  REPORTED DATA(ls_reported).

    " ---------- 5. Build the result for the popup ----------
    LOOP AT lt_stage INTO DATA(ls_done).
      DATA(lv_failed) = xsdbool( line_exists( ls_failed-student[ %cid = ls_done-cid ] ) ).
      APPEND VALUE #( %cid = lv_action_cid
                      %param = VALUE #( rownumber = ls_done-row  name = ls_done-name
                                        course = ls_done-course
                                        outcome = COND #( WHEN lv_failed = abap_true THEN 'FAILED' ELSE 'CREATED' )
                                        message = COND #( WHEN lv_failed = abap_true
                                                          THEN 'Row could not be created.'
                                                          ELSE 'Created successfully.' ) ) ) TO result.
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
