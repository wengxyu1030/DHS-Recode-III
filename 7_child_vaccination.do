
******************************
*** Child vaccination ********
******************************   

*Apr2022 add h1 as denominator condition

*c_measles	child			Child received measles1/MMR1 vaccination
	gen c_measles  =. 
	replace c_measles = 1 if (h9 ==1 | h9 ==2 | h9 ==3)  
	replace c_measles = 0 if h9 ==0  	
			replace c_measles = 0 if missing(c_measles) & !missing(h1)		
			replace c_measles  = . if h9 > 3
			
	if inlist(name,"Azerbaijan2006"){
		replace c_measles = 1 if (h9 ==1 | h9 ==2 | h9 ==3 | inrange(s506mr,1,3))  
     	replace c_measles = 0 if h9 ==0 & s506mr == 0 
			replace c_measles = 0 if missing(c_measles) & !missing(h1)		
			replace c_measles  = . if h9 > 3 | s506mr > 3		
		}
		
	if inlist(name,"Kazakhstan1999"){
		drop c_measles 
		gen c_measles  =. 
		replace c_measles = 1 if inrange(h9,1,3) | inrange(smumps,1,3)
		replace c_measles = 0 if h9 ==0 & smumps==0	
			replace c_measles = 0 if missing(c_measles) & !missing(h1)		
			replace c_measles  = . if h9 > 3 | smumps > 3			
	}	
	
*c_dpt1	child	Child received DPT1/Pentavalent 1 vaccination	
	gen c_dpt1  = . 
	replace c_dpt1  = 1 if (h3 ==1 | h3 ==2 | h3 ==3)  
	replace c_dpt1  = 0 if h3 ==0  
		replace c_dpt1  = 0 if missing(c_dpt1) & !missing(h1)
		replace c_dpt1  = . if h3 > 3	
			
*c_dpt2	child			Child received DPT2/Pentavalent2 vaccination				
	gen c_dpt2  = . 
	replace c_dpt2  = 1 if (h5 ==1 | h5 ==2 | h5 ==3)  
	replace c_dpt2  = 0 if h5 ==0  
		replace c_dpt2  = 0 if missing(c_dpt2) & !missing(h1)
		replace c_dpt2  = . if h5 > 3	
			
*c_dpt3	child			Child received DPT3/Pentavalent3 vaccination				
	gen c_dpt3  = . 
	replace c_dpt3  = 1 if (h7 ==1 | h7 ==2 | h7 ==3)  
	replace c_dpt3  = 0 if h7 ==0  
		replace c_dpt3  = 0 if missing(c_dpt3) & !missing(h1)
		replace c_dpt3  = . if h7 > 3
			
	if inlist(name,"Chad1996"){
		drop c_dpt1 c_dpt2  
		gen c_dpt1 =.
		replace c_dpt1  = 1 if inrange(h3,1,3)|inrange(shx1,1,3)
		replace c_dpt1  = 0 if h3 == 0 & shx1 == 0 
		replace c_dpt1  = 0 if missing(c_dpt1) & !missing(h1)
		replace c_dpt1  = . if h3 > 3 | shx1 > 3	
		
		gen c_dpt2 =.
		replace c_dpt2  = 1 if inrange(h5,1,3)|inrange(shx2,1,3)
		replace c_dpt2  = 0 if h5 == 0 & shx2 == 0  
		replace c_dpt2  = 0 if missing(c_dpt2) & !missing(h1)
		replace c_dpt2  = . if h5 > 3 | shx2 > 3		
	} 	
*c_bcg	child			Child received BCG vaccination
	gen c_bcg  = . 
	replace c_bcg  = 1 if (h2 ==1 | h2 ==2 | h2 ==3)  
	replace c_bcg  = 0 if h2 ==0  		
		replace c_bcg  = 0 if missing(c_bcg) & !missing(h1)
		replace c_bcg  = . if h2 > 3
			
	gen cpolio0  = .  
	replace cpolio0  = 1 if (h0 ==1 | h0 ==2 | h0 ==3)  
	replace cpolio0  = 0 if h0 ==0  
			replace cpolio0  = 0 if missing(cpolio0) & !missing(h1)
			replace cpolio0  = . if h0 > 3
			
*c_polio1	child			Child received polio1/OPV1 vaccination
	gen c_polio1  = .  
	replace c_polio1  = 1 if (h4 ==1 | h4 ==2 | h4 ==3)  
	replace c_polio1  = 0 if h4 ==0  
			replace c_polio1  = 0 if missing(c_polio1) & !missing(h1)
			replace c_polio1  = . if h4 > 3
			
*c_polio2	child			Child received polio2/OPV2 vaccination				
	gen c_polio2  = .  
	replace c_polio2  = 1 if (h6 ==1 | h6 ==2 | h6 ==3)  
	replace c_polio2  = 0 if h6 ==0  
			replace c_polio2  = 0 if missing(c_polio2) & !missing(h1)
			replace c_polio2  = . if h6 > 3
			
*c_polio3	child			Child received polio3/OPV3 vaccination				
	gen c_polio3  = .  
	replace c_polio3  = 1 if (h8 ==1 | h8 ==2 | h8 ==3)  
	replace c_polio3  = 0 if h8 ==0  
			replace c_polio3  = 0 if missing(c_polio3) & !missing(h1)
			replace c_polio3  = . if h8 > 3	
			
	if inlist(name,"Gabon2000"){
		drop c_dpt1 c_dpt2 c_dpt3  c_polio1 c_polio2 c_polio3
		gen c_dpt1 =.
		replace c_dpt1  = 1 if inrange(h3,1,3)|inrange(s457t1,1,3)
		replace c_dpt1  = 0 if h3 == 0 & s457t1 == 0  
			replace c_dpt1  = 0 if missing(c_dpt1) & !missing(h1)
			replace c_dpt1  = . if h3 > 3 | s457t1 > 3
			
		gen c_dpt2 =.
		replace c_dpt2  = 1 if inrange(h5,1,3)|inrange(s457t2,1,3)
		replace c_dpt2  = 0 if h5 == 0 & s457t2 == 0  
			replace c_dpt2  = 0 if missing(c_dpt2) & !missing(h1)
			replace c_dpt2  = . if h5 > 3 | s457t2 > 3		
		
		gen c_dpt3 =.
		replace c_dpt3  = 1 if inrange(h7,1,3)|inrange(s457t3,1,3)
		replace c_dpt3  = 0 if h7 == 0 & s457t3 == 0  
			replace c_dpt3  = 0 if missing(c_dpt3) & !missing(h1)
			replace c_dpt3  = . if h7 > 3 | s457t3 > 3

		gen c_polio1  = .  
		replace c_polio1  = 1 if inrange(h4,1,3) | inrange(s457t1,1,3)  
		replace c_polio1  = 0 if h4 ==0 & s457t1==0
			replace c_polio1  = 0 if missing(c_polio1) & !missing(h1)
			replace c_polio1  = . if h4 > 3 | s457t1 > 3
		gen c_polio2  = .  
		replace c_polio2  = 1 if inrange(h6,1,3) | inrange(s457t2,1,3)  
		replace c_polio2  = 0 if h6 ==0  & s457t2==0
			replace c_polio2  = 0 if missing(c_polio2) & !missing(h1)
			replace c_polio2  = . if h6 > 3 | s457t2 > 3	
		gen c_polio3  = .  
		replace c_polio3  = 1 if inrange(h8,1,3) | inrange(s457t3,1,3)  
		replace c_polio3  = 0 if h8 ==0  & s457t3==0	
			replace c_polio3  = 0 if missing(c_polio3) & !missing(h1)
			replace c_polio3  = . if h8 > 3	| s457t3 > 3		
	}	
	
 	if inlist(name,"Uzbekistan1996"){
		drop c_bcg c_measles cpolio0 c_polio1 c_polio2 c_polio3 c_dpt1 c_dpt2 c_dpt3
		
		gen c_bcg  = . 
		replace c_bcg  = 1 if inrange(h2,1,3)|inrange(s4b,1,3)  
		replace c_bcg  = 0 if h2 ==0  & s4b == 0  	
			replace c_bcg  = 0 if missing(c_bcg) & !missing(h1)
			replace c_bcg  = . if h2 > 3 | s4b > 3		
		gen c_measles  =. 
		replace c_measles = 1 if inrange(h9,1,3) | inrange(s4m,1,3)  
		replace c_measles = 0 if h9 ==0 & s4m==0
			replace c_measles = 0 if missing(c_measles) & !missing(h1)		
			replace c_measles  = . if h9 > 3 | s4m > 3
		gen cpolio0  = .  
		replace cpolio0  = 1 if inrange(h0,1,3) | inrange(s4p0,1,3)  
		replace cpolio0  = 0 if h0 ==0  & s4p0==0
			replace cpolio0  = 0 if missing(cpolio0) & !missing(h1)
			replace cpolio0  = . if h0 > 3 | s4p0 > 3
		gen c_polio1  = .  
		replace c_polio1  = 1 if inrange(h4,1,3) | inrange(s4p1,1,3)  
		replace c_polio1  = 0 if h4 ==0 & s4p1==0
			replace c_polio1  = 0 if missing(c_polio1) & !missing(h1)
			replace c_polio1  = . if h4 > 3 | s4p1 > 3
		gen c_polio2  = .  
		replace c_polio2  = 1 if inrange(h6,1,3) | inrange(s4p2,1,3)  
		replace c_polio2  = 0 if h6 ==0  & s4p2==0
			replace c_polio2  = 0 if missing(c_polio2) & !missing(h1)
			replace c_polio2  = . if h6 > 3 | s4p2 > 3
		
		gen c_polio3  = .  
		replace c_polio3  = 1 if inrange(h8,1,3) | inrange(s4p3,1,3)  
		replace c_polio3  = 0 if h8 ==0  & s4p3==0
			replace c_polio3  = 0 if missing(c_polio3) & !missing(h1)
			replace c_polio3  = . if h8 > 3	| s4p3 > 3

		gen c_dpt1 =.
		replace c_dpt1  = 1 if inrange(h3,1,3)|inrange(s4d1,1,3)
		replace c_dpt1  = 0 if h3 == 0 & s4d1 == 0  
			replace c_dpt1  = 0 if missing(c_dpt1) & !missing(h1)
			replace c_dpt1  = . if h3 > 3 | s4d1 > 3
		
		gen c_dpt2 =.
		replace c_dpt2  = 1 if inrange(h5,1,3)|inrange(s4d2,1,3)
		replace c_dpt2  = 0 if h5 == 0 & s4d2 == 0  
			replace c_dpt2  = 0 if missing(c_dpt2) & !missing(h1)
			replace c_dpt2  = . if h5 > 3	| s4d2 > 3
		
		gen c_dpt3 =.
		replace c_dpt3  = 1 if inrange(h7,1,3)|inrange(s4d3,1,3)
		replace c_dpt3  = 0 if h7 == 0 & s4d3 == 0  
			replace c_dpt3  = 0 if missing(c_dpt3) & !missing(h1)
			replace c_dpt3  = . if h7 > 3 | s4d3 > 3
		
	}

*c_fullimm	child			Child fully vaccinated						
	gen c_fullimm =.  										/*Note: polio0 is not part of allvacc- see DHS final report*/
	replace c_fullimm =1 if (c_measles==1 & c_dpt1 ==1 & c_dpt2 ==1 & c_dpt3 ==1 & c_bcg ==1 & c_polio1 ==1 & c_polio2 ==1 & c_polio3 ==1)  
	replace c_fullimm =0 if (c_measles==0 | c_dpt1 ==0 | c_dpt2 ==0 | c_dpt3 ==0 | c_bcg ==0 | c_polio1 ==0 | c_polio2 ==0 | c_polio3 ==0)  
	replace c_fullimm =. if b5 ==0  
						
*c_vaczero: Child did not receive any vaccination		
		gen c_vaczero = (c_measles == 0 & c_polio1 == 0 & c_polio2 == 0 & c_polio3 == 0 & c_bcg == 0 & c_dpt1 == 0 & c_dpt2 == 0 & c_dpt3 == 0)
		foreach var in c_measles c_polio1 c_polio2 c_polio3 c_bcg c_dpt1 c_dpt2 c_dpt3{
			replace c_vaczero = . if `var' == .
		}					
		*label var c_vaczero "1 if child did not receive any vaccinations"
