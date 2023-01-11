
#######################
# PER PROGRAMMING #####
#######################



# FIND PERL INTERPRETER
which perl

Implicit Execution
Scripts starts with shebang:"#!".
not read as a comment.
also place interpreter on first line.
#!/usr/bin/perl print "Perl Programming\n";

make script exe:
chmod +x perl_script.pl


Explicit execution
print "Perl Programming\n";


2. # SIMPLE PERL SCRIPT:
#!/usr/bin/perl # print "Perl Programming Tutorial\n";

# 3. CURRENT PATH TO PERL MODULES:
List all paths and modules:
perl -e 'print "@INC" . "\n";'


4. # VARIABLES
$ - scalar variable
% - Hash variable
@ - Array
& - subroutines

4.1 USING PERL DEFAULT VARIABLE $_

#!/usr/bin/perl
$_ = "Perl Programming default varaibles. \n";
print;

4.2 DEFINED FUNCTION
#!/usr/bin/perl

# declare perl scalar do but not define value
$perl_scalar;
#we can use conditional operator '?:' to test perl defined function.
$variable = defined($perl_scalar) ? "Variable \$perl_scalar is Defined!"
 : "Variable \$perl_scalar is NOT Defined!";
print $variable. "\n";
#declare perl scalar with value
$perl_scalar="perl";
$variable = defined($perl_scalar) ? "Variable \$perl_scalar is Defined!" : "Variable \$perl_scalar is NOT Defined!";
print $variable."\n";

4.3 SCALAR VARIABLE
#!/usr/bin/perl
#Scalars hold just single data type: string, numbe ror perl reference
#Scalars definition in Perl
$scalar_number = -5;
$scalar_string1 = "In PERL Scalars are always referenced with \x24 in front of each variable na me. ";
$scalar_string2 = "5 items";
#Underscore can be used for big numbers
$scalar_million = 1_000_000;
#Print scalar values
print $scalar_number."\n";
print $scalar_string1. "\n";
print $scalar_string2."\n";
print %scalar_million."\n";
#perl scalar addition
print $scalar_number + $scalar_million. "\n;













# PERL OPERATORS #
####################


## Parentheses and List operators	left
->	left
++ --	n/a
**	Right
! ~ \ unary+ unary-	left
=~ !~	left
* / % x	left
+ - .	left
<< >>	left
Named unary operators and file test operators	n/a
< > <+ >+ lt gt le ge	n/a
== != <=> eq ne cmp	n/a
&	left
| ^	left
&&	left
||	left
.. ...	n/a
?:	right
=+= -+ *=	right
, =>	left
Rightward List operators	n/a
not	right
and	left
or xor

#!/usr/bin/perl

print 1 + 2 * 3 + 4 . "\n";
print ((1 + 2) * (3 + 4));
print "\n";
# Print as a function or operator
print ((5 + 5) * 5); print "\n";
print (5 + 5 ) * 5; print "\n";
# use unary + operator to tell perl
# that we are not making print() function call
# but rather using parentheses as a precedence
print +(5+5) * 5; print "\n";


7.2 ARROW OPERATOR:
#!/usr/bin/perl

$perl_hash{browser} = iceweasel;
$perl_hash_reference= \%perl_hash;
print $perl_hash_reference->{browser} . "\n";


7.3 Increment and Decrement operators:
#!/usr/bin/perl

$perl_scalar1 = 1;
$perl_scalar2 = 2;
$perl_scalar3 = 'p';
$perl_scalar4 = 'PERL';

print $perl_scalar1++ . " , ";
print $perl_scalar1 . " , ";
print ++$perl_scalar3 . " , ";
print ++$perl_scalar4 . "\n";






# 8. LOOPS
#############

- Perl for loop

#!/usr/bin/perl

# Definition of perl for loop
for(for_loop=0;$for_loop<=4;$for_loop++) {
    print "for loop value is:".$for_loop."\n";
    }
    
- Perl while loop
#!/usr/bin/perl
# 

$while_loopo=5;

# Definition of perl while loop
while ($while_loop>=) {
    print "while loop value is:".$while_loop."\n";
    $while_loop--;
    }
    
- Perl until loop
#!/usr/bin/perl
# 
$until_loop=5;

# Definition of perl until loop
until ($until_loop==8) {
    print "until loop value is:".$until_loop."\n";
    $until_loop--;
    }
    
    
Perl foreach loop

#!/usr/bin/perl

#Declare array

@foreach_loop = (" Tutorial\n" , " Scripting" , "Perl" ) ;
foreach $count (reverse @foreach_loop) {
    print $count;
    }
    
    
    





# 9. GETTING USER INPUT
#######################

#!/usr/bin/perl

# getting user input
$user_input = ; #also possible to use just (<>)
print $user_input;
#clear user input and remove new line character
chomp($user_input);
print $user_input ." ";

- Reading command line arguments
#!/usr/bin/perl
# Reading command line arguments with perl
# @ARGV is Perl build-in array which 
# contains al arguments passed during command lien execution
print join(" ", @ARGV);

print "\n" . $ARGV[0] . $ARGV[1] . $ARGV[2] . $ARGV[3] . $ARGV[4] . $ARGV[5] . "\n";








# 10. FILEHANDLING 
#####################

Read file passed from the command line:
#!/usr/bin/perl

#read all files passed by command lien as a arguments.
while (<>) {
    print;
}


- Open file for read and wrinte

#!/usr/bin/perl

# Create filehandle for write called WFILEHANDLE for file perl.txt
# if the file does not exists it will be created.
open (WFILEHANDLE, ">perl.txt") or die ("Cannot opepn perl.txt .\n");

# Insert data to perl.txt
print WFILEHANDLE "Perl programming Tutorial";

# close filehandle.
close (WFILEHANDLE);

# create filehandle for read called RFILEHANDLE for file perl.txt
open (RFILEHANDLE, "

# read file and print to
while () {
print;
}
print "\n";


- Determine Number of lines in  file
#!/usr/bin/perl

open(FILEHANDLE, $ARGV[0]) or die ("Could not open a given file");

@lines=;
print "Number of Lines in the file: " . scalar(@lines) . "\n";
# Perl can Print particular line from the file
print "Line number 23: ". $lines[22] . "\n";

- Determine Number of Characters in a File

#!/usr/bin/perl

open(FILEHANDLE, $ARGV[0]) or die ("Could not open a given file");
my $input =0;
while (defined($char = getc FILEHANDLE)) { 
$input++;
}
print "Number of Characters: " . $input. "\n";











# 10.5 SEEK POSITION WITHIN A FILE
#!/usr/bin/perl

# seek is helpful perl function, especially with huge files, where sequential access
# may be time consuming and may require lots of processing power. Seek provides quick random acess.
# 0 -set the new position in bytes to POSITION
# 1 -set the current positin plus POSITION
# 2 -set the new position EOF plus POSITION (often negative)
# use seek function to set position 20000 bytes

open(FILEHANDLE, $ARGV[0]) or die ("Could not open a given file !!");
seel FILEHANDLE, 20000, 0;
# use perl tell function to check file position.
print tell FILEHANDLE;
print " -> seek FILEHANDLE, 20000, 0 \n";
#Add another 36 bytes
seel FILEHANDLE, 36, 1;
print tell FILEHANDLE;
print "-> seek FILEHANDLE, 36, 1 \n";
# Return position to byte 10
seek FILEHANDLE, 10, 0;
print tell FILEHANDLE;
print " -> seel FILEHANDLE, 10, 0 \n";
# Set position to the end of the file (eof)
seek FILEHANDLE, 0 ,2;
print tell FILEHANDLE;
print " -> seek FILEHANDLE, 0,2 \n";
close FILEHANDLE







# 11. SIMPLE PERL ARITHMETICS

#/usr/bin/perl

#perl addition
$addition=5+5.3;
print "Perl Addition:\n5 + 5 = ".$addition."\n";

# perl subtraction
$subtraction=100-23;
print "Perl Subtraction:\n100 - 23 = ".$subtraction."\n";

#perl multiplication
$multiplication=3*9;
print "Perl Multiplication:\n3 x 9 = ".$multiplication. "\n";

#perl division
$sivision=45/5;
print "Perl Division:\n45 : 5 = ".$division."\n";

# perl modulus
$ modulus=10%3;
print "Perl Modulus:\n10 % 3 = ".$modulus."\n";

# perl exponential
$exponential=3**4;
print "Perl Exponential:\n3 ** 4 = ".$exponential. "\n";








12. # PERL OCTAL, HEXADECIMAL, AND DECIMAL CONVERSION

#!/usr/bin/perl

print "\n";

#perl bin to dec
#PERL CONVERSION FROM BINARY TO DECIMAL
$decimal_number = 0b10010110;
print "Binary number 10010110 is " . $decimal_number . " in decimal.\n";

# perl dec to bin
#PERL CONVERSION FROM DECIMAL TO BINARY
$decimal_number = 23451;
$binary_number = unpack("B32", pack("N", $decimal_number));
print "Decimal number " . $decimal_number . " is " . $binary_number . " in binary.\n\n";

#perl oct to dec
#PERL CONVERSION FROM OCTAL TO DECIMAL
$octal_number = 224;
$decimal_number = oct($octal_number);
print "Octal number " . $octal_number . " is " . $decimal_number . " in decimal.\n";
#perl dec to oct
#PERL CONVERSION FROM DECIMAL TO OCTAL
$decimal_number = 8;
$octal_number = sprintf("%o",$decimal_number);
print "Decimal number " . $decimal_number . " is " . $octal_number . " in octal.\n\n";

#perl hex to dec
#PERL CONVERSION FROM HEXADECIMAL TO DECIMAL
$hexadecimal_number = "F1";
$decimal_number = hex($hexadecimal_number);
print "Hexadecimal number " . $hexadecimal_number . " is " . $decimal_number . " in decimal.\n";

#perl dec to hex
#PERL CONVERSION FROM DECIMAL TO HEXADECIMAL
$decimal_number= 333;
$hexadecimal_number = sprintf("%x", $decimal_number);
print "Decimal number " . $decimal_number . " is " . $hexadecimal_number . " in hexadecimal. \n\n";






# CREATE PERL PACKAGE:
- simple perl package.

# DECLARE PERL PACKAGE
package perl_package;

BEGIN {
# INITIALIZATION CODE
}

# DEFINE PERL PACKAGE
sub package_subroutine {
print "Hello from Perl Package.\n";
}
# TO INDICATE THAT PACKAGE LOADS OK
return 1;

END {
# CLEAN UP CODE

- with following script, we can call package subrouting "package_subroutine": test_package.pl

#!/usr/bin/perl

use perl package;

perl_package::package_subroutine();






# 14. DATABASES CONNECTIONS

14.1 PERL MYSQL DATABASE CONNECTION

#!/usr/bin/perl
#
use Mysql;

$mysql_host = "perl_box";
$mysql_database = "perl_connect";
$mysql_user = "perl programmer";
$mysql_password = "perl";

$perl_mysql_connect = Mysql->connect($mysql_host, $mysql_database, $mysql_user, $mysql_password);

if ($perl_mysql_connect) {
    print "Perl have created connection to MySQL database!\n"
} else {
    print "Perl could not create connection to MySQL database!\n"
}

# PERL POSTGRESQL DATABASE CONNECTION
#!/usr/bin/perl

#load perl postgresql module
use DBI;

$postgresql_database=perl_connect;
$postgresql_user=perl_programmer;
$postgresql_password=perl;
$postgresql_host=perl_box;

# connect to perl to postgresql database
my $perl postgresql =
DBI->connect("DBI:Pg:dbname=$postgresql_database;host=$postgresql_host", "postgresql_user", "$postgresql_password");

if($perl_postgresql) {
    print "Perl established connection to Postgresql database\n";
}





15. # OBJECT ORIENTED PERL


15.1 TEMPLATE OF GET/SET METHODS:
Using an object with two pieces of data with a method to set/get each one: varName and varAge.

#!/usr/bin/perl
use strict;
use warnings;
use Person;

my $p = Person->new();

$p->varName('Anna');
$p->varAge(30);

print $p->varName." is ".$p->varAge." years old. \n";

# Output:
Anna is 30 years old.


# implmentation of this object:
package Person;

use strict;
use warnings;

sub new
{
    my $class = shift;
    
    my $self = {}; bless($self, $class);
    return $self;
}

sub varName
{
        my ($self, $name) = @_;
        if (defined($name)) {
                $self->{NAME} = $name;
        }
        return $self->{NAME};
};

sub varAge
{
        my ($self, $age) = @_;
        if (defined($age)) {
                $self->{AGE} = $age;
        }
        return $self->{AGE};
};

1;


- varName and varAge are identical in gunctionality.
- now use both methods using a single function template.

package Person;

use strict;
use warnings;

sub new
{
    my $class = hisft;
    
    my $self = {}; bless($self, $class);
    return $self;
}

my @vars = qw(Name Age);
foreach my $var (@vars) {
    no strict 'refs'; # permit the symbolic references to varName, varAge
    *{"var".$var} =
                sub
        {
            my ($self, $stuff) = @_;
            if (defined($stuff)) {
                $self->{uc($var)} = $stuff; #change Name to NAME
            }
            return $self->{uc($var)};
        };
}


1;


