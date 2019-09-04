function [res] = egalisation(img)
   f=imread(img);
   [w h c] = size(f);
   I = f;
   if c == 3
       I = rgb2gray(f);
   end
   I = double(I);
   H = zeros(256);
   HC = zeros(256);
   taille = w*h;
   for m = 1:w
       for n = 1:h
           val = I(m, n);
           H(val + 1) = H(val + 1) + 1;
       end
   end
   HC(1) = H(1);
   for m = 2:256
       HC(m) = HC(m-1) + H(m);
   end
   for m = 1:w
       for n = 1:h
           val = I(m, n);
           res(m, n) = 255*HC(val+1)/taille;
       end
   end
   res = uint8(res);
   
    
end