function [ output_args ] = laplaican( input_args )
masklap = [ 0 -1 0; -1 5 -1; 0 -1 0];
Laprest = imfilter(double(input_args),double(masklap)) ;
output_args=uint8(Laprest);
end

