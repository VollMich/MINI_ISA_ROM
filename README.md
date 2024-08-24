# MINI_ISA_ROM Card

the original design is from wiretap and it is awesome! He published it a while ago in a [thread on vogons](https://www.vogons.org/viewtopic.php?t=82499). Please do not get confused by my explanations further down. You don't need to understand binary logic to use this Rom adapter card. All you need to know is, that the Jumper settings table on the silk screen of this pcb has been corrected, since wiretap's Jumper settings table was wrong. This PCB can be set according to the table on the card. This was the whole reason for this variant of wiretap's original design. You also need to know: Wiretap's original design is flawless and can be used without problems. It's just the settings table on the silk screen, that can give you a headache. You can use the jumper settings table from this project, to set up wiretap's card and you'll be fine. If you prefer to build a new one with a corrected silk screen, feel free to [download my gerbers](https://github.com/VollMich/MINI_ISA_ROM/raw/main/gerbers.zip).

![image of pcb](https://github.com/VollMich/MINI_ISA_ROM/blob/main/front_new.png?raw=true)

## Why did i modify wiretap's awsome pcb design?
Wiretap's design is flawless except for the jumper table on the silk screen, which doesn't show the correct settings for the card. But his card works great otherwise. I built this version of his PCB to supply it with a proper silk screen. The complete list of possible Adresses is as follows:

|J1-J4|Base Address| Range | Validity | Usable? | Comment |
|-----|------------|-------|----------|---------|---------|
|0000|F800| F8000-FFFFF | INVALID | too high for option rom, DO NOT USE!||
|1000|F000| F0000-F7FFF | INVALID | too high for option rom, DO NOT USE!||
|0100|E800| E8000-EFFFF | INVALID | too high for option rom, DO NOT USE!||
|1100|E000| E0000-E7FFF | INVALID | too high for option rom, DO NOT USE!||
|**0010**|**D800**| **D8000-DFFFF** | **VALID**   | valid 32K block for a 27C256 Rom    || 
|**1010**|**D000**| **D0000-D7FFF** | **VALID**   | valid 32K block for a 27C256 Rom    ||
|**0110**|**C800**| **C8000-CFFFF** | **VALID**   | valid 32K block for a 27C256 Rom    | If you happen to have built AnotherMaker's version of this PCB, be aware, that there is a signal line missing between J2 on his PCB, this setting doesn't work on his card| 
|**1110**|**C000**| **C0000-C7FFF** | **VALID**   | valid 32K block for a 27C256 Rom    | VGA roms often start at C000. If you have a VGA card in your system, this range is probably occupied. If you happen to have built AnotherMaker's version of this PCB, be aware, that there is a signal line missing between J2 on his PCB, this setting doesn't work on his card.|  
|0001|B800| B8000-BFFFF | INVALID | too low for option rom, DO NOT USE! ||
|1001|B000| B0000-B7FFF | INVALID | too low for option rom, DO NOT USE! ||
|0101|A800| A8000-AFFFF | INVALID | too low for option rom, DO NOT USE! ||
|1101|A000| A0000-A7FFF | INVALID | too low for option rom, DO NOT USE! ||
|0011|9800| 98000-9FFFF | INVALID | too low for option rom, DO NOT USE! ||
|1011|9000| 90000-97FFF | INVALID | too low for option rom, DO NOT USE! ||
|0111|8800| 88000-8FFFF | INVALID | too low for option rom, DO NOT USE! ||
|1111|8000| 80000-87FFF | INVALID | too low for option rom, DO NOT USE! ||

There are really just four valid jumper settings out of sixteen possible combinations. All the other addresses wouldn't be recognized as option roms or even cause address conflicts with other resources. The reason is the huge rom size of 32K and the designers choice, to map the full size of the rom. The rom is directly attached to ADR0-ADR14 (which is 32K). With this low count of parts, it was kind of mandatory to use ADR15-ADR18 for address comparison. But only four combinations of J1-J4 wich are used to compare to ADR15-ADR18 end up in the address range for option roms, which is only 128K. There are only four 32K blocks possible in this range. Other cards can set more addresses, because they use smaller roms and hence, smaller blocks like 16K, 8K or even smaller. With this card you can use only one of four valid 32K blocks between C000 and DFFF. 

these are: 

|J1-J4|Base Address| Range | Block size |
|-----|------------|-------|------------|
|**0010**|**D800**| **D8000-DFFFF** | 32K|
|**1010**|**D000**| **D0000-D7FFF** | 32K|
|**0110**|**C800**| **C8000-CFFFF** | 32K|
|**1110**|**C000**| **C0000-C7FFF** | 32K|

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

## On writing a rom to this huge 32K chip (27C256). 
---------------------------------------------------------------------------------
If you just want to write a single rom to your chip, you can do so. Just make sure that your rom is aligned properly. Every rom has a header which contains the length of the rom. The length of the rom must be a multiple of 2K (it's 512B but there are some motherboards, that need the rom size to be a multiple of 2K, so it's best practice to follow this rule). If you downloaded a rom from xtide, it's probably not aligned. At least current binary downloads aren't. You need to run XTIDECFG.EXE to align the rom properly. The tool will pump up the size to the next 2K-border and calculate a proper 3-byte checksum at the end of the rom. Remember that you need to use the version of XTIDECFG.EXE, that was supplied with your roms. If you save the rom to a file, it is ready to be written with your eprom writer. When you are loading the file into your writer, you can select "Clear buffer when loading the file: Clear buffer with 0x00". The checksum does not have to be calculated again. The zeros at the end of the rom will be seen by your system and the range will be occupied, but only the first, properly aligned and properly checksummed area will be recognized as rom. And it will work fine. 

## On writing multiple roms on one chip
No one can stop you from loading multiple roms into the 32K of the 27c256. As long as you align them on 2K-adresses and supply the images with the correct headers and checksums, they will each be recognized as separate rom without a problem.

Happy retrocomputing ;)

Phonox

