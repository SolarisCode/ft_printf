# ft_printf

The first function ever to use in C printf() from the standard input/output library,
I have decided to created my own ft_printf() as I was very curious how it works
and I wanted to get a better understanding of the variadic function concept and how to use its macros.
I have implemented all of these specifiers `cspdiuxX%` in addition to any combination
of these flags `-0.#+space and width` in my function.

## Here a small explaination of the specifiers

• %c Prints a single character.<br />
• %s Prints a string (as defined by the common C convention).
• %p The void * pointer argument has to be printed in hexadecimal format.
• %d Prints a decimal (base 10) number.
• %i Prints an integer in base 10.
• %u Prints an unsigned decimal (base 10) number.
• %x Prints a number in hexadecimal (base 16) lowercase format.
• %X Prints a number in hexadecimal (base 16) uppercase format.
• %% Prints a percent sign.
