function export_filter2eps(filter, filterName)
%                                                                               
% Format:                                                                       
%   function export_filter2eps(filter, filterName)  
%                                                                               
% Author: Leiming Yu  (ylm at ece.neu.edu)                                     
%  
[w,h,c,n] = size(filter);
    
for i = 1: n
    filter_data = filter(:,:,1,i);
    saveFileName = sprintf('%s_%d',filterName, i);
    disp(saveFileName);
    view_2D_filter_spectrum(filter_data, 64,64, saveFileName);
end


end