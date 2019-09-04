%Fonction qui etirent l'histogramme d'un image donnne avec saturation
function [res]=trans_lineaire_gamma( img,g )

    clc;
    RGB=imread(img);%lecture de l'image et stockage de sa matrice dans la variabe "RGB"
    GRIS=RGB;%Transformation de l'image en image gris
    [m,n,d]=size(GRIS);%recuperation de la taille de l'image
    if d==3
        GRIS=rgb2gray(RGB);
    end
    
    for i=1:m
        
        for j=1:n
            a=double(GRIS(i,j)/255);
            b=double(1/g);
            c=a.^b;
            res(i,j)=uint8(255*c);
            
            
        
        end
    end
    
    
    %affichage du resultat
   figure
   subplot(2,2,1), imshow(GRIS),title('Image Avant transformation');
   subplot(2,2,2), imshow(res),title('Image Apres transformation');
   subplot(2,2,3), imhist(GRIS),title('Histogramme Avant transformation');
   subplot(2,2,4), imhist(res),title('Histogramme Apres transformation');
      
   
end
