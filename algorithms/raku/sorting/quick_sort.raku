sub quick-sort(@arr) {
    return @arr if @arr.elems <= 1;
    
    my $pivot = @arr[0];
    my @left  = @arr[1..*].grep(* < $pivot);
    my @right = @arr[1..*].grep(* >= $pivot);
    
    return flat(quick-sort(@left), $pivot, quick-sort(@right));
}

my @arr = 10, 7, 8, 9, 1, 5;
say "Original: {@arr}";
my @sorted = quick-sort(@arr);
say "Sorted: {@sorted}";
