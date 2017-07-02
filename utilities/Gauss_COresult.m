gauss_dmatrix207
  Pg=Pg+Pg';
  D=diag(Pg);
  Pg=Pg-diag(D/2) ;
    gauss_207;
  elec_elec_gaussian_expand; 
  STVexpand;
  max(max(max(max(abs(two_elec_gauss-two_elec)))))