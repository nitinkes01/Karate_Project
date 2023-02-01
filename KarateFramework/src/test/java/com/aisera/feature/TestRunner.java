package com.aisera.feature;
import com.intuit.karate.junit5.Karate;

class TestRunner {

 @Karate.Test
 Karate test() {
 return Karate.run("FizzBuzz").relativeTo(getClass());
 }
}