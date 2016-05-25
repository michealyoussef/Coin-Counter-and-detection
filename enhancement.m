function [ output_args ] = Enhancement( input_args )
% % % % % % % % to equilze histogram

%%%%%%%%%%%% buring to remove noise
Firststep=Gaussianfilter1D(input_args);
figure,imshow(Firststep);
%%%%%%%%%% to sharpen
secondstep=laplaican(Firststep);
%%%%%%%%%%%%%%%%%%%%%%
level = graythresh(secondstep);
BW = im2bw(secondstep,level);
figure,imshow(BW);
output_args=secondstep;



end

