# syntax

How to define macros and what not to define.

## definition of simple macros
Macros are defined in a separate file, by default called `macros`.
You can add additional macro files through the command line options.

Examples of macro definitions:

```
.hc hydrocarbon
.h hydrogen
.c carbon
```

### external definitions

You can also `source` macros from another macro file:

```
source ../macros
source ../../macros
.hc hydrocarbons
.h hydrogen
.c
```

This sources macros from its parent and grandparent directories.
This may be useful if you have several related topics in separate folders,
but only some of the macros are shared and some are not.

### on the fly definitions

You can also define macros in the middle of a sentence without having to switch to the macros file.
The last word of multi-word macros must end with `.,`  or `,.` and end on the same line.

```
# .Hc hydrocarbon
In or
In organic chemistry, a .hc is an .oc organic compound., consisting entirely of
hydrogen and carbon. .Hcs are examples of group 14 hydrides.


.Ocs are compounds which contain .c .h bonds.
```

The output would be the following:

```markdown
# Hydrocarbon
In organic chemistry, a hydrocarbon is an organic compound consisting entirely
of hydrogen and carbon. Hydrocarbons are examples of group 14 hydrides.

Organic compounds are compounds which contain carbon hydrogen bonds.
```

Otf macros can be overwritten later in the document.
They also take precedence of any macros defined in the `macros` file.

## plurals

Say you only have the following macro definitions:

`.hc hydrocarbon`

And the file `test.md`:

```markdown
# .Hc
In organic chemistry, a .hc is an organic compound consisting entirely of
hydrogen and carbon. .Hcs are examples of group 14 hydrides.
```

The output would be the following:

```markdown
# Hydrocarbon
In organic chemistry, a hydrocarbon is an organic compound consisting entirely
of hydrogen and carbon. Hydrocarbons are examples of group 14 hydrides.
```

Note how `.hcs` becomes `hydrocarbons` even though that isn't explicitly
defined. This helps you avoid adding the plural forms of words.


### other default plurals

There are also other default plurals:

Ending | Example | Formation | Plural
--- | --- | --- | ---
`s`, `ch`, `sh`, `x`, or `z` | dress | add es | dresses
`[consonant]y` | story | change `y` to `ies` | stories
`[consonant]o` | macro | add `s` | macros
`[vowel]o` | hero | add `es` | heroes
`f` | leaf | change `f` to `ves` | leaves


### custom plurals
You can also define your own custom plurals:

`macros`
```
.s salmon salmon
.m man men
.l louse lice
```

Input:
```
Hello boys and girls, my name is Fat Lip
and this is my friend Sammy the .S.
(What 'do?)
Today, we're going to teach you some fun new facts about .ss
and a brand new dance.
```

Output:
```
Hello boys and girls, my name is Fat Lip
and this is my friend Sammy the Salmon.
(What 'do?)
Today, we're going to teach you some fun new facts about salmon
and a brand new dance.
```

Note: for plurals which do not change it's probably easier to just not use the
plural version at all and forgo defining a custom plural altogether.

## capitalization

- Capitalizing the first character of a macro makes the first letter of the word
also capitalized.
- Capitalizing every letter makes the whole word capitalized also, except if the
shortcut is only one word long.
- For this reason, you may not want to use one letter definitions.
- This also means that macro definitions are case insensitive and are completely
ignored.

Say you have the following macros:

```
.hc hydrocarbon
.h hydrogen
.c carbon
```

Input:
```
.hc
.Hc
.HC
.h
.H
.c
.C
```

Output:
```
hydrocarbon
Hydrocarbon
HYDROCARBON
hydrogen
Hydrogen
carbon
Carbon
```

