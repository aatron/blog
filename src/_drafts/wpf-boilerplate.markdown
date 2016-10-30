---
layout: post
title: "WPF Boilerplate"
tags:
  - WPF
  - C#
  - Rx
  - ReactiveUI
  - Test
  - Prism
  - Moq
  - SpecFlow
  - Gherkin
  - Fody
  - Unity
---

WPF has a variety of technologies to use. Here is a high-level list of features in the boilerplate:

* Views are modular and flexible
* ViewModel binds both UI elements and commands
* Everything is unit tested
* Dependencies in unit tests are mocked
* Asynronous actions are readable in composable statements
* IL weaver cuts down on lines of code
* Dependency Injection
* Live tiles

Boilerplate utilizes all of these technologies:

* MVVM
  * [ReactiveUI](http://reactiveui.net/)
  * [ReactiveNavigation](https://github.com/F-2-F/F2F.ReactiveNavigation)
  * [Rx (.NET)](https://github.com/Reactive-Extensions/Rx.NET)
* Architecture
  * [Fody](https://github.com/Fody/Fody)
  * [Unity](https://github.com/unitycontainer/unity)
* Test
  * [SpecFlow](http://www.specflow.org/)
  * [Moq](https://github.com/Moq/moq4)
* Misc
  * [MahApps](http://mahapps.com/)

Here______ is the code if you want to skip the steps on how the boilerplate was created.

### Set-up Layout

Install NuGet package `Mahapps.Metro` to modernize the UI controls' styles.

_MainWindow.xaml_
{% highlight xml %}
<Controls:MetroWindow x:Class="BoilerplateWPF.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:Controls="http://metro.mahapps.com/winfx/xaml/controls"
        Title="WPF Bootstrap" Height="600" Width="850">
    <Grid>
        
    </Grid>
</Controls:MetroWindow>
{% endhighlight %}

_MainWindow.xaml.cs_
{% highlight c# %}
using MahApps.Metro.Controls;

namespace BoilerplateWPF
{
    /// <summary>Interaction logic for MainWindow.xaml</summary>
    public partial class MainWindow : MetroWindow
    {
        public MainWindow()
        {
            InitializeComponent();
        }
    }
}
{% endhighlight %}

Install NuGet package `reactiveui` for the MVVM framework and bind up some controls with dependency properties.




Create a new WPF solution called BoilerplateWPF and install NuGet packages for `ReactiveUI`, `ReactiveNavigation`, and `Mahapps.Metro`.

