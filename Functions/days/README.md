# days.m
Function to count the total days elapsed in a year according to a given date.
The syntax of the function is `days(<months>, <days>, <leap>)` where `months` is a integer (1-12). `days` is an integer from 1-31 and `leap` accounts for leap years.

## Input
months - month number (1-12).

days - day number of the month (1-31).

leap - indicates if the year is a leapyear or a regular year. `0` for regular and `1` for leap year.

## Output
`nd` - number of days elapsed in the year.

## Example: 
`days(8,4,0)` represents August 8th in a regular year (non-leap year).