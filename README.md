# xs3p XSD documentation generator
[README of upstream](https://github.com/bitfehler/xs3p/blob/master/README.md)

### Changes in this fork
+ Merge branch 'Bob4ever-patch-1' from repository https://github.com/Bob4ever/xs3p/tree/Bob4ever-patch-1.
+ Fix encoding issue when load bootstrap on Chrome.
+ Add workspace folder for generated files and some dependence files.
+ Apply 'PrintSampleDocumentation' to enumeration.
+ Expand all CollapseableBox by default.
+ Add built date at the top-right corner of document for version control.
+ Few layout adjustment.

### What in workspace folder
All work and result can complete in folder `~/workspace`.
+ `work.xsd` is the XSD to be convert to document.
+ `work.bat` is batch file use to generate document.
+ `msxsl.exe` is required file when generate document.
+ Double click `msxsl.msi` to install it.
+ Generated document will put in `msxsl-results` folder.

### How to use it
+ Add target XSD content to `work.xsd`.
+ Double click `work.bat`.
+ Generated document will be `~/workspace/msxsl-results/work.xsd.html`.
