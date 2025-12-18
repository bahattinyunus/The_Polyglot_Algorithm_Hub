REPORT z_quick_sort.

TYPES: ty_int_table TYPE STANDARD TABLE OF i WITH EMPTY KEY.

CLASS lcl_sorter DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS quick_sort
      IMPORTING VALUE(it_data) TYPE ty_int_table
      RETURNING VALUE(rt_sorted) TYPE ty_int_table.
ENDCLASS.

CLASS lcl_sorter IMPLEMENTATION.
  METHOD quick_sort.
    IF lines( it_data ) <= 1.
      rt_sorted = it_data.
      RETURN.
    ENDIF.

    DATA(lv_pivot) = it_data[ 1 ].
    DATA(lt_rest) = it_data.
    DELETE lt_rest INDEX 1.

    DATA(lt_less) = FILTER #( lt_rest WHERE table_line < lv_pivot ).
    DATA(lt_greater) = FILTER #( lt_rest WHERE table_line >= lv_pivot ).

    rt_sorted = VALUE #( ( LINES OF quick_sort( lt_less ) )
                         ( lv_pivot )
                         ( LINES OF quick_sort( lt_greater ) ) ).
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  DATA(lt_data) = VALUE ty_int_table( ( 10 ) ( 7 ) ( 8 ) ( 9 ) ( 1 ) ( 5 ) ).
  WRITE: / 'Original:', lt_data.
  DATA(lt_result) = lcl_sorter=>quick_sort( lt_data ).
  WRITE: / 'Sorted:', lt_result.
