function x = PSNR(ref, test)
[rows, columns] = size(ref);
test = test(1:rows,1:columns);
%     max2 = max(ref(:))^2
%     [rows, columns] = size(ref);
%     sum = 0;
%     for m = 1:rows
%         for n = 1:columns
%             sum = sum + (ref(m,n) - test(m,n))^2;
%         end
%     end
%     x = 1/(rows*columns) * sum;
%     x = max2/x
%     x = 10*log10(x);
x = 10*log10(max(ref(:))^2/(1/(rows*columns)*sum(sum((abs(ref-test).^2)))));
end