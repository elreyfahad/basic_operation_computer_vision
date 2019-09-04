function masquage(img,n,m)
  clc;
 
 i=imread(img);
 [c,n,x]=size(i);
 
 if x==3
     i=rgb2gray(i);
     
 end
 
 im=zeros(size(i));
 im=uint8(im);
 
 for k=100:n
     for j=100:m
         im(k,j)=i(k,j);
     end
 end
 
 imshow(im);
 title('Masque sur image');

end