library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity intrare1 is
	port(a0,b0,clk,reset:in std_logic;
	c0:out std_logic);
end intrare1;  												 --intrare 1
-----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity iesire1 is
	port(a1,b1,clk,reset:in std_logic;
	c1:out std_logic);
end iesire1;												 --iesire1
-----------------------------------------------------------------------------
architecture arh of intrare1 is

type stare_t is (s00,s01,s10,s11);
signal stare,next_stare:stare_t;

begin
	actualizare:process(clk,reset)
	begin
		if(reset='1') then
			stare<=s00;
		elsif(clk'event and clk='1') then
			stare<=next_stare;
		end if;
		end process;
	tranzitii:process(a0,b0,stare)
	variable no_car:integer:=0;
	begin 
		case stare is
			when s00=>
			if(a0='0' and b0='0') then
				next_stare<=s00;c0<='0';
			elsif(a0='0' and b0='1') then
				next_stare<=s01;c0<='0';
			elsif(a0='1' and b0='0') then
				next_stare<=s10;c0<='0';
			elsif(a0='1'and b0='1') then
				next_stare<=s00;c0<='0';
			end if;
		    when s01=>
			if(a0='0' and b0='0' and no_car=0) then
				next_stare<=s00;c0<='1';no_car:=0;
			elsif(a0='0' and b0='0' and no_car=1) then
				next_stare<=s00;c0<='0';no_car:=0;
			elsif(a0='0' and b0='1') then
				next_stare<=s01;
			elsif(a0='1' and b0='0') then
				next_stare<=s00;
			elsif(a0='1'and b0='1') then
				next_stare<=s11;
			end if;
		    when s10=> 
			if(a0='0' and b0='0') then
				next_stare<=s00;no_car:=1;
			elsif(a0='0' and b0='1') then
				next_stare<=s00;
			elsif(a0='1' and b0='0') then
				next_stare<=s10;
			elsif(a0='1'and b0='1') then
				next_stare<=s11;
			end if;
			when s11=>
			if(a0='0' and b0='0') then
				next_stare<=s00;
			elsif(a0='0' and b0='1') then
				next_stare<=s01;
			elsif(a0='1' and b0='0') then
				next_stare<=s10;
			elsif(a0='1'and b0='1') then
				next_stare<=s11;
			end if;
			end case;
			end process;
end architecture; 									--arhitectura intrare1
----------------------------------------------------------------------



architecture arh of iesire1 is

type stare_t is (s00,s01,s10,s11);
signal stare,next_stare:stare_t;

begin
	actualizare:process(clk,reset)
	begin
		if(reset='1') then
			stare<=s00;
		elsif(clk'event and clk='1') then
			stare<=next_stare;
		end if;
		end process;
	tranzitii:process(a1,b1,stare)
	variable no_car:integer:=0;
	begin 
		case stare is
			when s00=>
			if(a1='0' and b1='0') then
				next_stare<=s00;c1<='0';
			elsif(a1='0' and b1='1') then
				next_stare<=s01;c1<='0';
			elsif(a1='1' and b1='0') then
				next_stare<=s10;c1<='0';
			elsif(a1='1'and b1='1') then
				next_stare<=s00;c1<='0';
			end if;
		    when s01=>
			if(a1='0' and b1='0') then
				next_stare<=s00;no_car:=1;
			elsif(a1='0' and b1='1') then
				next_stare<=s01;
			elsif(a1='1' and b1='0') then
				next_stare<=s00;
			elsif(a1='1'and b1='1') then
				next_stare<=s11;
			end if;
		    when s10=> 
			if(a1='0' and b1='0' and no_car=0) then
				next_stare<=s00;c1<='1';no_car:=0; 
			elsif(a1='0' and b1='0' and no_car=1) then 
				next_stare<=s00;c1<='0';no_car:=0;
			elsif(a1='0' and b1='1') then
				next_stare<=s00;
			elsif(a1='1' and b1='0') then
				next_stare<=s10;
			elsif(a1='1'and b1='1') then
				next_stare<=s00;
			end if;
			when s11=>
			if(a1='0' and b1='0') then
				next_stare<=s00;
			elsif(a1='0' and b1='1') then
				next_stare<=s01;
			elsif(a1='1' and b1='0') then
				next_stare<=s10;
			elsif(a1='1'and b1='1') then
				next_stare<=s11;
			end if;
			end case;
			end process;
end architecture; 
														   --architectura iesire1
---------------------------------------------------------------------------------




library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity intrare2 is
	port(a2,b2,clk,reset:in std_logic;
	c2:out std_logic);
end intrare2; 												   --intrare2
---------------------------------------------------------------------------------------
architecture arh1 of intrare2 is

type stare_t is (s00,s01,s10,s11);
signal stare,next_stare:stare_t;

begin
	actualizare:process(clk,reset)
	begin
		if(reset='1') then
			stare<=s00;
		elsif(clk'event and clk='1') then
			stare<=next_stare;
		end if;
		end process;
	tranzitii:process(a2,b2,stare)
	variable no_car:integer:=0;
	begin 
		case stare is
			when s00=>
			if(a2='0' and b2='0') then
				next_stare<=s00;c2<='0';
			elsif(a2='0' and b2='1') then
				next_stare<=s01;c2<='0';
			elsif(a2='1' and b2='0') then
				next_stare<=s10;c2<='0';
			elsif(a2='1'and b2='1') then
				next_stare<=s00;c2<='0';
			end if;
		    when s01=>
			if(a2='0' and b2='0' and no_car=0) then
				next_stare<=s00;c2<='1';no_car:=0;
			elsif(a2='0' and b2='0' and no_car=1) then
				next_stare<=s00;c2<='0';no_car:=0;
			elsif(a2='0' and b2='1') then
				next_stare<=s01;
			elsif(a2='1' and b2='0') then
				next_stare<=s00;
			elsif(a2='1'and b2='1') then
				next_stare<=s11;
			end if;
		    when s10=> 
			if(a2='0' and b2='0') then
				next_stare<=s00;no_car:=1;
			elsif(a2='0' and b2='1') then
				next_stare<=s00;
			elsif(a2='1' and b2='0') then
				next_stare<=s10;
			elsif(a2='1'and b2='1') then
				next_stare<=s11;
			end if;
			when s11=>
			if(a2='0' and b2='0') then
				next_stare<=s00;
			elsif(a2='0' and b2='1') then
				next_stare<=s01;
			elsif(a2='1' and b2='0') then
				next_stare<=s10;
			elsif(a2='1'and b2='1') then
				next_stare<=s11;
			end if;
			end case;
			end process;
end architecture; 


																	  	--arhitectura intrare2										
-------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity iesire2 is
	port(a3,b3,clk,reset:in std_logic;
	c3:out std_logic);
end iesire2;															 --iesire2
-------------------------------------------------------------------------------------------------
architecture arh of iesire2 is

type stare_t is (s00,s01,s10,s11);
signal stare,next_stare:stare_t;

begin
	actualizare:process(clk,reset)
	begin
		if(reset='1') then
			stare<=s00;
		elsif(clk'event and clk='1') then
			stare<=next_stare;
		end if;
		end process;
	tranzitii:process(a3,b3,stare)
	variable no_car:integer:=0;
	begin 
		case stare is
			when s00=>
			if(a3='0' and b3='0') then
				next_stare<=s00;c3<='0';
			elsif(a3='0' and b3='1') then
				next_stare<=s01;c3<='0';
			elsif(a3='1' and b3='0') then
				next_stare<=s10;c3<='0';
			elsif(a3='1'and b3='1') then
				next_stare<=s00;c3<='0';
			end if;
		    when s01=>
			if(a3='0' and b3='0') then
				next_stare<=s00;no_car:=1;
			elsif(a3='0' and b3='1') then
				next_stare<=s01;
			elsif(a3='1' and b3='0') then
				next_stare<=s00;
			elsif(a3='1'and b3='1') then
				next_stare<=s11;
			end if;
		    when s10=> 
			if(a3='0' and b3='0' and no_car=0) then
				next_stare<=s00;c3<='1';no_car:=0;
			elsif(a3='0' and b3='0' and no_car=1) then
				next_stare<=s00;c3<='0';no_car:=0;
			elsif(a3='0' and b3='1') then
				next_stare<=s00;
			elsif(a3='1' and b3='0') then
				next_stare<=s10;
			elsif(a3='1'and b3='1') then
				next_stare<=s00;
			end if;
			when s11=>
			if(a3='0' and b3='0') then
				next_stare<=s00;
			elsif(a3='0' and b3='1') then
				next_stare<=s01;
			elsif(a3='1' and b3='0') then
				next_stare<=s10;
			elsif(a3='1'and b3='1') then
				next_stare<=s11;
			end if;
			end case;
			end process;
end architecture; 
                                                                                 --arhitectura iesire2
------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity numarator is			   --componenta de gestionare numar de parcare(numarator)
	generic(n:integer:=4);
	port(
	senz_a_0,senz_b_0,senz_a_1,senz_b_1,senz_a_2,senz_b_2,senz_a_3,senz_b_3:in std_logic;	 --senz_a_0,senz_b_0(intrarea 1)
	clk:in std_logic;																		 --senz_a_1,senz_b_1(iesirea 1)
	rst:in std_logic;																		 --senz_a_2,senz_b_2(intrarea 2)
	out_0,out_1,out_2,out_3:out std_logic;													 --senz_a_3,senz_b_(iesirea 2)
	q:out std_logic_vector(n-1 downto 0);
	str:out string(1 to 13):="Parcare goala");
end entity;

architecture arh_num of numarator is		   
component intrare1 is
	port(a0,b0,clk,reset:in std_logic;
	c0:out std_logic);
end component;

component iesire1 is
	port(a1,b1,clk,reset:in std_logic;
	c1:out std_logic);
end component;

component intrare2 is
	port(a2,b2,clk,reset:in std_logic;
	c2:out std_logic);
end component;

component iesire2 is
	port(a3,b3,clk,reset:in std_logic;
	c3:out std_logic);
end component;


signal count:std_logic_vector(n-1 downto 0):="0110";
signal n1,n2,n3,n4:std_logic:='0';
signal str1:string(1 to 13):="Avem loc     ";
signal str2:string(1 to 13):="Parcare plina";
signal str3:string(1 to 13):="Parcare goala";

begin
	U1:intrare1 port map(senz_a_0,senz_b_0,clk,rst,n1);				 --facem port map pentru fiecare intrare,iesire pentru a putea transmite datele componentei de gestionare numar locuri de parcare
	U2:iesire1 port map(senz_a_1,senz_b_1,clk,rst,n2);
	U3:intrare2 port map(senz_a_2,senz_b_2,clk,rst,n3);
	U4:iesire2 port map(senz_a_3,senz_b_3,clk,rst,n4);
	process(clk,rst)
	begin
		if(rst='1') then
			count<=(others=>'0'); 
		elsif(clk'event and clk='1') then
		   
			
		  if(n1='0' and n2='0' and n3='0' and n4='0' and count=6) then
			  count<=count;str<=str3;
		  elsif(n1='0' and n2='0' and n3='0' and n4='1' and count=6) then
			  count<=count;str<=str3;
		  elsif(n1='0' and n2='0' and n3='0' and n4='1' and count+1<6) then
			  count<=count+1;str<=str1;										 --iasa o masina pe senzorul 2
		  elsif(n1='0' and n2='0' and n3='0' and n4='1' and count+1=6) then
			  count<="0110";str<=str3;
			  
			
			  
		  elsif(n1='0' and n2='0' and n3='1' and n4='0' and count=0) then			  
			  count<=count;str<=str2; 
		  elsif(n1='0' and n2='0' and n3='1' and n4='0' and count-1>0) then			  
			  count<=count-1;str<=str1;										 --intra o masina pe senzorul 2
		  elsif(n1='0' and n2='0' and n3='1' and n4='0' and count-1=0) then			  
			  count<="0000";str<=str2;  
			  
			  
		  elsif(n1='0' and n2='0' and n3='1' and n4='1') then
			  count<=count;str<=str1; 								  --iasa si intra o masina
			  
			
			  
			  
		   elsif(n1='0' and n2='1' and n3='0'  and n4='0' and count=6) then
			  count<=count;str<=str3; 
		  elsif(n1='0' and n2='1' and n3='0' and n4='0' and count+1<6) then
			  count<=count+1;str<=str1;										 --iasa o masina pe senzorul 1
		  elsif(n1='0' and n2='1' and n3='0' and n4='0' and count+1=6) then
			  count<="0110";str<=str3;  
		  
		  	
			  
			  
		  elsif(n1='0' and n2='1' and n3='0' and n4='1' and count=6) then
			  count<=count;str<=str3;   
		  elsif(n1='0' and n2='1' and n3='0' and n4='1' and count=5) then
			  count<="0000";str<=str3;  
		  elsif(n1='0' and n2='1' and n3='0' and n4='1' and count+2<6) then
			  count<=count+2;str<=str1;  									  --iasa doua masini deodata
		  elsif(n1='0' and n2='1' and n3='0' and n4='1' and count+2>=6) then
			  count<="0110";str<=str3; 
			  
			  
		  elsif(n1='0' and n2='1' and n3='1' and n4='0') then
			  count<=count;str<=str1;							  --iasa si intra 
			  
			  
			
			  
		  elsif(n1='0' and n2='1' and n3='1' and n4='1' and count=6 ) then	   --iasa doua intra una
			  count<=count;str<=str3;   
		  elsif(n1='0' and n2='1' and n3='1' and n4='1' and count+1<6 ) then	   --iasa doua intra una
			  count<=count+1;str<=str1;
		  elsif(n1='0' and n2='1' and n3='1' and n4='1' and count+1=6 ) then	   --iasa doua intra una
			  count<="0110";str<=str3;  
			
			  
		   elsif(n1='1' and n2='0' and n3='0' and n4='0' and count=0) then	 --intra o masina pe primul senzor
			   count<=count;str<=str2;   
		  elsif(n1='1' and n2='0' and n3='0' and n4='0' and count-1>0) then	 --intra o masina pe primul senzor
			   count<=count-1;str<=str1;   
		  elsif(n1='1' and n2='0' and n3='0' and n4='0' and count-1=0) then	 --intra o masina pe primul senzor
			   count<="0000";str<=str2; 
		  
			  
			  
			  
		  elsif(n1='1' and n2='0' and n3='0' and n4='1') then	 --intra si iasa
			  count<=count;str<=str1; 
			  
			
	      elsif(n1='1' and n2='0' and n3='1' and n4='0' and count=0) then
			  count<=count;str<=str2;
		  elsif(n1='1' and n2='0' and n3='1' and n4='0' and count=1) then		--intra doua masini
			  count<="0000";str<=str2;
		  elsif(n1='1' and n2='0' and n3='1' and n4='0' and count-2>0) then
			 count<=count-2;str<=str1;
		  elsif(n1='1' and n2='0' and n3='1' and n4='0' and count-2>=0) then
			  count<="0000";str<=str2; 
		  
			  
			  
			  
		  elsif(n1='1' and n2='0' and n3='1' and n4='1' and count=0) then	  --intra doua iasa una
			  count<=count;str<=str2;  
		  elsif(n1='1' and n2='0' and n3='1' and n4='1' and count-1>0) then	  --intra doua iasa una
			  count<=count-1;str<=str1; 
		  elsif(n1='1' and n2='0' and n3='1' and n4='1' and count-1=0) then	  --intra doua iasa una
			  count<="0000";str<=str2;	  
			  
			  
		  elsif(n1='1' and n2='1' and n3='0' and n4='0') then	 --intra si iasa
			  count<=count;str<=str1; 
			  
			  
			  
		   elsif(n1='1' and n2='1' and n3='0' and n4='1' and count=6) then	  --intra una iasa doua
			  count<=count;str<=str3; 
		  elsif(n1='1' and n2='1' and n3='0' and n4='1' and count+1<6) then	  --intra una iasa doua
			  count<=count+1;str<=str1;
		  elsif(n1='1' and n2='1' and n3='0' and n4='1' and count+1=6) then	  --intra una iasa doua
			  count<="0110";str<=str3;  
			  
			  
		   elsif(n1='1' and n2='1' and n3='1' and n4='0' and count=0) then	  --intra doua iasa una
			  count<=count;str<=str2;   
		  elsif(n1='1' and n2='1' and n3='1' and n4='0' and count-1>0) then	  --intra doua iasa una
			  count<=count-1;str<=str1;
		  elsif(n1='1' and n2='1' and n3='1' and n4='0' and count-1=0) then	  --intra doua iasa una
			  count<="0110";str<=str2;  
			  
			  
		  elsif(n1='1' and n2='1' and n3='1' and n4='1') then				--intra doua si iasa doua
			  count<=count;str<=str1;
			  
		end if;
		end if;
		q<=count;
	end process;
end architecture;