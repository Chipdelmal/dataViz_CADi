# [Markdown](https://github.github.com/gfm/)

It is a lightweight markup language that allows several features that make it extremely attractive for data representation. It was used thoroughly to generate the content in this course due to its simplicity and attractiveness. Some of its main features are:

* Easily converted to HTML by simple engines
* Widely used and supported (github, jekyll, etcetera)
* Syntax is extremely simple
* Allows the direct inclusion of [HTML](https://en.wikipedia.org/wiki/HTML) code in its syntax.
* Code syntax highlighting

Although [github](www.github.com) does not allow the embedding of [LaTeX](https://www.latex-project.org/) equations, we can use [Sciweavers](http://www.sciweavers.org/free-online-latex-equation-editor) as a workaround to embed them as figures.

<hr>

##  Common commands

### Headers

```markdown

# Heading level 1
## Heading level 2
### Heading level 3
#### Heading level 4
##### Heading level 5
###### Heading level 6
```

### Bold Face

```markdown
Italics: *asterisks* or _underscores_.
Bold: **asterisks** or __underscores__.
Combined: **asterisks and _underscores_**.
Strikethrough: ~~Scratch this.~~
```

### Lists

```markdown
Ordered lists:
1.  First element
2.  Second element
...

Unordered lists:
* First element
* Second element
...
```

### Links

```markdown
[link](https://www.google.com)
![image](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")
```

### Code

```markdown
Inline code: `print("Hello World!")`

Block code:

` ` `python
s = "Python syntax highlighting"
print s
` ` `
```

### HTML

```markdown
<dl>
  <dt>Definition list</dt>
  <dd>Is something people use sometimes.</dd>

  <dt>Markdown in HTML</dt>
  <dd>Does *not* work **very** well. Use HTML <em>tags</em>.</dd>
</dl>
```

<hr>

For a complete list of the most commonly used commands, follow this [cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet), and for an in-depth guide of markdown, follow this [guide](https://daringfireball.net/projects/markdown/).
