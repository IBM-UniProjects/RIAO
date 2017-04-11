function x = RMSE(ref, test)
[rows, columns] = size(ref);
test = test(1:rows,1:columns);
%     [rows, columns] = size(ref);
%     sum = 0;
%     for m = 1:rows
%         for n = 1:columns
%             sum = sum + (ref(m,n) - test(m,n))^2;
%         end
%     end
%     x = 1/(rows*columns) * sum;
%     x = sqrt(x);
x = sqrt(1/(rows*columns)*sum(sum((abs(ref-test).^2))));
end