# DHS-Recode-III
## Below are the variables that has no data point in the Recode III, where the relevant variables would be generated as missing in the final micro data. 

1. Antenatal care:
+ M42A During pregnancy – weighed. 
+ M42B During pregnancy - height measured.
+ M42C During pregnancy - blood pressure taken
+ M42D During pregnancy - urine sample taken
+ M42E During pregnancy - blood sample taken

2. Child illness:Drinking and eating pattern during diarrhea
+ H38 Amount offered to drink
+ H39 Amount offered to eat 

3. The id to identify child in hm.dta is missing. 
+ Missing data: b16: Child’s line number in household

3.1. Solutions: 
+ Find the alternatives (ex. s219 in Bangladesh 1999), and construct the microdata set as in the previous Recodes.
+ For those with no alternatives: the final microdata would be the women and child dataset instead of the complete household member dataset, where the indicator generated for household members previous from hm.dta would be constructed using ind.dta/ birth.dta.

