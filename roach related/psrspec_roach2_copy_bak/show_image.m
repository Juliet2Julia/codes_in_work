fd = fopen('p4k-sweep.spt');

nbins = 4096;
width = 100;

img = zeros(nbins, width);

while 1
    sn = fread(fd, 1, 'uint64=>uint64', 0, 'ieee-be');
    sig = fread(fd, nbins * 2, 'uint8');
    if length(sig) < nbins * 2
        disp('End of file.');
        break;
    end
    pol0 = [];
    pol1 = [];
    for i=1:nbins*2/4
        pol0 = [pol0 ; sig(4*i-3:4*i-2)];
        pol1 = [pol1 ; sig(4*i-1:4*i)];
    end
    
    img(:,1) = [];
    img = [img pol0];
    
    image(img);
    pause(0.1);
end

fclose(fd);
