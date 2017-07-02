function v= axis_dim (X,Y,Z,v)   
nv(:,1) = interp3( X,  v(:,1), v(:,2), v(:,3));%nv =new v, which means new v based on axis positions。 
    nv(:,2) = interp3( Y,  v(:,1), v(:,2), v(:,3));
    nv(:,3) = interp3( Z,  v(:,1), v(:,2), v(:,3));
    v = nv;
    % 以上code抄自isosurface.m(原来的isosurface.m有bug)
end