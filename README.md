# laminas-mvc

## Introduction

App contain CRUD operation with unitTest

## Installation using Composer

use composer install to get related dependency in vendor folder

The easiest way to create a new Laminas MVC project is to use
[Composer](https://getcomposer.org/). If you don't have it already installed,
then please install as per the [documentation](https://getcomposer.org/doc/00-intro.md).

To create your project: use composer install to the root directory

## Running Unit Tests

To run the supplied skeleton unit tests, you need to do one of the following:

- During initial project creation, select to install the MVC testing support.
- After initial project creation, install [laminas-test](https://docs.laminas.dev/laminas-test/):

  ```bash
  $ composer require --dev laminas/laminas-test
  ```

Once testing support is present, you can run the tests using:

```bash
$ ./vendor/bin/phpunit
```

If you need to make local modifications for the PHPUnit test setup, copy
`phpunit.xml.dist` to `phpunit.xml` and edit the new file; the latter has
precedence over the former when running tests, and is ignored by version
control. (If you want to make the modifications permanent, edit the
`phpunit.xml.dist` file.)

## unit test

https://docs.laminas.dev/tutorials/unit-testing/

## URL CRUD OPERATION
http://localhost/laminas/public/beer

## SQL file dump
- data - db - .sql dump

## info on SQL
future scope for consumption of json data 
see .txt file in DB folder and change data type to store float value
