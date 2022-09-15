# ft_printf

The first function ever to use in C printf() from the standard input/output library,
I have decided to created my own ft_printf() library as I was very curious how it works
and I wanted to get a better understanding of the variadic function concept and how to use its macros.
I have implemented all of these specifiers `cspdiuxX%` in addition to any combination
of these flags `-0.#+space and width` in my function.

|Program name|libftprintf.a|
|:----------:|:------------|
|External functs|malloc, free, write,<br />va_start, va_arg, va_copy, va_end|
|Libft|[My own library link](https://github.com/SolarisCode/Libft)|
|Description|A library that contains ft_printf(),<br />function that will mimic the original printf()|

## Here a small explaination of the specifiers

• `%c` Prints a single character.<br />
• `%s` Prints a string (as defined by the common C convention).<br />
• `%p` The void * pointer argument has to be printed in hexadecimal format.<br />
• `%d` Prints a decimal (base 10) number.<br />
• `%i` Prints an integer in base 10.<br />
• `%u` Prints an unsigned decimal (base 10) number.<br />
• `%x` Prints a number in hexadecimal (base 16) lowercase format.<br />
• `%X` Prints a number in hexadecimal (base 16) uppercase format.<br />
• `%%` Prints a percent sign.<br />
