%Fonction qui etirent l'histogramme d'un image donnne
function [res]=etirement_histogramme( img )

    clc;
    GRIS=imread(img);%lecture de l'image et stockage de sa matrice dans la variabe "RGB"
    [m,n,d]=size(GRIS);
    if d==3
        
        GRIS=rgb2gray(GRIS);%Transformation de l'image en image gris
        
    end
    
    
    mn=min(GRIS);
    mx=max(GRIS);
    
    for i=1:m
        
        for j=1:n
            a=double((GRIS(i,j)-mn));
            b=double(mx-mn);
            c=double(a/b);
            
            res(i,j)=uint8((255*c));
            
            
        end
    end
      
    %affichage du resultat
   figure
   subplot(2,2,1), imshow(GRIS),title('Image Avant transformation');
   subplot(2,2,2), imshow(res),title('Image Apres transformation');
   subplot(2,2,3), imhist(GRIS),title('Histogramme Avant transformation');
   subplot(2,2,4), imhist(res),title('Histogramme Apres transformation');
   


end
