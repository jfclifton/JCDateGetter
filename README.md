JCDateGetter
============

Easily get NSDate objects using timeAgo or timeAhead on integers

Simple Swift code to obtain NSDate objects using "int.days/weeks/months(specifier)". Created to experiment with Swift.

How to use:

Add "JCDateGetter.swift" file to your project

// Get NSDate for 3 days ago
var threeDaysAgo = 3.days(timeSpecifier.timeAgo)

// Get NSDate for 3 days ahead
var threeDaysAhead = 3.days(timeSpecifier.timeAhead)

