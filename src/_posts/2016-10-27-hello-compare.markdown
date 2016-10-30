---
layout: post
title: "Hello Compare"
date: 2016-10-27T21:23:25-07:00
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

This is going to be the first in an ongoing series of solving problems in multiple languages. The code is posted [here](http://github.com/aatron/compare) along with instructions to run each example.

To kick things off, let's do a '[Hello World](https://github.com/aatron/compare/tree/master/1.HelloWorld)' problem.

<ul id="code-tabs" class="nav nav-tabs" data-tabs="codeSnippets" >
  <li class="active"><a href="#cs">C#</a></li>
  <li><a href="#fs">F#</a></li>
  <li><a href="#js">JavaScript</a></li>
  <li><a href="#ts">TypeScript</a></li>
  <li><a href="#r">R</a></li>
  <li><a href="#go">Go</a></li>
  <li><a href="#rb">Ruby</a></li>
  <li><a href="#ps">Powershell</a></li>
</ul>
<div id="codeSnippets" class="tab-content">
  <div class="tab-pane active" id="cs">
{% highlight c# %}
{% github_sample_ref /aatron/compare/d77d2d3a7afcd0d9ee5c6a5b476f9520e518a3a3/c#/Program.cs %}
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
  <div class="tab-pane" id="rb">
{%  highlight ruby %}
puts "Hello World."
{%  endhighlight %}
  </div>
  <div class="tab-pane" id="ps">
{%  highlight powershell %}
Write-Host "Hello World."
{%  endhighlight %}
  </div>
</div>

<script>
  $(function () {
    $('#code-tabs a').click(function (e) {
      e.preventDefault()
      $(this).tab('show')
    });
  })
</script>
