# Mock! - m-spec

## Learning Objectives:

- Define a unit test as 'a test for code isolated from all other code'
- Explain that test doubles can be used to stop objects-under-test from calling other objects in a program
- Refactor a bunch of un-isolated unit tests into isolated ones using test doubles

## Overview

* You will isolate some un-isolated unit tests using an external library of code

## Instructions

1. Clone the repository using `git clone <repo url>`.
1. Install any project dependencies using `bundle install`.

> You may have to run `gem install bundler` to install Bundler first.

Your task: isolate the unit tests in `./spec`.

1. Read through the docs for [m-spec](https://github.com/dearshrewdwit/m-spec).
3. Run your tests using `m-spec ./spec_runnner.rb`
4. The only style offenses you should ignore are for your spec files: `Metrics/BlockLength: Block has too many lines.`. Everything else, fix!
5. Replace your custom mocks with m-spec's `test_double` method and `allow()to receive() {}` syntax following the [usage docs](https://github.com/dearshrewdwit/m-spec#usage)

**Make sure to do them in this order**:

1. test.score method.
2. student.happiness method.
3. student.test_scores method.
