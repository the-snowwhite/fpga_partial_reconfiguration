library IEEE;
use IEEE.std_logic_1164.all;

entity led_flash is
    port(
       clk				: in std_logic;
       dir				: in STD_LOGIC;		 
       leds	: out STD_LOGIC_VECTOR (3 downto 0));
end led_flash;

architecture behv of led_flash is

	constant max_count : natural := 50000000;
		 
 
begin 
	led_flash: process(clk)
		variable count : natural range 0 to max_count;
			begin
				if rising_edge(clk) then count := count +1;
					if dir = '1' then
						if (count < max_count/5) then													-- bleibt hier hängen und kommt nicht mehr raus.
							leds <= "0001";
--							count := count + 1;
						elsif (count > max_count/5 and count < 2*(max_count/5)) then
							leds <= "0010";
--							count := count + 1;
						elsif (count > 2*(max_count/5) and count < 3*(max_count/5)) then
							leds <= "0100";
--							count := count + 1;
						elsif (count > 3*(max_count/5) and count < 4*(max_count/5)) then
							leds <= "1000";
--							count := count + 1;
						else
							leds <= "0001";
							count := 0;
						end if;		
					else
						if count < max_count/5 then													-- bleibt hier hängen und kommt nicht mehr raus.
--							count := count + 1;
							leds <= "1000";
						elsif (count > max_count/5 and count < 2*(max_count/5)) then
							leds <= "0100";
--							count := count + 1;
						elsif (count > 2*(max_count/5) and count < 3*(max_count/5)) then
							leds <= "0010";
--							count := count + 1;
						elsif (count > 3*(max_count/5) and count < 4*(max_count/5)) then
							leds <= "0001";
--							count := count + 1;
						else
							leds <= "1000";
							count := 0;
						end if;			 
					end if;
				end if; 
	end process led_flash; 

end behv;
	 