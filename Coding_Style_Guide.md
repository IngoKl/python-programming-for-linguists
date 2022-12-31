# Coding Style Guide

There are not only many different ways in which one can solve a programming task, but also many ways of writing (or styling) one's code.

Similar to natural languages, programming languages allow you to make stylistic decisions. This ranges from relatively simple things such as the number of indentations and the preferred way of naming variables and objects to more sophisticated questions such as using Idioms used and recognized by the community.

For example, a common and Pythonic principle (well, convention) is to use the `_` (underscore) for ignored variables such as in:

```Python
for _ in range(10):
     print('Hello World')
```

We could have used anything instead of `_`. However, as the variable is not needed, it's a convention to use an underscore.

The Python community, at least many, pride themselves in writing highly readable and [*Pythonic* code](https://docs.python-guide.org/writing/style/). The two most famous guidelines are [**PEP 8** - *Style Guide for Python Code*](https://www.python.org/dev/peps/pep-0008) as well as the more poetic [**PEP 20** - *The Zen of Python*](https://www.python.org/dev/peps/pep-0020/).

In addition, many companies and organizations publish their own style guides and documentation. A famously and widely applied guide that is, arguably, more practical than *PEP 8* in many regards is [Google's Python Style Guide](https://google.github.io/styleguide/pyguide.html).

## Basics

Of course, this is not a complete style guide. However, I wanted to discuss some of the decisions made:

* In *Colab* notebooks, two spaces are used for indentation to make the code more compact. In 'regular' Python scripts, following [PEP 8](https://www.python.org/dev/peps/pep-0008/), four spaces are the norm and preferred.
* Single quotation marks (`'hello world'`) are used instead of double ones. Ultimately, it's just a preference thing.
* String formatting is performed using [f-strings](https://www.python.org/dev/peps/pep-0498/). They are easy to write, easy to read, and just plain better than other options in almost any case.
* While trying to stay within the 80 characters per line limit posited by *PEP 8*, this is treated as a suggestion rather than a rule.
* Very basic commenting using the `#` symbol. While [docstrings](https://www.python.org/dev/peps/pep-0257/) are fantastic, I believe that they overcomplicate things for beginners in many cases.

Generally speaking, for this workshop, I tried to prioritize readable code over highly efficient or beautiful code. Furthermore, in many cases, I have been using fairly explicit ways of doing things. In other cases, I have deliberately used shorthands and idioms (e.g., list comprehensions) to demonstrate them.

*For example:*

Let's assume we have a tokenized list of words `sentence`, and we want the same list but in lower case. The following two things both achieve the same goal:

```Python
sentence = ['Hello', 'World']
lowercase = []

for word in sentence:
  lowercase.append(word.lower())
```

```Python
lowercase = [w.lower() for w in sentence]
```

While the second one, a list comprehensions, arguably is more elegant and possibly also more pythonic, it is harder to understand for beginners.

## Auto-Formatting

There are a number of fantastic tools available that help you with writing better, more beautiful, and cleaner code. Some commonly used auto-formatters are [`autopep8`](https://github.com/hhatto/autopep8#features), Google's [`yapf`](https://github.com/google/yapf) as well as [`black`](https://github.com/psf/black).

For this workshop, I opted against using or introducing these tools to reduce complexity. Also, I made some pedagogical/didactic decisions that run against *PEP 8*.

## Type Hinting

Since Python 3.5, [type hinting](https://www.python.org/dev/peps/pep-0484/) is supported in the language. Put simply, type hinting is a way of making the types (e.g., *integer* or *string*) more explicit.

```Python
def hello(name: str) -> str:
    return f'Hello, {name}'
```

In the example above, type hins are used to clearly indicate that the function `hello` takes one string (`name`) and returns a string as well.

Type hinting has both pros and cons ([Overview by Christopher Bailey](https://realpython.com/lessons/pros-and-cons-type-hints/)) and there's a lively debate on whether to use it or not. Personally, I think type hinting has its place within larger projects that can benefit from easier documentation and more explicit engineering However, for the sake of learning Python and for smaller tools, I believe it first and foremosts adds unnecessary complexity. Hence, there is no type hinting in this workshop!
