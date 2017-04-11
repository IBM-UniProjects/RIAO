function A = rescale(A)
    A = double(A);
    A = A-min(A(:));
    A = A/max(A(:));
    A = uint8(255*A);
end