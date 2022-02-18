---
title: Examples
permalink: /examples/
header:
  overlay_color: "#0f477e"
  overlay_filter: 0.7
layout: splash
classes: wide
---

The following are some simple, bite-sized examples of Nial's programming features. Some of these are executed within the Nial REPL `nial -i` to show intermediate results.

More complex example scripts can be found at the [main development repository](https://github.com/niallang/Nial_Development/tree/master/examples), and the [libraries repository](https://github.com/niallang/Nial_Libraries).

# Partial Application
```nial
     % function composition is implicit: ;
     negsum is (opposite sum);
     negsum 1 2 3
     -6
% leaving out an infix parameter results in partial application: ;
     fiveplus is (5 +);
     fiveplus 1
6
     % partial application also generalizes to function composition: ;
     fun is (1 - opposite)
     fun 5
6
```

# Keywords and Symbols
```nial
     % You can use symbol := or 'gets' for data assignment ;
     abc gets 1;
     abc
1
     bcd := 1;
     bcd
1
     % Similarly for arithmetic ;
     1 plus 2
3
     1 + 2
3
     1 minus 2
-1
     1 - 2
-1
```

# Factorial
```nial
% Functional Recursion: ;
fact is recur [ 0 =, 1 first, pass, product, -1 +] % from wikipedia;

% Product of a range: ;
fact is * count;

% Plain recursion: ;
fact is op x {
  if x = 0 then 1 else x * fact (x - 1) endif
};

% While loop: ;
fact is op x {
  prod := 1;
  while x > 0 DO
      prod := prod * x;
      x := x - 1;
  endwhile;
  prod
};
```
