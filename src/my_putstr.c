/*
** EPITECH PROJECT, 2022
** my_putstr
** File description:
** putstr
*/

#include <unistd.h>

void my_putchar(char c)
{
    write(1, &c, 1);   
}

int my_putstr(char const *str)
{
    int n = 0;

    while(str[n] != '\0') {
        my_putchar(str[n]);
        n = n + 1;
    }
    return 0;
}
