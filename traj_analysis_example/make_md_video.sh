#!/bin/bash

mkdir ./md_video; cd ./md_video;
travis -i ../travis_md_video_input.txt -p ../*traj.xyz > output.dat
#echo "Topology recognition via fast domain decomposition ... done";
#echo "Unwrapping ... done";
#echo "Saving output trajectory: 2x2x1 unit cell ... done";
#echo ".........................................";
#echo "TRAJECTORY PROCCESSED SUCCESSFULLY!";

rm ./*.dot ./*no_H.png ./*H2O.png; mv ./*.png ./img.png