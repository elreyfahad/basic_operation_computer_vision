
%Fonction qui permet de retourner la luminance et l'equart-type d'un image
%donne en parametre
function [lum,et] = luminance_ecart_type( image )
    clc;
    GRIS=imread(image);%lecture de l'image et stockage de sa matrice dans la variabe "RGB"
    [m,n,d]=size(GRIS);
    if d==3
        
        GRIS=rgb2gray(GRIS);%Transformation de l'image en image gris
        
    end
    
    
    [x,y]=size(GRIS);%recuperation de la taille de l'image
    Occ=imhist(GRIS);
    
    l=0;
    e=0;
    
    for i= 0:255
        
        l=l+(Occ(i+1)*(i));
       
    end
    
    lum=l/(m*n);%la luminance
   
    for j=0:255
        e=e+(Occ(i+1)*((i-lum).^2));
    end
        
        et=sqrt(e/(m*n));%l'equart-type
    
   
end