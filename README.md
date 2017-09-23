# DFTfun， A density functional theory solver
This code used to be uploaded in CodePlex, but since Microsoft is shutting down CodePlex, this code is transfered to here.

This is a demonstrative code for Hartree-Fock and DFT (X-alpha functional only) learners. A detailed comment section is written inside the code, so that readers can comprehend the algorithm underlaying DFT and HF. 
This code can calculate molecules involving second and third row atoms using my own implementation of Gassian basis set integration functions. 
The code also provide functionality to extract and visualize molecular orbital, electron density and wavefunction etc from the calculated result. 
For people who are interested in molecular geometry computing demonstation, the BFGS and GDIIS optimizer are implemented in Chem-kit repositry of my github account. (I am not plan to implement analytical energy gradient, since without using compiler level optimization, the calculation speed will be too slow to be useful anyway)
Calculation of energy in HF level should be exactly consistent with Gaussian software. while DFT calculation will be slightly different from Gaussian software due to different defination of density functinal integration grid (my integration grid is not truncated and are coarser).
