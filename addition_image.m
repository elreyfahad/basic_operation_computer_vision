function addition_image(im1,im2)

   im1=imread(im1);
   im2=imread(im2);

   [w h c] = size(im1);
   if c ~= 1
       im1= rgb2gray(im1);
   end
   
   [x y z] = size(im2);
   if z ~= 1
       im2= rgb2gray(im2);
   end
   
   if size(im1)==size(im2)
       
   
   subplot(2,2,1), imshow(im1),title('Image 1');
   subplot(2,2,2), imshow(im2),title('Image 2');
      
   else
       disp('Les images ont pas la meme taille'); 
     return;
   end
   
    %ADDITION
    
    add = imadd(im1,im2);
    subplot(2,2,3),imshow(add),title('Resultat Addition ');
    
    %SOUSTRACTION
    sub = imsubtract(im1,im2);
    subplot(2,2,4),imshow(sub),title('Resultat Soustraction ');
    
    
    


end