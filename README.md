# Santander cycles :bicyclist:

![](https://img.shields.io/badge/Practice-Makers%20Academy-red) [![Build Status](https://travis-ci.com/jonesandy/santander-cycles.svg?branch=master)](https://travis-ci.com/jonesandy/santander-cycles) [![Maintainability](https://api.codeclimate.com/v1/badges/56ed64e4e5d19bd841e8/maintainability)](https://codeclimate.com/github/jonesandy/santander-cycles/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/56ed64e4e5d19bd841e8/test_coverage)](https://codeclimate.com/github/jonesandy/santander-cycles/test_coverage)

---

This application models the Santander cycles scheme run by TfL in London. It is used as a practice for OOP principles and TDD practice while on the Makers Academy developer course. This was made as practice over the Christmas period 2019.

## Getting started

This project requires Ruby version 2.6.5. To check which Ruby version is running on your computer:

```bash
ruby -v
```

If running RVM for Ruby management please install 2.6.5:

```bash
rvm install 2.1.1

# .ruby-version file should switch to correct Ruby version. If not run this command
rvm 2.6.5
```

To install and run program first clone or download.

```bash 
git clone
```

Change into the root directory and install dependencies.

```bash
cd santander-cycles

# Once in root folder
bundle install
```

## User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working.

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station.

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```

## Usage

Program runs in IRB. To load IRB open a terminal window.

```bash
# Type irb into terminal
irb

# At the prompt require_relative the main file
2.6.5 :001 > require_relative './lib/docking_station.rb'
```

Docking stations and bikes can then be created. Program uses the following commands.

```bash
station =  DockingStation.new(capacity) # Create new docking station with a capacity
bike = Bike.new # Create a new bike

station.release_bike # To release a bike if any docked
station.dock(bike) # To dock a bike

bike.report_broken # To report a broken bike
```

## Running tests

To run tests, make sure you are in the root folder, then run RSpec.

```bash
# Inside root folder
rspec
```

