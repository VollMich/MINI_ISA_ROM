# MINI_ISA_ROM Card

the original design is from wiretap and it is awesome! He published it a while ago in a [thread on vogons](https://www.vogons.org/viewtopic.php?t=82499). Please do not get confused by my explanations further down. You don't need to understand binary logic to use this Rom adapter card. All you need to know is, that the Jumper settings table on the silk screen of this pcb has been corrected, since wiretap's Jumper settings table was wrong. This PCB can be set according to the table on the card. This was the whole reason for this variant of wiretap's original design. You also need to know: Wiretap's original design is flawless and can be used without problems. It's just the settings table on the silk screen, that can give you a headache. You can use the jumper settings table from this project, to set up wiretap's card and you'll be fine. If you prefer to build a new one with a corrected silk screen, feel free to [download my gerbers](https://github.com/VollMich/MINI_ISA_ROM/raw/main/gerbers.zip).

![image of pcb](https://github.com/VollMich/MINI_ISA_ROM/blob/main/front_new.png?raw=true)

## Why did i modify wiretap's awsome pcb design?
Wiretap's design is flawless except for the jumper table on the silk screen, which doesn't show the correct settings for the card. But his card works great otherwise. I built this version of his PCB to supply it with a proper silk screen. The complete list of possible Adresses is as follows:

|J1-J4|Base Address| Range | Validity | Usable? | Comment |
|-----|------------|-------|----------|---------|---------|
|0000|F800| F800-FFFF | INVALID | too high for option rom, DO NOT USE!||
|1000|F000| F000-F7FF | INVALID | too high for option rom, DO NOT USE!||
|0100|E800| E800-EFFF | INVALID | too high for option rom, DO NOT USE!||
|1100|E000| E000-E7FF | INVALID | too high for option rom, DO NOT USE!||
|**0010**|**D800**| **D800-DFFF** | **VALID**   | valid 32K block for a 27C256 Rom    || 
|**1010**|**D000**| **D000-D7FF** | **VALID**   | valid 32K block for a 27C256 Rom    ||
|**0110**|**C800**| **C800-CFFF** | **VALID**   | valid 32K block for a 27C256 Rom    | If you happen to have built AnotherMaker's version of this PCB, be aware, that there is a signal line missing between J2 on his PCB, this setting doesn't work on his card| 
|**1110**|**C000**| **C000-C7FF** | **VALID**   | valid 32K block for a 27C256 Rom    | If you happen to have built AnotherMaker's version of this PCB, be aware, that there is a signal line missing between J2 on his PCB, this setting doesn't work on his card|  
|0001|B800| B800-BFFF | INVALID | too low for option rom, DO NOT USE! ||
|1001|B000| B000-B7FF | INVALID | too low for option rom, DO NOT USE! ||
|0101|A800| A800-AFFF | INVALID | too low for option rom, DO NOT USE! ||
|1101|A000| A000-A7FF | INVALID | too low for option rom, DO NOT USE! ||
|0011|9800| 9800-9FFF | INVALID | too low for option rom, DO NOT USE! ||
|1011|9000| 9000-97FF | INVALID | too low for option rom, DO NOT USE! ||
|0111|8800| 8800-8FFF | INVALID | too low for option rom, DO NOT USE! ||
|1111|8000| 8000-87FF | INVALID | too low for option rom, DO NOT USE! ||

There are really just four valid jumper settings out of sixteen possible combinations. All the other addresses wouldn't be recognized as option roms or even cause address conflicts with other resources. The reason is the huge rom size of 32K and the designers choice, to map the full size of the rom. The rom is directly attached to ADR0-ADR14 (which is 32K). With this low count of parts, it was kind of mandatory to use ADR15-ADR18 for address comparison. But only four combinations of J1-J4 wich are used to compare to ADR15-ADR18 end up in the address range for option roms.

## How does the address selection work?
The rom is directly connected to ADR0-ADR14 (32K). The Jumpers pins in the jumper block on this card are connected to ADR15-ADR18 left to right. The msb is on the right. The pins are pulled up to 5V by the 10K resistor network. If you set a jumper, the line is pulled down to 0V. The jumpers are connected as follows:

| Jumper (upper pin)| Signal Name| Connected to...| Used for...| Comment |
|-------------------|-----------|----------------|-------------|---------|
|J1                | P0        | 47LS688-PIN2   | pulled up via resistor network, to be compared to ADR15||
|J2                | P1        | 47LS688-PIN4   | pulled up via resistor network, to be compared to ADR16| Watch out if you got hold of AnotherMaker's version of this PCB on PCBWay. This line is missing on his layout, J2 is useless on his card.|
|J3                | P2        | 47LS688-PIN6   | pulled up via resistor network, to be compared to ADR17||
|J4                | P3        | 47LS688-PIN8   | pulled up via resistor network, to be compared to ADR18||

## OK, give me an example
This is the Address C0000, the base address of the memory range for option roms. It's binary representation is: 1100 0000 0000 0000 0000. if you write C0000 differently you get: 1 1000 000000000000000. The four separated bits on the left are connected to the jumper block from right to left. If you read it from right to left, you get 0001. There is one more step to do. You need to invert the value because a set jumper pulls the bit low. It's inverse logic. 
You get 1110. Hooray, this is the jumper setting for C0000.
