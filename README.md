# ft_printf

The first function ever to be used in C printf() from the standard input/output library,
I have decided to created my own ft_printf() library as I was very curious how it works
and I wanted to get a better understanding of the variadic function concept and how to use its macros.
I have implemented all of these specifiers `cspdiuxX%` in addition to any combination
of these flags `-0.#+space and width` in my function.

>Note: I wasn't allowd to use `swtich` and only the use the bellow external functions as a challenge.

|Program name|libftprintf.a|
|:----------:|:------------|
|External functs|malloc, free, write,<br />va_start, va_arg, va_copy, va_end|
|Libft|[My own library](https://github.com/SolarisCode/Libft)|
|Description|A library that contains ft_printf(),<br />a function that will mimic the original printf()|

## Here is a small explanation of all the specifiers:

• `%c` Prints a single character.<br />
• `%s` Prints a string (as defined by the common C convention).<br />
• `%p` The void * pointer argument has to be printed in hexadecimal format.<br />
• `%d` Prints a decimal (base 10) number.<br />
• `%i` Prints an integer in base 10.<br />
• `%u` Prints an unsigned decimal (base 10) number.<br />
• `%x` Prints a number in hexadecimal (base 16) lowercase format.<br />
• `%X` Prints a number in hexadecimal (base 16) uppercase format.<br />
• `%%` Prints a percent sign.<br />

## Here is a small explanation of all the flags:

|Flags|Description|
|:---:|:---------:|
|-|Left-justify within the given field width;<br />Right justification is the default (see width sub-specifier).|
|+|Forces to preceed the result with a plus or minus sign (+ or -)<br />even for positive numbers.<br />By default, only negative numbers are preceded with a - sign.|
|(space)|If no sign is going to be written,<br />a blank space is inserted before the value.|
|#|Used with x or X specifiers the value is preceeded with<br />0, 0x or 0X respectively for values different than zero.|
|0|Left-pads the number with zeroes (0) instead of spaces<br />when padding is specified (see width sub-specifier).|

|Width|Description|
|:---:|:---------:|
|(number)|Minimum number of characters to be printed.<br />If the value to be printed is shorter than this number,<br />the result is padded with blank spaces.<br />The value is not truncated even if the result is larger.|
|*|The width is not specified in the format string,<br />but as an additional integer value argument preceding the argument<br />that has to be formatted.|

|Precision|Description|
|:-------:|:---------:|
|.number|For integer specifiers (d, i, u, x, X): precision specifies the minimum number of digits to be written.<br />If the value to be written is shorter than this number, the result is padded with leading zeros.<br />The value is not truncated even if the result is longer.<br />A precision of 0 means that no character is written for the value 0.<br />For s: this is the maximum number of characters to be printed.<br />By default all characters are printed until the ending null character is encountered.<br />If the period is specified without an explicit value for precision, 0 is assumed.|
|.*|The precision is not specified in the format string, but as an additional integer value argument preceding<br />the argument that has to be formatted.|

## How to install:

Clone the repository in the desired directory.
```shell
git clone https://github.com/SolarisCode/ft_printf.git
```
Then use `make` inside the pervious directory either with `all` or `bonus` rule if you want to use the flags.
```shell
make all
```
>or
```shell
make bouns
```
The pervious command will result in the static library file `libftprintf.a` and you can include it<br />with the header file `ft_printf.h` or `ft_printf_bonus.h` if you make with bonus<br />while you complie your own programs like below:
```shell
gcc main.c -L"the directory that has the library" -I"the directory that has the include file" -lprintf
```
Feel free to contact me if you have a better way to implement any of the specifiers or the flags :)
