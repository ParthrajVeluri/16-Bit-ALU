library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
port(Clock : in std_logic;
	A,B: in unsigned(7 DOWNTO 0 );
	OP : in unsigned(15 downto 0);
	Neg: out std_logic;
	R1 : out unsigned(3 downto 0);
	R2 : out unsigned(3 downto 0));
end ALU;

architecture calculation of ALU is
	signal Reg1,Reg2,Result : unsigned(7 downto 0):=(others=>'0');
	signal Reg4 : unsigned(0 to 7);
begin
	Reg1<=A;
	Reg2<=B;
process(Clock,OP)
begin
	if(rising_edge(Clock))THEN
		neg <= '0';
		case OP is
			When "0000000000000001"=> --ADD
				result<=reg1 + reg2;
			When "0000000000000010"=> --SUB
				result<=reg1 - reg2;
					if(reg2 > reg1) then 
						result <= reg2 - reg1; 
						neg<='1';
					else 
						result <= reg1 - reg2;
						neg<='0';
					end if;
			When "0000000000000100"=> --NOT
				Result<=NOT(Reg2);
			When "0000000000001000"=> --NAND
				Result<=NOT(Reg1 AND Reg2);
			When "0000000000010000"=> --NOR
				Result<=NOT(Reg1 OR Reg2);
			When "0000000000100000"=> --AND
				Result<=Reg1 AND Reg2; 
			When "0000000001000000"=> --OR
				Result<=Reg1 OR Reg2;
			When "0000000010000000"=> --XOR
				Result<=Reg1 XOR Reg2;
			When "0000000100000000"=> --XNOR
				Result<=Reg1 XNOR Reg2; 
			When OTHERS =>
		end case;
	end if;
end process;
R1<=Result(3 downto 0);
R2<=Result(7 downto 4);
end calculation;