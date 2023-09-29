module time

pub const (
	days_string        = 'MonTueWedThuFriSatSun'
	long_days          = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday',
		'Sunday']
	month_days         = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	months_string      = 'JanFebMarAprMayJunJulAugSepOctNovDec'
	long_months        = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August',
		'September', 'October', 'November', 'December']
	// The unsigned zero year for internal calculations.
	// Must be 1 mod 400, and times before it will not compute correctly,
	// but otherwise can be changed at will.
	absolute_zero_year = i64(-292277022399)
	seconds_per_minute = 60
	seconds_per_hour   = 60 * seconds_per_minute
	seconds_per_day    = 24 * seconds_per_hour
	seconds_per_week   = 7 * seconds_per_day
	days_per_400_years = days_in_year * 400 + 97
	days_per_100_years = days_in_year * 100 + 24
	days_per_4_years   = days_in_year * 4 + 1
	days_in_year       = 365
	days_before        = [
		0,
		31,
		31 + 28,
		31 + 28 + 31,
		31 + 28 + 31 + 30,
		31 + 28 + 31 + 30 + 31,
		31 + 28 + 31 + 30 + 31 + 30,
		31 + 28 + 31 + 30 + 31 + 30 + 31,
		31 + 28 + 31 + 30 + 31 + 30 + 31 + 31,
		31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30,
		31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31,
		31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30,
		31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + 31,
	]
)

// Time contains various time units for a point in time.
pub struct Time {
pub:
	year       int
	month      int
	day        int
	hour       int
	minute     int
	second     int
	nanosecond int
	unix       i64
	is_local   bool // used to make time.now().local().local() == time.now().local()
	//
	microsecond int [deprecated: 'use t.nanosecond / 1000 instead'; deprecated_after: '2023-08-05']
}

// FormatDelimiter contains different time formats.
pub enum FormatTime {
	hhmm12
	hhmm24
	hhmmss12
	hhmmss24
	hhmmss24_milli
	hhmmss24_micro
	hhmmss24_nano
	no_time
}

// FormatDelimiter contains different date formats.
pub enum FormatDate {
	ddmmyy
	ddmmyyyy
	mmddyy
	mmddyyyy
	mmmd
	mmmdd
	mmmddyy
	mmmddyyyy
	no_date
	yyyymmdd
	yymmdd
}

// FormatDelimiter contains different time/date delimiters.
pub enum FormatDelimiter {
	dot
	hyphen
	slash
	space
	no_delimiter
}

pub fn Time.new(t Time) Time {
	return new_time(t)
}

// smonth returns the month name abbreviation.
pub fn (t Time) smonth() string {
	if t.month <= 0 || t.month > 12 {
		return '---'
	}
	i := t.month - 1
	return time.months_string[i * 3..(i + 1) * 3]
}

// unix_time returns the UNIX time with second resolution.
[inline]
pub fn (t Time) unix_time() i64 {
	return t.unix
}

// unix_time_milli returns the UNIX time with millisecond resolution.
[inline]
pub fn (t Time) unix_time_milli() i64 {
	return t.unix * 1_000 + (i64(t.nanosecond) / 1_000_000)
}

// unix_time_micro returns the UNIX time with microsecond resolution.
[inline]
pub fn (t Time) unix_time_micro() i64 {
	return t.unix * 1_000_000 + (i64(t.nanosecond) / 1_000)
}

// unix_time_nano returns the UNIX time with nanosecond resolution.
[inline]
pub fn (t Time) unix_time_nano() i64 {
	// TODO: use i128 here, when V supports it, since the following expression overflows for years like 3001:
	return t.unix * 1_000_000_000 + i64(t.nanosecond)
}

// add returns a new time with the given duration added.
pub fn (t Time) add(d Duration) Time {
	// This expression overflows i64 for big years (and we do not have i128 yet):
	// nanos := t.unix * 1_000_000_000 + i64(t.nanosecond) <-
	// ... so instead, handle the addition manually in parts ¯\_(ツ)_/¯
	mut unixs := t.unix
	mut nanos := i64(t.nanosecond) + d.nanoseconds()
	unixs += nanos / time.second
	nanos = nanos % time.second
	if nanos < 0 {
		unixs--
		nanos += time.second
	}
	if t.is_local {
		return unix_nanosecond(unixs, int(nanos)).as_local()
	}
	return unix_nanosecond(unixs, int(nanos))
}

// add_seconds returns a new time struct with an added number of seconds.
pub fn (t Time) add_seconds(seconds int) Time {
	return t.add(seconds * time.second)
}

// add_days returns a new time struct with an added number of days.
pub fn (t Time) add_days(days int) Time {
	return t.add(days * 24 * time.hour)
}

// since returns the time duration elapsed since a given time.
pub fn since(t Time) Duration {
	return now() - t
}

// relative returns a string representation of the difference between t
// and the current time.
//
// Sample outputs:
// ```
// // future
// now
// in 5 minutes
// in 1 day
// on Feb 17
// // past
// 2 hours ago
// last Jan 15
// 5 years ago
// ```
pub fn (t Time) relative() string {
	znow := now()
	mut secs := znow.unix - t.unix
	mut prefix := ''
	mut suffix := ''
	if secs < 0 {
		secs *= -1
		prefix = 'in '
	} else {
		suffix = ' ago'
	}
	if secs < time.seconds_per_minute / 2 {
		return 'now'
	}
	if secs < time.seconds_per_hour {
		m := secs / time.seconds_per_minute
		if m == 1 {
			return '${prefix}1 minute${suffix}'
		}
		return '${prefix}${m} minutes${suffix}'
	}
	if secs < time.seconds_per_hour * 24 {
		h := secs / time.seconds_per_hour
		if h == 1 {
			return '${prefix}1 hour${suffix}'
		}
		return '${prefix}${h} hours${suffix}'
	}
	if secs < time.seconds_per_hour * 24 * 7 {
		d := secs / time.seconds_per_hour / 24
		if d == 1 {
			return '${prefix}1 day${suffix}'
		}
		return '${prefix}${d} days${suffix}'
	}
	if secs < time.seconds_per_hour * 24 * time.days_in_year {
		if prefix == 'in ' {
			return 'on ${t.md()}'
		}
		return 'last ${t.md()}'
	}
	y := secs / time.seconds_per_hour / 24 / time.days_in_year
	if y == 1 {
		return '${prefix}1 year${suffix}'
	}
	return '${prefix}${y} years${suffix}'
}

// relative_short returns a string saying how long ago a time occured as follows:
// 0-30 seconds: `"now"`; 30-60 seconds: `"1m"`; anything else is rounded to the
// nearest minute, hour, day, or year
//
// Sample outputs:
// ```
// // future
// now
// in 5m
// in 1d
// // past
// 2h ago
// 5y ago
// ```
pub fn (t Time) relative_short() string {
	znow := now()
	mut secs := znow.unix - t.unix
	mut prefix := ''
	mut suffix := ''
	if secs < 0 {
		secs *= -1
		prefix = 'in '
	} else {
		suffix = ' ago'
	}
	if secs < time.seconds_per_minute / 2 {
		return 'now'
	}
	if secs < time.seconds_per_hour {
		m := secs / time.seconds_per_minute
		if m == 1 {
			return '${prefix}1m${suffix}'
		}
		return '${prefix}${m}m${suffix}'
	}
	if secs < time.seconds_per_hour * 24 {
		h := secs / time.seconds_per_hour
		if h == 1 {
			return '${prefix}1h${suffix}'
		}
		return '${prefix}${h}h${suffix}'
	}
	if secs < time.seconds_per_hour * 24 * time.days_in_year {
		d := secs / time.seconds_per_hour / 24
		if d == 1 {
			return '${prefix}1d${suffix}'
		}
		return '${prefix}${d}d${suffix}'
	}
	y := secs / time.seconds_per_hour / 24 / time.days_in_year
	if y == 1 {
		return '${prefix}1y${suffix}'
	}
	return '${prefix}${y}y${suffix}'
}

// day_of_week returns the current day of a given year, month, and day,
// as an integer.
pub fn day_of_week(y int, m int, d int) int {
	// Sakomotho's algorithm is explained here:
	// https://stackoverflow.com/a/6385934
	t := [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]
	mut sy := y
	if m < 3 {
		sy = sy - 1
	}
	return (sy + sy / 4 - sy / 100 + sy / 400 + t[m - 1] + d - 1) % 7 + 1
}

// day_of_week returns the current day as an integer.
pub fn (t Time) day_of_week() int {
	return day_of_week(t.year, t.month, t.day)
}

// year_day returns the current day of the year as an integer.
// See also #Time.custom_format .
pub fn (t Time) year_day() int {
	yday := t.day + time.days_before[t.month - 1]
	if is_leap_year(t.year) && t.month > 2 {
		return yday + 1
	}
	return yday
}

// weekday_str returns the current day as a string 3 letter abbreviation.
pub fn (t Time) weekday_str() string {
	i := t.day_of_week() - 1
	return time.long_days[i][0..3]
}

// long_weekday_str returns the current day as a string.
pub fn (t Time) long_weekday_str() string {
	i := t.day_of_week() - 1
	return time.long_days[i]
}

// is_leap_year checks if a given a year is a leap year.
pub fn is_leap_year(year int) bool {
	return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
}

// days_in_month returns a number of days in a given month.
pub fn days_in_month(month int, year int) !int {
	if month > 12 || month < 1 {
		return error('Invalid month: ${month}')
	}
	extra := if month == 2 && is_leap_year(year) { 1 } else { 0 }
	res := time.month_days[month - 1] + extra
	return res
}

// debug returns detailed breakdown of time (`Time{ year: YYYY month: MM day: dd hour: HH: minute: mm second: ss nanosecond: nanos unix: unix }`)
pub fn (t Time) debug() string {
	return 'Time{ year: ${t.year:04} month: ${t.month:02} day: ${t.day:02} hour: ${t.hour:02} minute: ${t.minute:02} second: ${t.second:02} nanosecond: ${t.nanosecond:09} unix: ${t.unix:07} }'
}

// A lot of these are taken from the Go library.
pub type Duration = i64

pub const (
	nanosecond  = Duration(1)
	microsecond = Duration(1000 * nanosecond)
	millisecond = Duration(1000 * microsecond)
	second      = Duration(1000 * millisecond)
	minute      = Duration(60 * second)
	hour        = Duration(60 * minute)
	//	day         = Duration(24 * hour)
	infinite    = Duration(i64(9223372036854775807))
)

// nanoseconds returns the duration as an integer number of nanoseconds.
pub fn (d Duration) nanoseconds() i64 {
	return i64(d)
}

// microseconds returns the duration as an integer number of microseconds.
pub fn (d Duration) microseconds() i64 {
	return i64(d) / time.microsecond
}

// milliseconds returns the duration as an integer number of milliseconds.
pub fn (d Duration) milliseconds() i64 {
	return i64(d) / time.millisecond
}

// The following functions return floating point numbers because it's common to
// consider all of them in sub-one intervals
// seconds returns the duration as a floating point number of seconds.
pub fn (d Duration) seconds() f64 {
	return f64(d) / f64(time.second)
}

// minutes returns the duration as a floating point number of minutes.
pub fn (d Duration) minutes() f64 {
	return f64(d) / f64(time.minute)
}

// hours returns the duration as a floating point number of hours.
pub fn (d Duration) hours() f64 {
	return f64(d) / f64(time.hour)
}

// days returns the duration as a floating point number of days.
pub fn (d Duration) days() f64 {
	return f64(d) / f64(time.hour * 24)
}

// str pretty prints the duration
//
// ```
// h:m:s      // 5:02:33
// m:s.mi<s>  // 2:33.015
// s.mi<s>    // 33.015s
// mi.mc<ms>  // 15.007ms
// mc.ns<ns>  // 7.234us
// ns<ns>     // 234ns
// ```
pub fn (d Duration) str() string {
	if d == time.infinite {
		return 'inf'
	}
	mut t := i64(d)
	hr := t / time.hour
	t -= hr * time.hour
	min := t / time.minute
	t -= min * time.minute
	sec := t / time.second
	t -= sec * time.second
	ms := t / time.millisecond
	t -= ms * time.millisecond
	us := t / time.microsecond
	t -= us * time.microsecond
	ns := t

	if hr > 0 {
		return '${hr}:${min:02}:${sec:02}'
	}
	if min > 0 {
		return '${min}:${sec:02}.${ms:03}'
	}
	if sec > 0 {
		return '${sec}.${ms:03}s'
	}
	if ms > 0 {
		return '${ms}.${us:03}ms'
	}
	if us > 0 {
		return '${us}.${ns:03}us'
	}
	return '${ns}ns'
}

// debug returns a detailed breakdown of the Duration, as: 'Duration: - 50days, 4h, 3m, 7s, 541ms, 78us, 9ns'
pub fn (d Duration) debug() string {
	mut res := []string{}
	mut x := i64(d)
	mut sign := ''
	if x < 0 {
		sign = '- '
		x = -x
	}
	for label, v in {
		'days': 24 * time.hour
		'h':    time.hour
		'm':    time.minute
		's':    time.second
		'ms':   time.millisecond
		'us':   time.microsecond
	} {
		if x > v {
			xx := x / v
			x = x % v
			res << xx.str() + label
		}
	}
	if x > 0 {
		res << '${x}ns'
	}
	return 'Duration: ${sign}${res.join(', ')}'
}

// offset returns time zone UTC offset in seconds.
pub fn offset() int {
	t := utc()
	local := t.local()
	return int(local.unix - t.unix)
}

// local_to_utc converts the receiver `t` to the corresponding UTC time, if it contains local time.
// If the receiver already does contain UTC time, it returns it unchanged.
pub fn (t Time) local_to_utc() Time {
	if !t.is_local {
		return t
	}
	return Time{
		...t.add(-offset() * time.second)
		is_local: false
	}
}

// utc_to_local converts the receiver `u` to the corresponding local time, if it contains UTC time.
// If the receiver already does contain local time, it returns it unchanged.
pub fn (u Time) utc_to_local() Time {
	if u.is_local {
		return u
	}
	return Time{
		...u.add(offset() * time.second)
		is_local: true
	}
}

// as_local returns the exact same time, as the receiver `t`, but with its .is_local field set to true.
// See also #Time.utc_to_local .
pub fn (t Time) as_local() Time {
	return Time{
		...t
		is_local: true
	}
}

// as_utc returns the exact same time, as the receiver `t`, but with its .is_local field set to false.
// See also #Time.local_to_utc .
pub fn (t Time) as_utc() Time {
	return Time{
		...t
		is_local: false
	}
}

// is_utc returns true, when the receiver `t` is a UTC time, and false otherwise.
// See also #Time.utc_to_local .
pub fn (t Time) is_utc() bool {
	return !t.is_local
}
