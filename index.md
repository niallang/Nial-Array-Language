---
layout: splash
ismain: true
header:
  overlay_image: /assets/images/seas.jpg
  overlay_color: "#000"
  overlay_filter: 0.7
  actions:
  - label: "Download"
    url: download/
  - label: "Tutorial"
    url: "https://github.com/https://www.nial-array-language.org/ndocs/intro/index.html"
excerpt: A powerful, interactive array language with support for flexible multiparadigm code.
feature_row:
  - title: "First-class array support"
    excerpt: "Multidimensional arrays are the primary data structure of Nial, and much of its standard library is based around their usage and manipulation."
  - title: "Multiparadigm"
    excerpt: "Nial allows both Imperative and Functional style programming to be used in conjunction with each other, allowing much more flexible use of its array programming lineage."
  - title: "New features"
    excerpt: "Atlases, unification of prefix and infix notation, errors as data and much more."

sidebar:
  - title: Current Version
    text: >
      The current version of Nial is [Q'Nial7](https://github.com/danlm/QNial7). This
      can also be found at [Nial_Development](https://github.com/gibbonsja/Nial_Development).

markdown:
  - text1: "# fsdfasd
fsdfsd"
---

{{ markdown.text1 | markdownify }}

{% include feature_row %}


<a class="btn btn--example btn--large" data-ex="1" style="color: #111">Function Atlases</a><a class="btn btn--example btn--large" data-ex="2">Imperative support</a><a class="btn btn--example btn--large" data-ex="3">First-class errors</a><a class="btn btn--example btn--large"></a>

```nial
     % A simple atlas applies a list of functions: ;
     [+, opposite] 1
1 -1
     2 [+, opposite] 1
+-+-----+
|3|-2 -1|
+-+-----+
     % Defining an average function: ;
     average is /[sum, tally]
     average 1 2 3 4
2.5
     % Nested atlases! ;
     [sum, tally, [product, 7 times]] 1 2 3 4
+--+-+---------------+
|10|4|+--+----------+|
|  | ||24|7 14 21 28||
|  | |+--+----------+|
+--+-+---------------+
```
{: class="example--code" data-ex="1"}


```nial
     % A simple for loop ;
     % An '!' symbol starts a multiline definition in the REPL: ;
     !
.... FOR i WITH 1 2 3 DO
....     write [pass, 1 +] i
.... ENDFOR
.... 
1 2
2 3
3 4
     % The same, except with a map: ;
     EACH (write [pass, 1 +]) 1 2 3
1 2
2 3
3 4
``` 
{: class="example--code" style="display:none" data-ex="2"}



```nial
     % A basic divide by zero error: ;
     1 / 0
?div
     % Errors are also values called faults, giving you their location: ;
     5 / 5 10 0 8
1. 0.5 ?div 0.625
     % You can also define custom faults using 'fault': ;
     fault 'this is an error'
this is an error 
```
{: class="example--code" style="display:none" data-ex="3"}


<a href="examples/" class="btn btn--primary btn--large">See More ❯</a>

<hr>
# About

Nial (Nested Interactive Array Language) is a general purpose programming language based on a formal model of Arrays developed by Trenchard More and Michael Jenkins.

Nial is part of the APL family of programming languages, with the philosophy that the best design could come from a combination of both functional and imperative styles in an array language. It differs from standard APL in that it offers a more traditional programming language syntax.

Nested arrays of multiple dimensions are the primary data type of Nial. Arrays together with an extensible core set of functions/operators to manipulate arrays and a programming language for the construction of more complex computations allow for the development of efficient programs that can take advantage of the characteristics of modern CPUs.

If Nial looks like a language you'd like to program in, [Try it now!](download/)
<hr>

# Community 

The main place for Nial discussion is the APL Farm, which you can join at these links:

- [Discord](https://discord.gg/yHna7nt7zx)
- [Matrix](https://app.element.io/#/room/%23aplfarm:matrix.org)

Whether you are a newbie or have been using Nial for a while now, feel free to join!
