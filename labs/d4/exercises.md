## Array and Hash access

###### Given the following data structure:

```ruby
a = ["Zhao", "Omar", "Dylan"]
```

* How would you return the string `"Zhao"`?
* How would you add your name to the array?

###### Given the following data structure:

```ruby
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
```

* How would you return the string `"One"`?
* How would you return the string `"Two"`?
* How would you return the number `2`?
* How would you add `{3 => "Three"}` to the hash?
* How would you add `{:four => 4}` to the hash?

###### Given the following data structure:

```ruby
is = {true => "It's true!", false => "It's false"}
```

* What is the return value of `is[2 + 2 == 4]`?
* What is the return value of `is["Zhao" == "Dylan"]`?
* What is the return value of `is[9 > 10]`?
* What is the return value of `is[0]`?
* What is the return value of `is["Zhao"]`?

###### Given the following data structure:

```ruby
users = {
  "Zhao" => {
    :twitter => "zlu",
    :favorite_numbers => [12, 42, 75],
  },
  "Omar" => {
    :twitter => "omardelarosa",
    :favorite_numbers => [8, 12, 24],
  },
  "Dylan" => {
    :twitter => "dylan_oshea",
    :favorite_numbers => [12, 14, 85],
  },
}
```

* How would you access Zhao's Twitter handle (i.e. the string `"zlu"`)?
* How would you add the number `7` to Omar's favorite numbers?
* How would you add yourself to the users hash?
* How would you return the array of Dylan's favorite numbers?
* How would you return the smallest of Zhao's favorite numbers?
* How would you return an array of Dylan's favorite numbers that are also even?
* How would you return an array of the favorite numbers common to all users?
* How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
