LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY Prob3sseg is
	port (bcd : in std_logic_vector(3 DOWNTO 0);
			leds : out std_logic_vector(0 to 6));
end Prob3sseg;

architecture Behavior of Prob3sseg is
BEGIN
	PROCESS(bcd)
	BEGIN
		case bcd is 			--	abcdefg
			when "0000" =>leds<="0010101"; --n 0      --n: 0010101 y: 0111011
			when "0001" =>leds<="0111011"; --y 1		--Output= nnynnyyyn
			when "0010" =>leds<="0111011"; --y 2
			when "0011" =>leds<="0010101"; --n 3
			when "0100" =>leds<="0111011"; --y 4
			when "0101" =>leds<="0010101"; --n 5
			when "0110" =>leds<="0010101"; --n 6
			when "0111" =>leds<="0111011"; --y 7
			when "1000" =>leds<="0111011"; --y 8 
			when "1001" =>leds<="0010101"; --n 9
			when others =>leds<="-------";
		end case;
	end PROCESS;
end Behavior;