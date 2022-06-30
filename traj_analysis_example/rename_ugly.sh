#!/bin/bash

cd rdf_fh_fh; 
for i in {1..8}; do mv ./rdf_timedev*_ref$i.csv ./rdf_fh_fh_timedev_ref_$i.csv; done
mv ./rdf_C*.csv ./rdf_fh_fh.csv;
cd ..

cd rdf_fh_stand; 
for i in {1..8}; do mv ./rdf_timedev*_ref$i.csv ./rdf_fh_stand_timedev_ref_$i.csv; done
mv ./rdf_C*.csv ./rdf_fh_stand.csv;
cd ..

for i in ll_cdf_adf ul_cdf_adf;
do cd $i;
mv ./*_correlation.dat ./"$i"_correlation.csv;
mv ./*triples.csv ./$i.csv;
mv ./adf_*.csv ./adf.csv;
mv ./rdf_*.csv ./rdf.csv;
cd ..
done

for i in ll_cdf_rdf ul_cdf_rdf;
do cd $i;
mv ./*_correlation.dat ./"$i"_correlation.csv;
mv ./*triples.csv ./$i.csv;
cd ..
done