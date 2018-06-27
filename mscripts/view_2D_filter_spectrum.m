function [H] = view_2D_filter_spectrum(h, Hr, Hc, FigName)
% Visualization of the spectrum of the learned 2D kernels

% ========================== INPUT PARAMETERS (required) ==================
% Parameter     Values
% name          and description
% =========================================================================
% h             Learned kernel
% Hr            Visualization spectrum size in row
% Hc            Visualization spectrum size in row
% ======================== OPTIONAL INPUT PARAMETERS ======================
% Parameter     Values
% name          and description
% plot_f        Flag to visualize thefilter (optional)
% =========================================================================
%
%                                                                                
% Author: Zafer Dogan 
% Modified by Leiming Yu 
% 

% Example Usage
% h=[0 1 0;1 -4 1;0 1 0];
% [H] = view_2D_filter_spectrum(h, 64, 64,'name_filters')

%zero padding h to match the expected image size.
hzp=h;
hzp(Hr,Hc)=0;
%Circular shift of hzp
hzp=circshift(hzp,[-floor(Hr/2),-floor(Hc/2)]);
H=fft2(hzp);

% plot figure
if nargin == 3
   figure,
   subplot(2,2,1)
   imagesc(abs(H))
   title('Magnitude')
   colorbar
   subplot(2,2,2)
   imagesc(angle(H))
   title('Phase')
   colorbar
   subplot(2,2,3)
   imagesc(real(H))
   title('Real')
   colorbar
   subplot(2,2,4)
   imagesc(imag(H))
   title('Imaginary')
   colorbar
end

% save the figure without plotting
if nargin == 4
   f = figure('visible','off');
   subplot(2,2,1)
   imagesc(abs(H))
   title('Magnitude')
   colorbar
   subplot(2,2,2)
   imagesc(angle(H))
   title('Phase')
   colorbar
   subplot(2,2,3)
   imagesc(real(H))
   title('Real')
   colorbar
   subplot(2,2,4)
   imagesc(imag(H))
   title('Imaginary')
   colorbar
   print('-depsc','-r150',sprintf('Spect_%s.eps', FigName));
end

 
end