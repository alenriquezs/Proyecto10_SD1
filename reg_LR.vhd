--Left to Right Shift Register
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity reg_LR is
	generic (n: integer:= 4);--<------- nbits
	port(
		Resetn,En,R,clk : in std_logic;
		DataIn : in std_logic_vector(n-1 downto 0);
		Despl: out std_logic_vector (n-1 downto 0));
end reg_LR;

--Architecture
architecture solve of reg_LR is
	-- Signals,Constants,Variables,Components
	begin 
	--Process #1
	process (Resetn, clk)
	--Sequential programming
		begin 
			if resetn = '0' then
				Despl <= (others =>'0');
			elsif clk'event and clk='1' then
				if en='1' then
					if (DataIn = "0001" or DataIn = "0010"
						or DataIn = "0100" or DataIn = "1000") then
							Despl<= R&DataIn(n-1 downto 1);
					else 
						Despl<= DataIn+"0001";
					end if;
				end if;
			end if;
	end process;
	--Process #n...
end solve;

