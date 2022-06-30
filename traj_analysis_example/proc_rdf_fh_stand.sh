#!/bin/bash

cd ./rdf_fh_stand/; mkdir ./proc; cd ./proc;
travis -i ../../travis_proc_rdf_input.txt -p ../../*_traj.xyz > travis.out;

#echo "Topology recognition via fast domain decomposition ... done";
#echo "Unwrapping ... done";
#echo "Saving output trajectory: NO PBC ... done";
#echo ".........................................";
#echo "TRAJECTORY PROCCESSED SUCCESSFULLY!";

cd ../; travis -i ../travis_rdf_fh_stand_input.txt -p ./proc/*_traj_out.xyz > travis.out; 
#echo "DISTANCES BETWEEN FUNCTIONAL HEADS AND TRIPTYCENE CENTERS SUCCESFULLY CALCULATED!";