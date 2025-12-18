/// QuickSort(list)
var list = argument0;
if (ds_list_size(list) <= 1) return list;

var pivot = list[| 0];
var less = ds_list_create();
var greater = ds_list_create();

for (var i = 1; i < ds_list_size(list); i++) {
    var val = list[| i];
    if (val < pivot) ds_list_add(less, val);
    else ds_list_add(greater, val);
}

var sorted_less = QuickSort(less);
var sorted_greater = QuickSort(greater);

var result = ds_list_create();
for (var i = 0; i < ds_list_size(sorted_less); i++) ds_list_add(result, sorted_less[| i]);
ds_list_add(result, pivot);
for (var i = 0; i < ds_list_size(sorted_greater); i++) ds_list_add(result, sorted_greater[| i]);

ds_list_destroy(less);
ds_list_destroy(greater);
ds_list_destroy(sorted_less);
ds_list_destroy(sorted_greater);

return result;

// Usage:
// list = ds_list_create();
// ds_list_add(list, 10, 7, 8, 9, 1, 5);
// sorted = QuickSort(list);
