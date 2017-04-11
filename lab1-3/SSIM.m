function x = SSIM(ref, test)
[rows, columns] = size(ref);
test = test(1:rows,1:columns);
x = ssim(test, ref);
end