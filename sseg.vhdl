	LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY sseg is
	port (bcd : in std_logic_vector(3 DOWNTO 0);
			leds : out std_logic_vector(0 to 6);
			leds_2 : out std_logic_vector(0 to 6);
			neg : in std_logic);
end sseg;

architecture Behavior of sseg is
BEGIN
	PROCESS(bcd, neg)
	BEGIN
		case neg is 
			when '0' => leds_2 <= "0000000";
			when '1' => leds_2 <= "0000001";
		end case; 
		
		case bcd is 			--	abcdefg
			when "0000" =>leds<="1111110";
			when "0001" =>leds<="0110000";
			when "0010" =>leds<="1101101";
			when "0011" =>leds<="1111001";
			when "0100" =>leds<="0110011";
			when "0101" =>leds<="1011011";
			when "0110" =>leds<="1011111";
			when "0111" =>leds<="1110000";
			when "1000" =>leds<="1111111";
			when "1001" =>leds<="1110011";
			when "1010" =>leds<="1110111";
			when "1011" =>leds<="0011111";
			when "1100" =>leds<="1001110";
			when "1101" =>leds<="0111101";
			when "1110" =>leds<="1001111";
			when "1111" =>leds<="1000111";
			when others =>leds<="-------";
		end case;
	end PROCESS;
end Behavior;