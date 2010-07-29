# Command line NPA / NPANXX lookup tool

 This tool queries CloudVox's NPA lookup API via the command line, that is all, please carry on :)


## Installation
    sudo gem install npa_lookup

## Usage
    lookup [number]

## Accepts space delimited list of NPA's & NXX's
   *lookup 407
   *lookup 407 321
   *lookup 407474
   *lookup 4074740200 3214740200

## Examples

     dyer:~/dev/number_lookup git:master 
     → ./lookup 415704
     +---------------------------+---------------------------------------------+
     | Data                      | Value                                       |
     +---------------------------+---------------------------------------------+
     | NPA                       | 415                                         |
     | Nxx                       | 704                                         |
     | State                     | CA                                          |
     | Status                    | Allocated                                   |
     | Carrier                   | PAC - WEST TELECOMM, INC.                   |
     +---------------------------+---------------------------------------------+

     
     dyer:~/dev/number_lookup git:master 
     → ./lookup 4074740200
     +---------------------------+-------------------------------------------------------+
     | Data                      | Value                                                 |
     +---------------------------+-------------------------------------------------------+
     | NPA                       | 407                                                   |
     | Nxx                       | 474                                                   |
     | City                      | Sanford                                               |
     | State                     | FL                                                    |
     | Status                    | Allocated                                             |
     | Carrier                   | NEW CINGULAR WIRELESS PCS, LLC - GA                   |
     +---------------------------+-------------------------------------------------------+
     
     
     dyer:~/dev/number_lookup git:master 
     → ./lookup 407
     +--------------------------+-----------------------------+
     | Data                     | Value                       |
     +--------------------------+-----------------------------+
     | NPA                      | 407                         |
     | City                     | Orlando                     |
     | State                    | FL                          |
     | Status                   | Allocated                   |
     +--------------------------+-----------------------------+

