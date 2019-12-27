In this fork I added different functionalities here listed:
* Constant defining
* Module operation
* Circular left and right bitwise shift operation
* Implicit instruction
* For loop support
* Loop control support (continue and break)
* Pointers (* and address control with &)

Also, as funny bonus, an italian based language version!

Here all the keywords listed as a source code of the language.

```
#CONSTANTINA X 3 //constant declaration
numerino y = 5, z; //int declaration
numerino *w = &y; //pointer assigned to a variable address
5+6; //implicit instruction!
z=1;
faicose { //do while loop
  escilo(x); //write
  z = z - 1;
}ancora(z == 0);
entralo(z); //read
finoallafine(y = 0 finlasù 10) //for loop increasing
  escilo(z);
finoallafine(y = 10 finlagiù 0) //for loop decreasing
  entralo(z);
ancora(z > 5) { //while loop
  vediamose(z % 2 == 0) //if selection
    chopchop; //continue
  vediamose(z % 101 == 0)
    brutto; //break
  escilo(losai); //implicit usage
  z = z - 1;
}
```

Future plans:
* Add simple struct structues
* Extend it in translating to MIPS ASM representation
* Make it work using CLang

You can enjoy its use on MACE emulator or try to extend it furthermore!


Credits to [zerbfra/acse](https://github.com/zerbfra/acse)

#ACSE

ACSE (Advanced Compiler System for Education) is a simple compiler de- veloped for educational purpose as a tool for the course “Formal languages and compiler”. ACSE is able to translate a source code written in LanCE 1.3 (Language for Compilers Education) into an assembly for the MACE archi- tecture (see the MACE documentation in Chapter 3). Figure 1.1 shows the components mentioned above and their interaction.

_This version works also under Mac OSX Yosemite and El Capitan (edited some files to work with new version of gcc etc...)_

ACSE was provided to students in "Formal Languages and Compilers (FLC)" course at Politecnico di Milano.

You can navigate through the different branches of this repository to see the different exercises I made in order to prepare for the exam.

Here are my notes: [Notes](NOTES.md)

## How to

To install the ACSE compiler type in the console: `make`

To compile some examples (located in the directory ./tests) type: `make tests`

In order to use the compiler/assembler/executor at first you have
to export the directory ./bin in your current PATH as follows:
``export PATH=`pwd`/bin:$PATH``


You can compile and run new Lance programs in this way (suppose you
have saved a Lance program in 'myprog.src'):

`acse myprog.src myprog.asm`

`asm myprog.asm myprog.o`

`mace myprog.o`
