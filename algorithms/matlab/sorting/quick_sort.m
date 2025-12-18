function sortedArray = quick_sort(arr)
    % Quick Sort implementation in MATLAB
    
    if length(arr) <= 1
        sortedArray = arr;
        return;
    end
    
    pivot = arr(end);
    arr(end) = [];
    
    less = arr(arr < pivot);
    greater = arr(arr >= pivot);
    
    sortedArray = [quick_sort(less), pivot, quick_sort(greater)];
end

% Example Usage:
% arr = [10, 7, 8, 9, 1, 5];
% disp('Original Array:');
% disp(arr);
% sorted = quick_sort(arr);
% disp('Sorted Array:');
% disp(sorted);
