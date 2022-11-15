library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ModifiedALU is
port(Clock : in std_logic;
	A,B: in unsigned(7 DOWNTO 0 );
	OP : in unsigned(15 downto 0);
	Neg: out std_logic;
	R1 : out unsigned(3 downto 0);
	R2 : out unsigned(3 downto 0));
end ModifiedALU;

architecture calculation of ModifiedALU is
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
			When "0000000000000001"=> --|A - B|
				result<=reg1 - reg2;
					if(reg2 > reg1) then 
						result <= reg2 - reg1; 
					else 
						result <= reg1 - reg2;
					end if;
			When "0000000000000010"=> --2s Comp
				result <= not(reg2) + "00000001"; 
			When "0000000000000100"=> --Lower 4 Bits of A with Lower 4 Bits of B
				result <= reg1(7 downto 4)&reg2(3 downto 0);
			When "0000000000001000"=> --Null on Output
				Result <= "--------";
			When "0000000000010000"=> --Decrement B by 5
				Result<=reg2 - "00000101";
			When "0000000000100000"=> --Invert bit significance of A
				result(7) <= reg1(0);
				result(6) <= reg1(1);
				result(5) <= reg1(2);
				result(4) <= reg1(3);
				result(3) <= reg1(4);
				result(2) <= reg1(5);
				result(1) <= reg1(6);
				result(0) <= reg1(7);
			When "0000000001000000"=> --Shift left 3 bits on b, in bit = 1
				Result<= reg2(4 downto 0) & "111";
			When "0000000010000000"=> --Increment A by 3
				Result<= reg1 + "00000011";
			When "0000000100000000"=> --Invert All bits of B
				Result<= not(reg2);
			When OTHERS =>
		end case;
	end if;
end process;
R1<=Result(3 downto 0);
R2<=Result(7 downto 4);
end calculation;