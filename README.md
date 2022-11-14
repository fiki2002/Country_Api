
# COUNTRY API

This app is an app built with the knowledge of Flutter and Dart,
It is an app that consumes an API from https://restcountries.com/v3.1/all
The API returns a data of countries and their important details such as:
 - Capital
 - Population
 - Official Language
 - Ethnic Group 
 Just to mention a few


## Features

- System dark/light mode
- Country list screen
- Details of country screen
- API consumption
- Group of data from API


## Codebase Description
The codebase is completely written with Flutter and Dart.
It is well structured with the lib folder housing the main features of the project,
the lib folder is made of the following folders:
  - Models
  - Provider
  - Services
  - Theme
  - Views


## Models
This folder consists of the model class of the data gotten from the API, 
The model is the representation of the data we are receiving from the API

## Provider
This folder consists of both the API provider, which is where we handle the state necessary for the data gotten from the API
And also the ThemeProvider, which consists of the provider class used to handle the state of the theming which includes system, dark and light mode respectively

## Services
This consists of the class handling the response and handling of the API calls ,
In this folder we made our GET request to the API gotten from https://restcountries.com/v3.1/all

## Theme
As the name implies, i handled the theming of the app in this folder, it includes the app_colors.dart and app_fonts.dart.
Where i had classes to keep the necessary parameters of both the colors and fonts



## Libraries Description
The Libraries used in the app are:
- Google_Fonts
- Provider
- Http

 ## Google_Fonts

 I used this package to achieve the fonts the designer used in the UI, instead of going through the stress of downloading the fonts on the web which could be hard to find.
 It's a lifesaver.

 ## Provider

  This is a state management solution which i used in management the states necessary for theming and API calls

 ## Http
  I used this package for handling the API calls of the app


## Features I would love to add

I would have loved to implement the filter functionality and also localize more languages


## Challenges i faced

As a  beginner in Flutter, grouping the response from the API calls seemed very tough for me and also the search functionality and both the UI and logic of the filter functionality
I intend on working on them after i make this submission.
How i solved them!, uhmmn,  This project show me shege pro max😭 but thank God for Stack Overflow and Youtube
I am  not satisfied sha
I have a lot to learn.

## APK link
https://drive.google.com/file/d/1iJhhudXkcUHqHDvn_q0mz33MjzscUbvE/view?usp=drivesdk

## Appetize URL
https://appetize.io/app/r7omud4fvwimrnq4qkhipa67oe?device=pixel4&osVersion=11.0&scale=75
