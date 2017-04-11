function x = SNR(ref, test)
[rows, columns] = size(ref);
test = test(1:rows,1:columns);
%nom = 0;
%denom = 0;
%for m = 1:rows
%    for n = 1:columns
%        nom = ref(m,n)*ref(m,n) + nom;
%        denom = (ref(m,n) - test(m,n))^2 + denom;
%    end
%end
%x = nom/denom;
%x = 10*log10(x);
x = 10*log10(sum(ref(:).^2)/sum(sum((abs(ref-test).^2))));
end