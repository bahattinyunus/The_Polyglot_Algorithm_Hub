-- PostgreSQL PL/pgSQL conceptual implementation

CREATE OR REPLACE FUNCTION quick_sort_array(arr INT[])
RETURNS INT[] AS $$
DECLARE
    pivot INT;
    left_arr INT[];
    right_arr INT[];
BEGIN
    -- Base case: arrays with 0 or 1 element are sorted
    IF array_length(arr, 1) IS NULL OR array_length(arr, 1) <= 1 THEN
        RETURN arr;
    END IF;

    -- Pick pivot (first element)
    pivot := arr[1];

    -- Filter elements less than pivot
    SELECT ARRAY(SELECT unnest(arr[2:array_length(arr,1)]) WHERE unnest < pivot) INTO left_arr;
    
    -- Filter elements greater than or equal to pivot
    SELECT ARRAY(SELECT unnest(arr[2:array_length(arr,1)]) WHERE unnest >= pivot) INTO right_arr;

    -- Recursive concat
    RETURN quick_sort_array(left_arr) || pivot || quick_sort_array(right_arr);
END;
$$ LANGUAGE plpgsql;

-- Example Usage:
-- SELECT quick_sort_array(ARRAY[10, 7, 8, 9, 1, 5]);
