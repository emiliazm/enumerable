# decode_morse_ruby
This is an exercise to test enumerables using clases and modules.

![](https://img.shields.io/badge/Microverse-blueviolet)


## Built With

- Ruby

## Getting Started

Setting up this project locally:
#### On your terminal:
- Clone this repository to your computer: git clone github.com/Trictonicmp/decode_morse_ruby
- Open the project on your code editor: "cd code_morse_ruby" and "code ."


## Prerequisites

### General requirements

- Make sure that there are [no linter errors](https://github.com/microverseinc/linters-config).
- Make sure that you used correct ([GitHub Flow](https://github.com/microverseinc/curriculum-transversal-skills/blob/main/git-github/articles/github_flow.md).
- Make sure that you documented your work [in a professional way](https://github.com/microverseinc/curriculum-transversal-skills/blob/main/documentation/articles/professional_repo_rules.md).

### Ruby requirements
- Follow our list of [best practices for Ruby](https://github.com/microverseinc/curriculum-ruby/blob/main/articles/ruby_best_practices.md).

### Project requirements

- Check offical documentation about the following 3 methods in [Enumerable](https://ruby-doc.org/core-3.0.0/Enumerable.html). Make sure that you understand what they are doing.
  - [description of #all? method](https://ruby-doc.org/core-3.0.0/Enumerable.html#method-i-all-3F)
  - [description of #any? method](https://ruby-doc.org/core-3.0.0/Enumerable.html#method-i-any-3F)
  - [description of #filter method](https://ruby-doc.org/core-3.0.0/Enumerable.html#method-i-filter)
- Create a class `MyList` that has an instance variable `@list`.
- In `MyList` implement a method `#each` that yields successive members of `@list` and uses the `MyEnumerable` module.
- Create a module `MyEnumerable` that implements the following methods (they should have the same funcionality as methods in [Enumerable](https://ruby-doc.org/core-3.0.0/Enumerable.html)):
  - `#all?`
  - `#any?`
  - `#filter`
- Each class and module should has a separate .rb file.
- Verify your solution:
```ruby
# Create our list
irb> list = MyList.new(1, 2, 3, 4)
=> #<MyList: @list=[1, 2, 3, 4]>

# Test #all?
irb> list.all? {|e| e < 5}
=> true
irb> list.all? {|e| e > 5}
=> false

# Test #any?
irb> list.any? {|e| e == 2}
=> true
irb> list.any? {|e| e == 5}
=> false

# Test #filter
irb> list.filter {|e| e.even?}
=> [2, 4]
```


## Authors

👤 **Emilia Zambrano**

- GitHub: [@emiliazm](https://github.com/emiliazm)
- Twitter: [@emilia_zm](https://twitter.com/emilia_zm)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/emilia-zambrano-montero-aa30a611b/)

👤 **Amaury Permer**

- GitHub: [@Trictonicmp](https://github.com/trictonicmp)
- LinkedIn: [Amaury Permer](https://www.linkedin.com/in/amaury-permer/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Trictonicmp/decode_morse_ruby/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse README template.

## 📝 License

- This project is [MIT](./MIT.md) licensed.
