ALPHABET = [a-z] | ı|ğ|ö|ü|ç|ş

%$WORDS$ = "words"

% lower case consonants
$cons$ = b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z|ş|ç|ğ

% lower case vowels
$vowel$ = a|e|i|o|u|ö|ü|ı

$letters$ = [a-z] | ı|ğ|ö|ü|ç|ş



$rule1$ = ($letters$?  $vowel$ $cons$ \-:<> $cons$ $vowel$ $cons$? $cons$? ( \-:<> $cons$ $vowel$ $letters$? )*  ) % aldı

$rule2$ = ($letters$? $vowel$ $cons$ $cons$  (\-:<>  $cons$ $vowel$ $cons$?)*  ) %korkmak

$rule3$ = ($letters$? $vowel$ \-:<> ($cons$ $vowel$ $cons$? $cons$?)  (\-:<> $cons$ $vowel$ $letters$? )* ) %kara

$rule4$ = ($cons$ $vowel$ $cons$ <>:<>) %büt

$rule5$ = ($cons$? $vowel$ $cons$ $cons$ <>:<>) %alt salt

$rule6$ = (($cons$ $vowel$) (\-:<> $vowel$ $cons$) ((\-:<> $cons$ $vowel$)?  (\-:<> $vowel$ $cons$)? )* $letters$? )%saat

$rule8$ = (($cons$ $vowel$) \-:<> $rule6$) %zanaat

$rule7$ =  ($rule6$ | $rule5$ | $rule4$ | $rule3$ |  $rule2$ | $rule1$ | $rule8$) %all rules


$rule7$ 


