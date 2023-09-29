# Description

The V `rand` module provides two main ways in which users can generate pseudorandom numbers:

## Direct Access Through The `rand` Module

```
// Import the rand module
import rand

...

// Optionally seed the default generator
rand.seed([u32(3223878742), 1732001562])

...

// Use the top-level functions
rand.u32n(100)!
rand.int() // among others ...
```

## Through A Generator Of Choice

```
// Import the rand module
import rand
import rand.seed

// Import the module of the generator you want to use
import rand.pcg32

...

// Initialise the generator struct (note the `mut`)
mut rng := &rand.PRNG(pcg32.PCG32RNG{})

// Optionally seed the generator
rng.seed(seed.time_seed_array(pcg32.seed_len))

...

// Use functions of your choice
rng.u32n(100)!
rng.int() // among others ...
```

## More Information

You can change the default generator to a different one. The only requirement is that
the generator must implement the `PRNG` interface. See `get_current_rng()` and `set_rng()`.

> **Note**
> The global PRNG is not thread safe. It is recommended to use separate generators for
> separate threads in multi-threaded applications.

There are only a few extra functions that are defined only in this top-level `rand` module.
Otherwise, there is feature parity between the generator functions and the top-level functions.

# General Background

A PRNG is a Pseudo Random Number Generator.
Computers cannot generate truly random numbers without an external source of noise or entropy.
We can use algorithms to generate sequences of seemingly random numbers,
but their outputs will always be deterministic, according to the seed values.

This is often useful for simulations that need the same starting seeds.
You may be debugging a program and want to restart it with the same
seeds, or you want to verify a working program is still
operating identically after compiler or operating system updates.

If you need truly random numbers that are going to be used for cryptography,
use the `crypto.rand` module.

# Seeding Functions

All the generators are initialized with time-based seeds.
The helper functions publicly available in `rand.seed` module are:

1. `time_seed_array()` - returns a `[]u32` that can be directly plugged into the `seed()` functions.
2. `time_seed_32()` and `time_seed_64()` - 32-bit and 64-bit values respectively
   that are generated from the current time.

When composing your own seeds, use "typical" u32 numbers, not small numbers. This
is especially important for PRNGs with large state, such as `mt19937`. You can create
random unsigned integers with openssl `rand` or with `v repl` as follows:

```
$ openssl rand -hex 4
e3655862
$ openssl rand -hex 4
97c4b1db
$ v repl
>>> import rand
>>> [rand.u32(),rand.u32()]
[2132382944, 2443871665]
```

# Caveats

Note that the `sys.SysRNG` struct (in the C backend) uses `C.srand()` which sets the seed globally.
Consequently, all instances of the RNG will be affected.
This problem does not arise for the other RNGs.
A workaround (if you _must_ use the libc RNG) is to:

1. Seed the first instance.
2. Generate all values required.
3. Seed the second instance.
4. Generate all values required.
5. And so on...

# Notes

[Math interval](<https://en.wikipedia.org/wiki/Interval_(mathematics)#Including_or_excluding_endpoints>)
notation is used throughout the function documentation to denote what numbers ranges include.

An example of `[0, max)` thus denotes a range with all possible values
between `0` and `max` **including** 0 but **excluding** `max`.
