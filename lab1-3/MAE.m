function x = MAE(ref, test)
[rows, columns] = size(ref);
test = test(1:rows,1:columns);
x = 1/(rows*columns)*sum(sum((abs(ref-test))));
end