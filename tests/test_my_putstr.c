/*
** EPITECH PROJECT, 2023
** test
** File description:
** dop
*/

#include <criterion/redirect.h>
#include <criterion/criterion.h>

int my_putstr(char const *str);

void redirect_all_stdout(void)
{
    cr_redirect_stdout();
    cr_redirect_stderr();
}

Test(my_putstr, simple_string, .init = redirect_all_stdout)
{
    my_putstr("hello\n");
    cr_assert_stdout_eq_str("hello\n");
}