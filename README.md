BDD with AppCode
================

This repo contains sample project and a little bit of materials for [JetBrains BDD Webinar](http://blog.jetbrains.com/objc/2014/08/live-webinar-bdding-your-objective-c-apps-september-2nd/). 

## Setup

This project uses [Cocoapods](http://cocoapods.org) thus you'll have to run 

```
pod install
```

before opening workspace.

## Used frameworks

We'll be using following frameworks:

* [Specta]() - BDD DSL framework
* [Expecta]() - matchers framework
* [OCMockito](https://github.com/jonreid/OCMockito) - mocking framework.
* [OCHamcrest]() - matchers framework.

## Live templates

We'll be relying heavily on use of live templates. Those can be found in this [settings file](https://github.com/paweldudek/bdd-app-code/blob/master/settings.jar). Follow [guide](http://www.jetbrains.com/idea/webhelp/exporting-and-importing-settings.html) descriping how to import settings into AppCode.
