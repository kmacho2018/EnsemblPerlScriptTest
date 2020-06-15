# Perl Script

Perl Script using the latest human data from Ensembl release and the Perl API to convert coordinates on chromosome. (e.g chromosome 10 from 25000 to 30000 )to the same region in GRCh37.

  - Open a terminal.
  - Execute script arguments.
  - See results.

# New Features!

  - Implentation using CURL + Perl Code.

### Samples

```sh
$  perl ensemblPerlScript.pl GRCh37 X:25000..30000 GRCh37
```
```sh
$   perl ensemblPerlScriptCurl.pl GRCh37 X:25000..30000 GRCh37
``` 
### Samples with New region GRCh38
```sh
$   perl ensemblPerlScript.pl GRCh37 X:1000000..1000100:1 GRCh38
``` 
```sh
$   perl ensemblPerlScriptCurl.pl GRCh37 X:1000000..1000100:1 GRCh38
``` 

### Aditional Installation for Mac OS

```sh
$ sudo cpan JSON
```
Ensembl Api documentation -> [Ensembl Api Reference](http://grch37.rest.ensembl.org/)

License
----

MIT