def is_consonant(letter):
    if not isinstance(letter, str):
        raise ValueError("Argument 'letter' must be type str")
    if len(letter) != 1:
        raise ValueError("Argument 'letter' must be 1 long")
    return not is_vowel(letter)

def is_vowel(letter):
    if not isinstance(letter, str):
        raise ValueError("Argument 'letter' must be type str")
    if len(letter) != 1:
        raise ValueError("Argument 'letter' must be 1 long")
    return letter in 'aeiou'

