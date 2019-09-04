function masque(k, l, n, m, I,J)
    I=imread(I);
    [x, y, z] = size(I);
    if z ~= 1
        I = rgb2gray(I);
    end
   
    
    if n>=x && m>=y
        disp('La taille du bloc doit etre pus petit que l''image'); 
     return;
    end 
    J = zeros(size(I));
   
   
    for i=k:n
        for j=l:m
            J(i, j) = I(i,j);
        end
    end
    figure;
    imshow(J);
    title('Image Synthetique');
    
    
end