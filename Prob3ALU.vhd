library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Prob3ALU is
port(Clock : in std_logic;
	A,B: in unsigned(7 DOWNTO 0 );
	OP : in unsigned(15 downto 0);
	Result: out unsigned(3 downto 0);
	Student_id : in unsigned (3 downto 0));
end Prob3ALU;

architecture calculation2 of Prob3ALU is
	signal Reg1 : unsigned(3 downto 0);
begin
	Reg1 <= Student_id;
process(Clock,OP)
begin
		result <= reg1;
	if(rising_edge(Clock))THEN
		case OP is
			When "0000000000000001"=> 
				result <= reg1;
			When "0000000000000010"=> 
				result <= reg1;
			When "0000000000000100"=> 
				result <= reg1;
			When "0000000000001000"=> 
				result <= reg1;
			When "0000000000010000"=> 
				result <= reg1;
			When "0000000000100000"=> 
				result <= reg1;
			When "0000000001000000"=> 
				result <= reg1;
			When "0000000010000000"=> 
				result <= reg1;
			When "0000000100000000"=> 
				result <= reg1;
			When OTHERS =>
		end case;
	end if;
end process;
end calculation2;