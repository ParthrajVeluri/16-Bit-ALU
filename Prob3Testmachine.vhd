library ieee; 
use ieee.std_logic_1164.all;
entity Prob3Testmachine is 
	port
	(
		clk : in std_logic;
		reset : in std_logic;
		student_id : out std_logic_vector(3 downto 0);
		current_state : out std_logic_vector(3 downto 0)
	);
end entity; 

architecture fsm of Prob3Testmachine is 
	-- a 
	type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
	-- b
	signal yfsm : state_type; 
begin 
	process(clk, reset)
	begin 
		if reset = '1' then
			yfsm <= s8;
		elsif (clk'event and clk = '1') then 
			-- next state based off current state and input
			case yfsm is 
				when s0 => 
					yfsm <= s1;
				when s1 => 
					yfsm <= s2;
				when s2 => 
					yfsm <= s3;
				when s3 => 
					yfsm <= s4;
				when s4 =>
					yfsm <= s5;
				when s5 => 
					yfsm <= s6;
				when s6 => 
					yfsm <= s7;
				when s7 => 
					yfsm <= s8;
				when s8 => 
					yfsm <= s0;
			end case;
		end if;
	end process;
	
process (yfsm)
begin
	if reset = '1' then
		student_id <= "0101";
	else 
		case yfsm is
			when s0 => 
				student_id <= "0101";
				current_state <= "0000";
			when s1 => 
				student_id <= "0000";
				current_state <= "0001";
			when s2 => 
				student_id <= "0001";
				current_state <= "0010";
			when s3 => 
				student_id <= "0000";
				current_state <= "0011";
			when s4 => 
				student_id <= "0011";
				current_state <= "0100";
			when s5 => 
				student_id <= "0001";
				current_state <= "0101";
			when s6 => 
				student_id <= "0111";
				current_state <= "0110";
			when s7 => 
				student_id <= "0111";
				current_state <= "0111";
			when s8 => 
				student_id <= "0011";
				current_state <= "1000";
	end case; 
end if;
end process;
end fsm;
	
			

