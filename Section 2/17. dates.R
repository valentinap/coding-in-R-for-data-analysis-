# we have many functions included in R to manage timeo

Sys.time()

Sys.Date()

Sys.timezone()

# we save the result of an operation in an object

today <- Sys.Date()

class(today)

# what operations we can do on a date

today + 1

tomorrow <- today + 1

calendar <- seq(today, by = 7, length.out = 10)

# date parsing

as.Date('Jan-10-1997', format='%b-%d-%Y')

# POSIXct() e POSIXlt()

date1 <- 'April 4, 2020, 12:57:10'
date_format <- '%B %d, %Y, %H:%M:%S'

date_complete <- as.POSIXct(date1, format = date_format, tz='GMT')

date_complete

class(date_complete)


# strptime()

dates <- c('15:10:00 20/03/2015',
          '16:00:35 19/01/2016',
          '10:20:30 05/12/2014',
          '12:15:15 30/06/2015',
          '11:20:35 21/04/2015',
          '15:50:00 11/09/2015'
)

date_pars <- strptime(
        dates,
        '%H:%M:%S %d/%m/%Y',
        tz = 'UTC'
)

date_pars


# lubridate

install.packages('lubridate')
library(lubridate)

today()

now()

dates2 <- c(
        20150521,
        '1693-03 24',
        '2014.10.5',
        '2003/07\\19',
        'Tuesday+1997.10*24')

ymd(date2)

# we can then parse dates in a day/month/year format

day_month_year <- dmy('04-12-2015')

day_month_year

# or month/day/year

month_day_year <- mdy('12/27*2011')

month_day_year


time1 <- ymd_hms('2015,02,22 12:50:27')

time1

# we can change the first part of the function as we saw in the examples above

time2 <- dmy_hms('22-02-2016 12:50:27')

time2

today1 <- today()
year(today1)

wday(today1)

wday(today1, label=TRUE)

