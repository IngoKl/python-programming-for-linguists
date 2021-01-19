# Commenting in Python

A key principle in software development is **documenting code**. This is something we have not really done in this workshop besides adding some comments to the notebooks.

However, especially if you are writing longer programs and scripts, adding good comments to your code is a must. This is true whether you work alone or whether there are multiple developers involved.

While there are many sophisticated ways of documenting code, the most basic way is to add comments directly into your code.

In Python, the two most common ways of doing this are the following:

## Single Line Comments

```python
# The following line will print the string "Hello World".
print('Hello World')
```

or:

```python
tokenized = [...] # This is a tokenized representation of ...
```

### Multiline Comments

```python
def add(a, b):
    '''This function will take in two integers and
    return their sum.'''

    return a * b
```

### Some Best Practices

* Avoid comments which simply repeat what's in the code: `return a # Returns a`
* Keep your comments brief and relevant (*Follow Grice's Maxims*)
* Make sure that your comments reflect the current state of the code. Update the comments if necessary.
* If there are guidelines, follow them!
