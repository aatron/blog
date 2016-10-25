---
layout: page
title: "Samples"
---

# Header 1
## Header 2
### Header 3
#### Header 4
##### Header 5
###### Header 6

This is a sample paragraph that has *different* kind _of_ emphasises using **these** various __methods__ even **combining _techniques_** and don't ~~forget~~ this. I will mainly use these [two](http://pbs.org) [ways](http://pbs.org "PBS") for links. For inline code, use techniques like `this`, `{% raw %}{{this}}{% endraw %}`, and `{{ "{{ this "}} }}`.

1. Hello
2. I
3. am
4. an
5. ordered 
6. list

- an
- I
- unordered 
- am
- Hello
- list

> This is a single-line quote.

and...

> This is a multi-line
> spanning
> quote.

<div>
  <ul class="vhs-tapes no-float">
      {% include vhs.html text="Really really long text" labelClass=1 %}
      {% include vhs.html text="Medium text" labelClass=1 %}
      {% include vhs.html text="Terse" labelClass=1 %}

      {% include vhs.html text="Really really long text" labelClass=2 %}
      {% include vhs.html text="Medium text" labelClass=2 %}
      {% include vhs.html text="Terse" labelClass=2 %}

      {% include vhs.html text="Really really long text" labelClass=3 %}
      {% include vhs.html text="Medium text" labelClass=3 %}
      {% include vhs.html text="Terse" labelClass=3 %}
  </ul>
</div>


### Code Samples

##### Bash
{%  highlight bash %}bash
#!/bin/bash

##### CONFIG
ACCEPTED_HOSTS="/root/.hag_accepted.conf"
BE_VERBOSE=false

if [ "$UID" -ne 0 ]
then
 echo "Superuser rights required"
 exit 2
fi

genApacheConf(){
 echo -e "# Host ${HOME_DIR}$1/$2 :"
}
{% endhighlight %}

##### C\#
{% highlight c# %}
using System;

#pragma warning disable 414, 3021

/// <summary>Main task</summary>
async Task<int, int> AccessTheWebAsync()
{
    Console.WriteLine("Hello, World!");
    string urlContents = await getStringTask;
    return urlContents.Length;
}
{% endhighlight %}

##### C++
{%  highlight c++ %}
#include <iostream>

int main(int argc, char *argv[]) {

  /* An annoying "Hello World" example */
  for (auto i = 0; i < 0xFFFF; i++)
    cout << "Hello, World!" << endl;

  char c = '\n';
  unordered_map <string, vector<string> > m;
  m["key"] = "\\\\"; // this is an error

  return -2e3 + 12l;
}
{% endhighlight %}

##### CSS
{%  highlight css %}
@font-face {
  font-family: Chunkfive; src: url('Chunkfive.otf');
}

body, .usertext {
  color: #F0F0F0; background: #600;
  font-family: Chunkfive, sans;
}

@import url(print.css);
@media print {
  a[href^=http]::after {
    content: attr(href)
  }
}
{% endhighlight %}

##### F\#
{%  highlight ml %}
open System

// Single line comment...
(*
  This is a
  multiline comment.
*)
let checkList alist =
    match alist with
    | [] -> 0
    | [a] -> 1
    | [a; b] -> 2
    | [a; b; c] -> 3
    | _ -> failwith "List is too big!"


let text = "Some text..."
let text2 = @"A ""verbatim"" string..."
let catalog = """
Some "long" string...
"""

let rec fib x = if x <= 2 then 1 else fib(x-1) + fib(x-2)

let fibs =
    Async.Parallel [ for i in 0..40 -> async { return fib(i) } ]
    |> Async.RunSynchronously

type Sprocket(gears) =
  member this.Gears : int = gears

[<AbstractClass>]
type Animal =
  abstract Speak : unit -> unit

type Widget =
  | RedWidget
  | GreenWidget

type Point = {X: float; Y: float;}

[<Measure>]
type s
let minutte = 60<s>

type DefaultMailbox<'a>() =
    let mutable inbox = ConcurrentQueue<'a>()
    let awaitMsg = new AutoResetEvent(false)
{% endhighlight %}


##### Go
{% highlight go %}
package main

import "fmt"

func main() {
    ch := make(chan float64)
    ch <- 1.0e10    // magic number
    x, ok := <- ch
    defer fmt.Println(`exitting now\`)
    go println(len("hello world!"))
    return
}
{% endhighlight %}

##### HTML
```html
POST /task?id=1 HTTP/1.1
Host: example.org
Content-Type: application/json; charset=utf-8
Content-Length: 137

{
  "status": "ok",
  "extended": true,
  "results": [
    {"value": 0, "type": "int64"},
    {"value": 1.0e+3, "type": "decimal"}
  ]
}
```

##### JavaScript
{%  highlight javascript %}
function $initHighlight(block, cls) {
  try {
    if (cls.search(/\bno\-highlight\b/) != -1)
      return process(block, true, 0x0F) +
             ` class="${cls}"`;
  } catch (e) {
    /* handle exception */
  }
  for (var i = 0 / 2; i < classes.length; i++) {
    if (checkCondition(classes[i]) === undefined)
      console.log('undefined');
  }
}

export  $initHighlight;
{%  endhighlight %}

##### JSON
{%  highlight json %}
[
  {
    "title": "apples",
    "count": [12000, 20000],
    "description": {"text": "...", "sensitive": false}
  },
  {
    "title": "oranges",
    "count": [17500, null],
    "description": {"text": "...", "sensitive": false}
  }
]
{% endhighlight %}

##### Markdown
{%  highlight markdown %}
# hello world

you can write text [with links](http://example.com) inline or [link references][1].

* one _thing_ has *em*phasis
* two __things__ are **bold**

[1]: http://example.com

---

hello world
===========

<this_is inline="xml"></this_is>

> markdown is so cool

    so are code segments

1. one thing (yeah!)
2. two thing `i can write code`, and `more` wipee!
{% endhighlight %}

##### Powershell
{%  highlight powershell %}
$initialDate = [datetime]'2013/1/8'

$rollingDate = $initialDate

do {
    $client = New-Object System.Net.WebClient
    $results = $client.DownloadString("http://not.a.real.url")
    Write-Host "$rollingDate.ToShortDateString() - $results"
    $rollingDate = $rollingDate.AddDays(21)
    $username = [System.Environment]::UserName
} until ($rollingDate -ge [datetime]'2013/12/31')
{% endhighlight %}

##### Python
{%  highlight python %}
@requires_authorization
def somefunc(param1='', param2=0):
    r'''A docstring'''
    if param1 > param2: # interesting
        print 'Gre\'ater'
    return (param2 - param1 + 1 + 0b10l) or None

class SomeClass:
    pass

>>> message = '''interpreter
... prompt'''
{% endhighlight %}

##### R
{% highlight R %}
library(ggplot2)

centre <- function(x, type, ...) {
  switch(type,
         mean = mean(x),
         median = median(x),
         trimmed = mean(x, trim = .1))
}

myVar1
myVar.2
data$x
foo "bar" baz
# test "test"
"test # test"

(123) (1) (10) (0.1) (.2) (1e-7)
(1.2e+7) (2e) (3e+10) (0x0) (0xa)
(0xabcdef1234567890) (123L) (1L)
(0x10L) (10000000L) (1e6L) (1.1L)
(1e-3L) (4123.381E-10i)
(3.) (3.E10) # BUG: .E10 should be part of number

# Numbers in some different contexts
1L
0x40
.234
3.
1L + 30
plot(cars, xlim=20)
plot(cars, xlim=0x20)
foo<-30
my.data.3 <- read() # not a number
c(1,2,3)
1%%2

"this is a quote that spans
multiple lines
\"

is this still a quote? it should be.
# even still!

" # now we're done.

'same for
single quotes #'

# keywords
NULL, NA, TRUE, FALSE, Inf, NaN, NA_integer_,
NA_real_, NA_character_, NA_complex_, function,
while, repeat, for, if, in, else, next, break,
..., ..1, ..2

# not keywords
the quick brown fox jumped over the lazy dogs
null na true false inf nan na_integer_ na_real_
na_character_ na_complex_ Function While Repeat
For If In Else Next Break .. .... "NULL" `NULL` 'NULL'

# operators
+, -, *, /, %%, ^, >, >=, <, <=, ==, !=, !, &, |, ~,
->, <-, <<-, $, :, ::

# infix operator
foo %union% bar
%"test"%
`"test"`

{% endhighlight %}

##### Ruby
{%  highlight ruby %}
# The Greeter class
class Greeter
  def initialize(name)
    @name = name.capitalize
  end

  def salute
    puts "Hello #{@name}!"
  end
end

g = Greeter.new("world")
g.salute
{% endhighlight %}

##### SQL
{%  highlight sql %}
CREATE TABLE "topic" (
    "id" serial NOT NULL PRIMARY KEY,
    "forum_id" integer NOT NULL,
    "subject" varchar(255) NOT NULL
);
ALTER TABLE "topic"
ADD CONSTRAINT forum_id FOREIGN KEY ("forum_id")
REFERENCES "forum" ("id");

-- Initials
insert into "topic" ("forum_id", "subject")
values (2, 'D''artagnian');
{% endhighlight %}

##### TypeScript
{% highlight TypeScript %}
class MyClass {
  public static myValue: string;
  constructor(init: string) {
    this.myValue = init;
  }
}
import fs = require("fs");
module MyModule {
  export interface MyInterface extends Other {
    myProperty: any;
  }
}
declare magicNumber number;
myArray.forEach(() => { }); // fat arrow syntax
{% endhighlight %}

##### HTML, XML
{%  highlight xml %}
<!DOCTYPE html>
<title>Title</title>

<style>body {width: 500px;}</style>

<script type="application/javascript">
  function $init() {return true;}
</script>

<body>
  <p checked class="title" id='title'>Title</p>
  <!-- here goes the rest of the page -->
</body>
{% endhighlight %}
