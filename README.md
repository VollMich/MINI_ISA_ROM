![image of pcb](https://github.com/VollMich/MINI_ISA_ROM/blob/main/front_new.png?raw=true)

The complete list of possible Adresses is as follows:
|J1-J4|Base Address| Range | Validity | Comment|
|-----|------------|-------|----------|--------|
|0000|F800| F800-FFFF | INVALID | too high for option rom, DO NOT USE!|
|1000|F000| F000-F7FF | INVALID | too high for option rom, DO NOT USE!|
|0100|E800| E800-EFFF | INVALID | too high for option rom, DO NOT USE!|
|1100|E000| E000-E7FF | INVALID | too high for option rom, DO NOT USE!|
|0010|D800| D800-DFFF | VALID   | valid 32K block for a 27C256 Rom    |
|1010|D000| D000-D7FF | VALID   | valid 32K block for a 27C256 Rom    |
|0110|C800| C800-CFFF | VALID   | valid 32K block for a 27C256 Rom    |
|1110|C000| C000-C7FF | VALID   | valid 32K block for a 27C256 Rom    | 
|0001|B800| B800-BFFF | INVALID | too low for option rom, DO NOT USE! |
|1001|B000| B000-B7FF | INVALID | too low for option rom, DO NOT USE! |
|0101|A800| A800-AFFF | INVALID | too low for option rom, DO NOT USE! |
|1101|A000| A000-A7FF | INVALID | too low for option rom, DO NOT USE! |
|0011|9800| 9800-9FFF | INVALID | too low for option rom, DO NOT USE! |
|1011|9000| 9000-97FF | INVALID | too low for option rom, DO NOT USE! |
|0111|8800| 8800-8FFF | INVALID | too low for option rom, DO NOT USE! |
|1111|8000| 8000-87FF | INVALID | too low for option rom, DO NOT USE! |
