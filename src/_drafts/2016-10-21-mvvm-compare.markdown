---
layout: post
title: "Mvvm Compare"
date: 2016-10-21T13:59:35-07:00
tags:
  - WPF
  - MVVM
  - C#
  - Prism
  - ReactiveUI
---

This is a walk-through of comparing and contrasting MVVM (_Model-View-ViewModel_) options in WPF.

In case you have experience with an MVC framework like ASP.NET MVC, then you will already be familiar with decoupling the controller from the view and the benefits of unit testing. Here is a quick comparison:

Both MVC and MVVM are great patterns that decouple the view from the controller and bind to a model. 
Differences betwe:
The most important difference is that MVC's controller chooses the view and model but MVVM's ViewModel is bound to the model and is a continuous go-between the view and the model. 

The major frameworks in WPF utilize MVVM and I am going to compare the two biggies: [Prism](https://github.com/PrismLibrary/Prism) and [ReactiveUI](http://reactiveui.net). 

### Prism

Prism was a Microsoft project that has become an open source project and there are no new releases being released for older platforms: Silverlight, Windows 8/8.1/WP 8.1. They leave the door open for releases for these older platforms in case there are enough requests but it's not included right now. The [documentation](https://github.com/PrismLibrary/Prism/tree/master/Documentation) has a lengthy [introduction](https://github.com/PrismLibrary/Prism/blob/master/Documentation/WPF/01-Introduction.md) to Prism.

Here is a summary of the intro:

* Vocabulary
  * XAML - WPF's HTML
  * Data binding - connects UI elements to data
  * Resources - manages and crates styles, data templates, and control templates
  * Commands - events on XAML elements (click, focus, keydown, etc.)
  * User Controls - re-usable visual components
  * Dependency properties - extends CLR that enables property setting and monitoring to allow data binding, routed commands, and events
  * Behavior - encapsulate interactive functionality to apply to controls
* Prism Ethos
  * Create an app so modules can be added independent of teams
  * Minimize cross-team dependiencies
  * Encourage reusability
  * Easy Exensibility
  * Designed for testing
  * Cafeteria Food - use all or any subset of Prism's features and design patterns
* Prism Key Concepts
  * Modules - vertical slices of functionality that can be independently developed & tested
    * Often in other projects/assemblies
  * Module catalog - determines which, when, and what order the modules are loaded in
  * Shell - determines layout of app and the container that modules are loaded into
  * Views - UI controls
    * Data Template - Views rendered using data context and not using code-behind
    * Control Template - ___________
  * View Models - Manage applications visual state and logic by having properties, events, and commands
  * Models - Classes with not a lot of logic
  * Commands - links actions (click, keydown, etc.) that allows them to be tested independently
  * Regions - UI placeholders which enables
  * Navigation - navigate the app
    * State-based - view's state is updated
    * View-switching - old views replaced & new views created
  * EventAggregator - components communicating in a decoupled way
  * Dependency Injection - component dependencies resolved at runtime enables extensibility and testability
    * Can use Unity, MEF, or other DI's that utilize ServiceLocator
  * Services - non-UI functionality often added by DI container
    * Examples: Logging, exception, and data access
  * Bootstrapper - initialize components and services

In summary, Prism is a framework where separation of concerns is a first-class citizen which enables multiple teams to independently work on and test the same application.

IMPORTANT:
  Data Template - 
  Control Template - 
  Prism architecture
  ReactiveUI architecture
  Observables - know them!!!
  Mock
  App.xaml vs MainWindow.xaml - App vs window (there can be multiple window)

#### Prerequisites

* Install Visual Studio Extension: [Prism Template Pack](https://visualstudiogallery.msdn.microsoft.com/e7b6bde2-ba59-43dd-9d14-58409940ffa0) - This _____
* Install Visual Studio Extension: [Prism Extensibility Pack](https://visualstudiogallery.msdn.microsoft.com/f0a9a453-2a50-40ea-919b-ac46e3e8b1a5) - This _____

#### Hello World



### ReactiveUI

Before we talk about the MVVM framework [ReactiveUI](http://reactiveui.net) we need to first discuss [Reactive Extensions](http://reactivex.io/), also known as ReactiveX or Rx, which is avalailable for multiple languages and we will focus on [Rx.NET](https://github.com/Reactive-Extensions/Rx.NET).

The core concept of Rx is pushing events as asynchronously streams instead of the typical synchronous pulling of events. A stream can be finite like rows from a database or can be infinite like mouse clicks.

Rx treats events as `Obsverable<T>`, which inherits from `IEnumerable<T>`, enabling multiple events to be composed together in sveldt LINQ statements. An example of this is combining the async sequences of mouse down, mouse move, and mouse up to construct a click and drag statement. This can also be used for combining streams from any async source such as web service requests, tweets, IoT events, etc.

#### Choose Your Own Adventure

ReactiveUI can be used entirely or a subset of it can be used with other frameworks.

### ReactiveUI + Prism = Totally works if that is how you roll

