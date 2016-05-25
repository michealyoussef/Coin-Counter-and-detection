function [ output_image ] = Gaussianfilter1D( input_image )
I =input_image;
GBlur = Gauss1DFilter(I, 2);
output_image=GBlur;
end

