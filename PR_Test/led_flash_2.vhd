library IEEE;
use IEEE.std_logic_1164.all;

entity led_flash is
    port(
       clk				: in std_logic;
       dir				: in STD_LOGIC;		 
       leds	: out STD_LOGIC_VECTOR (3 downto 0));
end led_flash;

architecture behavior of led_flash is
signal max_count:integer := 150000000;
signal count:integer := 0;
begin
process(clk) 
variable count : natural range 0 to max_count;
begin
if (clk='1') then count := count + 1;
	if (dir='1') then
		if count < max_count/7 then
				leds <="0001";  -- 'r'

				--count := count + 1;		
		elsif (count > max_count/7 and count < 2*(max_count/7)) then
				leds <="0011";  -- 'r'

				--count := count + 1;
		elsif (count > 2*(max_count/7) and count < 3*(max_count/7)) then
				leds <="0111";  -- 'r'

				--count := count + 1;
		elsif (count > 3*(max_count/7) and count < 4*(max_count/7)) then
				leds <="1111";  -- 'r'
		 
				--count := count + 1;
		elsif (count > 4*(max_count/7) and count < 5*(max_count/7)) then
				leds <="1110";  -- 'r'
		 
				
		elsif (count > 5*(max_count/7)and count < 6*(max_count/7)) then
				leds <="1100";  -- 'r'
		 
		elsif (count > 6*(max_count/7)) then
				leds <="1000";  -- 'r'
				count :=0;		
		end if;
	elsif (dir='0') then
		if count < max_count/7 then
				leds <="0011";  -- 'r'

				--count := count + 1;		
		elsif (count > max_count/7 and count < 2*(max_count/7)) then
				leds <="0110";  -- 'r'

				--count := count + 1;
		elsif (count > 2*(max_count/7) and count < 3*(max_count/7)) then
				leds <="1100";  -- 'r'

				--count := count + 1;
		elsif (count > 3*(max_count/7) and count < 4*(max_count/7)) then
				leds <="1001";  -- 'r'
		 
				--count := count + 1;
		elsif (count > 4*(max_count/7) and count < 5*(max_count/7)) then
				leds <="1010";  -- 'r'
				
		elsif (count > 5*(max_count/7)and count < 6*(max_count/7)) then
				leds <="0101";  -- 'r'
		 
		elsif (count > 6*(max_count/7)) then
				leds <="0000";  -- 'r'
				count :=0;		
		end if;		
	end if;
end if;
end process;

end behavior;

