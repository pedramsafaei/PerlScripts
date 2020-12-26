# PerlScripts

### 1. Check Version
<p> First script is for checking the version of perl. </p>

[check version](checkVersion.pl)
## Quick Notes!

#### Useful Resources
- [perldoc](http://perldoc.perl.org)

#### 1. Let's do this!
<p>The famous Hello World in perl!</p>
```perl
print "Hello World \n";
```
or 
```perl
use feature 'say';
say "Hello World";
```
or 
```perl
use v5.10;
say "Hello World";
```

Use perl in the terminal 

```perl
$ perl -e 'print "Hello World\n"'
```

or to not add the new line 
```perl
$ perl -le 'print "Hello World"'
```
or 
```perl
$ perl -E 'say "Hello World"'
```
<p>use strict and warnings to prevent from using potentially unsafe and get warnings about common errors.</p>
```perl
use strict;
use warnings;
```

#### 2. Comments

Single line 
```perl
# this is a comment
```
multiline 
```perl
=begin comment
comment
yet another comment
more comment
even more comment
=end comment
=cut
```

#### 3. Variables
mark the scalars with ```$``` 

```perl
my $int  = 10;
my $str = "Hello World;
my $ref = \$string; 
```

converting between number and string is really easy in perl, because it does it for you automatically!

```perl
my $str = '10'; # string
my $int = $str + 10; # valid the answer is 20 
```

##### 3.1 operations

String compare
```perl
'Perl' eq 'Perl'; # equivalent
'Perl' nq 'Perl'; # not equivalent
'Perl' lt 'Perl'; # less than
'Perl' gt 'Perl'; # greater than
```
number comapre 
```perl
10 == 10
10 != 10
10 < 10
10 > 10
```

string operations
```perl
# string concatenation 
'Perl' . 'is good';
# string repetition
'nan' * 10;
```

number operations
```perl
# add
10 + 10;
# subtract 
10 - 10;
# multiply
10 * 10;
```

#### 4. Arrays

```perl
my @array = ("Hello"); # create, assign values from a list
my $array_ref = \@array; #refer to the array
# or more short hand-y
my $another_arr_ref = ["Hello"];

# to use the array dereference it

my @content = @{ $array_ref}; # prefix
my @content = @$array_ref; #short hand, leave out braces

# Postfix notation

use v5.24;
my @content = $array_ref->@*;

# access array ref content by index

my @array = qw(one two three);
my $arrayref = [qw (one two three)];

my $one = $array[0];
my $one = $arrayref->[0];
```