%Lecture image deux image de mm taille
function lecture_img(im1,im2)
  [w h c] = size(im1);
   if c == 3
       im1= rgb2gray(im1);
   end
   
   [x y z] = size(im2);
   if z == 3
       im2= rgb2gray(im2);
   end
   
   if size(im1)==size(im2)
       
   im1=imread(im1);
   im2=imread(im2);
   figure
   subplot(1,2,1), imshow(im1),title('Image 1');
   subplot(1,2,2), imshow(im2),title('Image 2');
   
  
      
   else
       disp('Les images ont pas la meme taille'); 
     return;
   end
   
end