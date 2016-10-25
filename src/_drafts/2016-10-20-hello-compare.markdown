---
layout: post
title: "Hello Compare"
date: 2016-10-20T21:23:25-07:00
tags:
    - C#
    - F#
    - JavaScript
    - TypeScript
    - R
    - Ruby
    - Golang
    - PowerShell
---

This is going to be the first in an ongoing series of solving a solution in multiple languages. The code is posted [here](http://github.com/aatron/compare).

To kick things off, let's do a 'Hello World' problem.

<ul class="nav nav-tabs" data-tabs="codeSnippets" >
  <li role="presentation"><a href="#cs">C#</a></li>
  <li role="presentation"><a href="#fs">F#</a></li>
  <li role="presentation"><a href="#js">JavaScript</a></li>
  <li role="presentation"><a href="#ts">TypeScript</a></li>
  <li role="presentation"><a href="#r">R</a></li>
  <li role="presentation"><a href="#go">Go</a></li>
  <li role="presentation"><a href="#rb">Ruby</a></li>
  <li role="presentation"><a href="#ps">Powershell</a></li>
</ul>
<div id="codeSnippets" class="tab-content">
  <div class="tab-pane" id="cs">
{%  highlight c# %}
using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Hello World!");
    }
}
{%  endhighlight %}
  </div>
  <div class="tab-pane" id="fs">
{%  highlight ml %}
open System

[<EntryPoint>]
let main argv = 
    printfn "Hello World!"
    0 // return an integer exit code
{%  endhighlight %}
  </div>
  <div class="tab-pane" id="js">
{%  highlight javascript %}
console.log("Hello World");
{%  endhighlight %}
  </div>
  <div class="tab-pane" id="ts">
{%  highlight typescript %}
console.log("Hello World");
{%  endhighlight %}
  </div>
  <div class="tab-pane" id="r">
{%  highlight r %}
cat('Hello World\n')
{%  endhighlight %}
  </div>
  <div class="tab-pane" id="go">
{%  highlight go %}
package main

import "fmt"

func main() {
	fmt.Printf("Hello World.\n")
}
{%  endhighlight %}
  </div>
  <div class="tab-pane" id="ruby">
{%  highlight ruby %}
puts "Hello World."
{%  endhighlight %}
  </div>
  <div class="tab-pane" id="powershell">
{%  highlight powershell %}
Write-Host "Hello World."
{%  endhighlight %}
  </div>
</div>