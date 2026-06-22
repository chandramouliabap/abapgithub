*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_student_enrolled DEFINITION
                           INHERITING FROM cl_abap_behavior_event_handler.
     PRIVATE SECTION.
     METHODS onStudentEnrollment FOR ENTITY EVENT
                                 IMPORTING new_student
                                 FOR Student~studentEnrolled.
ENDCLASS.

CLASS lcl_student_enrolled IMPLEMENTATION.

  METHOD onstudentenrollment.
   IF new_student IS NOT INITIAL.

   ENDIF.
  ENDMETHOD.

ENDCLASS.
