GRPC Service
============

[GRPC](https://grpc.io/) is a high-performance, open source RPC framework. It's
what we use for all of our services here at Biba.

In this folder you'll find [a protobuf file named
`service.proto`](./service.proto) that defines the service you'll be building.

It contains several message types and a service with the following methods:

* FizzBuzz
* Stats
* Morse
* Josephus

Each of these methods is explained more in detail below.

## FizzBuzz

This method takes in a single number as input.

The output is determined as follows:

* if the number is a multiple of three, output `Fizz`
* if the number is a multiple of five, output `Buzz`
* if the number is a multiple of three AND five, output `FizzBuzz`
* for all other cases, return the number

## Stats

This method takes a slice of integers as input. It should return the lowest
value, the highest value, and the median.

For example, with the input `[5 10 2 11 20]`:

* 2 is the min
* 20 is the max
* 10 is the median

If the input has an even length, such as `[2 2 3 4 8 8]`:
* 2 is the min
* 8 is the max
* 3.5 is the median

## Morse

Given a string of [Morse code](https://en.wikipedia.org/wiki/Morse_code), return
the decoded English string.

For example, given `.... . -.--   .--- ..- -.. .`, return `HEY JUDE`.

## Josephus Problem

This method should return the "safe" position to stand in a circle of the
[Josephus
problem](https://www.geeksforgeeks.org/josephus-problem-set-1-a-on-solution/).

Given a number of people `n` and a skip value `k`, return the safe position to
stand `s`.


# Bonus Points

If you felt that was too easy, here are some extra challenges:

* make each route accessible via HTTP
* write a full test suite
* add another route that will turn English into Morse code
* write a Go library that wraps all these methods and provides a simple-to-use API
