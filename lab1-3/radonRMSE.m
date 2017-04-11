function radonRMSE(img, interp)
    imwrite(rescale(img), 'RMSE/original.png')
    for f = {'Ram-Lak', 'Shepp-Logan', 'Cosine', 'Hamming', 'Hann', 'None'}
        e = [];
        r = [];
        for i = 1:180
            r = [r, i];
            th = linspace(0,179,i);
            proj = radon(img, th);
            result = iradon(proj, th, interp, f{1});
            rmse = RMSE(img, result);
            e = [e, rmse];
        end
        rImg = rescale(result);
        imgname = strcat('RMSE/', f{1}, '_', interp, '_', 'best-image', '.png');
        imwrite(rImg, imgname);
        fig = figure('Name', f{1}, 'Visible', 'off');
        scatter(r,e,'.');
        limline = refline([0 e(180)]);
        limline.Color = 'r';
        text(185, e(180),sprintf('%.3f',e(180)));
        title(strcat('filter = "', f{1}, '", interpolation = "', interp, '"'));
        xlabel('Number of projections: x = <1,180>'); % x-axis label
        ylabel('RMSE'); % y-axis label
        scattername = strcat('RMSE/', f{1}, '_', interp, '_', 'scatter', '.png');
        saveas(fig, scattername);
    end
end
