## Introduction

Welcome to a markdown guide. The aim to provide the general quirks of markdown; intended to be revisited as often as needed. 
The following syntax is specific for converting to slides.

I tend to forget some specific markdown syntax; by which this guide provides a nice reference for. Also, writing this markdown guide in markdown is just wonderful.

## What is markdown?

Markdown is a markup language with plain text formatting syntax (basically better text). It converts plain text to HTML.

## Why use markdown?

- Markdown is incredibly lightweight compared to rich text formats; such as `.rtf` or `.docx`.
- It is arguably the simplest markup language there is.
- Can be converted to a plethora of formats seamlessly; such as `.html`, `.pdf`, `.docx`, etc. (which implies that `.md` files are essentially future-proof).

## Where is markdown used?

- Repositories such as [GitHub](https://github.com/) (`README.md` files) for software documentation.
- Forums and blog posts within applications or websites.
- Static websites.
- Documents and notes.
- Email formatting.
- This markdown guide.

# Headings and Sub-headings

## Note

Prepending a `#` before some text promotes it to a heading. Prepending an additional `#` demotes it to a sub-heading.

Sub-sub-sub-headings and so on always promote to a sub-sub-heading (when converting to slides).

Adding one (or multiple) `=` below the text also promotes it to a heading. Use `-` for a sub-heading.

## Raw

```
# Heading
## Sub-heading
### Sub-sub-heading
#### Sub-sub-heading

Also Heading
===
Also sub-heading
---
```

## Formatted

# Heading
## Sub-heading
### Sub-sub-heading
#### Sub-sub-sub-heading

Also Heading
===
Also sub-heading
---

# Generic Formatting

## Raw

```
Paragraphs are separated by a blank line.

Two spaces at the end of a line  
produce a line break.

Text attributes: _italic_, *also italic*, **bold**, __also bold__, 
`mono-space`, ~~strike-through~~.
```

## Formatted

Paragraphs are separated by a blank line.

Two spaces at the end of a line  
produce a line break.

Text attributes: _italic_, *also italic*, **bold**, __also bold__,
`mono-space`, ~~strike-through~~.

# Unordered Lists

## Note

A blank line between list elements (sometimes) produces a larger space between the elements.

## Raw

```
* Fruits
	- Apples
	
	- Oranges

		+ Orange
		- Green
		
+ Meat

	Subsequent indented paragraphs belong to the list element.
```

## Raw

~~~
* Dairy
	
	```
	if(height<10cm){shortPerson.drinkMilk()}
	```

- Vegetables
~~~

## Formatted

* Fruits
	- Apples
	
	- Oranges

		+ Orange
		- Green
		
+ Meat

	Subsequent indented paragraphs belong to the list element.

* Dairy
	
	```
	if(height<10cm){shortPerson.drinkMilk()}
	```

- Vegetables

# Ordered Lists

## Raw

```
1. Uno
2) Dos
3) Tres

4. Cuatro
```

## Formatted

1. Uno
2) Dos
3) Tres

4. Cuatro

# Links

## Raw

```
A [Wikipedia](https://www.wikipedia.org "Wikipedia Home")
and [Google][identifier] hyper-link.

A <https://directlink.tv> and <directlink@email.org>.

[identifier]: https://www.google.com "Google Home"
```

## Formatted

A [Wikipedia](https://www.wikipedia.org "Wikipedia Home")
and [Google][identifier] hyper-link.

A <https://directlink.tv> and <directlink@email.org>.


[identifier]: https://www.google.com "Google Home"

# Images

## Note

Text within the quotes after the image directory is the text displayed when the image directory is not found.

## Raw

```
![Markdown Icon](../images/markdown-icon.png  "Markdown Icon"){height=50%}
```

## Formatted

![Markdown Icon](../images/markdown-icon.png  "Markdown Icon"){height=50%}

# Block-quotes

## Note

Prepend a `>` in every line of the block for a block-quote. You can only have one level of block-quote.

## Raw

```
> Append two space in first line  
> for a line-break in block-quote.
>
> Second paragraph in block-quote.
>
>> Deeper block-quote with additional `>`.
>>
```

## Formatted

> Append two space in first line  
> for a line-break in blockquote.
>
> Second paragraph in blockquote.
>
>> Deeper blockquote with additional `>`.
>>

# Code-blocks

## Note

Surround the block with three `` ` ``'s or three `~`'s (above and below the block).

Optionally append the first line with the name of the defined language for syntax highlighting.

A code-block can also be formed with a prepended tab (four spaces) in each line.

## Raw

~~~
```Python
# A code-block
import numpy as np
def func(x):
	"""Returns sin squared of a number."""
	assert type(x) in (int,float)
	return np.sin(x)**2
if __name__ == '__main__':
	pass
```
~~~

## Raw

```
~~~C++
// Another code-block
for(int i=0;i++;i<42){
  Serial.println(i);
}
~~~
```

```
	free(malloc(69))
	malloc(free(42))
```

## Formatted

```Python
# A code-block
import numpy as np
def func(x):
	"""Returns sin squared of a number."""
	assert type(x) in (int,float)
	return np.sin(x)**2
if __name__ == '__main__':
	pass
```

~~~C++
// Another code-block
for(int i=0;i++;i<42){
  Serial.println(i);
}
~~~

	free(malloc(69))
	malloc(free(42))

# Comments

## Raw

```
<Comment>

<!--
Comment
-->

[//]: # (This is the most platform independent syntax.)

[///]: # (This will not be included in the output file.)
```

## Formatted

<Comment>

<!--
Comment
-->

[//]: # (This is the most platform independent syntax.)

[///]: # (This will not be included in the output file.)

# Footnotes

## Raw

```
Text[^footnote-identifier] with a footnote and inline^[You do not have to create an identifier.].

[^footnote-identifier]: Footnote information.
```

## Formatted

Text[^footnote-identifier] with a footnote and inline^[You do not have to create an identifier.].

[^footnote-identifier]: Footnote information.
	
# LaTeX

## Note

Surround LaTeX code with double `$`.

## Raw

```
$$\frac{some}{69}\cdot\frac{420}{LaTeX}\tag{1}$$
```

## Formatted

$$\frac{some}{69}\cdot\frac{420}{LaTeX}\tag{1}$$

# Tables

## Note

Generally and unfortunately, for some table styles, you cannot directly set the column width; unless you perform some wonky stuff with its behaviour.

It is good practice to bold the table headers.

## Raw

```
|Left|Centre|Right|
|:--|:-:|--:|
|1,1|1,2|1,3|
|2,1|2,2|2,3|
|3,1|3,2|3,3|
|4,1|4,2|4,3|

Table: Pipe Table
```

## Formatted

|Left|Centre|Right|
|:--|:-:|--:|
|1,1|1,2|1,3|
|2,1|2,2|2,3|
|3,1|3,2|3,3|
|4,1|4,2|4,3|

Table: Pipe Table

# Pandoc Tables

# Simple Table

## Raw

```
Left   Centre   Right
----- -------- ------
1,1     1,2       1,3
2,1     2,2       2,3
3,1     3,2       3,3
4,1     4,2       4,3

: Simple Table
```

## Formatted

Left   Centre   Right
----- -------- ------
1,1     1,2       1,3
2,1     2,2       2,3
3,1     3,2       3,3
4,1     4,2       4,3

: Simple Table

# Header-less Simple Table

## Raw 

```
----- ------ -----
1,1    1,2     1,3
2,1    2,2     2,3
3,1    3,2     3,3
4,1    4,2     4,3
----- ------ -----

: Header-less Simple Table
```

## Formatted

----- ------ -----
1,1    1,2     1,3
2,1    2,2     2,3
3,1    3,2     3,3
4,1    4,2     4,3
----- ------ -----

: Header-less Simple Table

# Multi-line Table

## Raw

```
-------------------------------------------------
Left               Centre                   Right
Aligned            Aligned                Aligned
---------------- ----------- --------------------
This sentence       1,2                       1,3
spans two lines     

2,1                 2,2        Note the the blank
                                line between rows.

--------------------------------------------------

: Multi-line Table
```

## Formatted

-------------------------------------------------
Left               Centre                   Right
Aligned            Aligned                Aligned
---------------- ----------- --------------------
This sentence       1,2                       1,3
spans two lines     

2,1                 2,2        Note the the blank
                                line between rows.

--------------------------------------------------

: Multi-line Table

# Grid Table

## Raw

```
: Grid Table

+-----------+-----------+
|    Default|    Default|
+===========+===========+
|- 0.33,1   |   1,2     |
|- 0.67,1   |           |
+-----------+-----------+
|- 1.33,1   |   2,2     |
|- 1.67,1   |           |
+-----------+-----------+
```

## Formatted

: Grid Table

+-----------+-----------+
|    Default|    Default|
+===========+===========+
|- 0.33,1   |   1,2     |
|- 0.67,1   |           |
+-----------+-----------+
|- 1.33,1   |   2,2     |
|- 1.67,1   |           |
+-----------+-----------+

# Piped Grid Table

## Raw

```
: Piped Grid Table

+----+------+-----+
|Left|Centre|Right|
+:===+:====:+====:+
|1,1 | 1,2  |  1,3|
+----+------+-----+
|2,1 | 2,2  |  2,3|
+----+------+-----+
|3,1 | 3,2  |  3,3|
+----+------+-----+
|4,1 | 4,2  |  4,3|
+----+------+-----+
```

## Formatted

: Piped Grid Table

+----+------+-----+
|Left|Centre|Right|
+:===+:====:+====:+
|1,1 | 1,2  |  1,3|
+----+------+-----+
|2,1 | 2,2  |  2,3|
+----+------+-----+
|3,1 | 3,2  |  3,3|
+----+------+-----+
|4,1 | 4,2  |  4,3|
+----+------+-----+

# Header-less Grid Table

## Raw

```
: Header-less Grid Table

+:---+:----:+----:+
|1,1 | 1,2  |  1,3|
+----+------+-----+
|2,1 | 2,2  |  2,3|
+----+------+-----+
|3,1 | 3,2  |  3,3|
+----+------+-----+
|4,1 | 4,2  |  4,3|
+----+------+-----+
```

## Formatted

: Header-less Grid Table

+:---+:----:+----:+
|1,1 | 1,2  |  1,3|
+----+------+-----+
|2,1 | 2,2  |  2,3|
+----+------+-----+
|3,1 | 3,2  |  3,3|
+----+------+-----+
|4,1 | 4,2  |  4,3|
+----+------+-----+

# Line-block

## Note

Prepend a `|` in each line of the line-block.

This allows new lines without an empty line between each line, which is useful for verses and addresses.

## Raw

```
| An iconic lullaby:
| 	 Twinkle twinkle little star,
|	 how I wonder what you are.
| 	 Up above the world so high,
|	 like a diamond in the sky.
| 	 Twinkle twinkle little star,
|	 how I wonder what you are.
```

## Formatted

| An iconic lullaby:
| 	 Twinkle twinkle little star,
|	 how I wonder what you are.
| 	 Up above the world so high,
|	 like a diamond in the sky.
| 	 Twinkle twinkle little star,
|	 how I wonder what you are.

# Task-list

## Raw

```
- [x] Done.
- [ ] Not done.
```

## Formatted

- [x] Done.
- [ ] Not done.

# Superscripts and Subscripts

## Note

Surround literals between`~` for a subscript. Very useful in [chemical formulae](https://en.wikipedia.org/wiki/Chemical_formula).

Conversely, surround literals between `^` for a superscript.

## Raw

```
H~2~O is one of the main reasons to why life exists.

f(x) = Ae^-bx^ describes exponential decay.
```

## Formatted

H~2~O is one of the main reasons to why life exists.

f(x) = Ae^-bx^ describes exponential decay.

# Definition List

## Raw

```
Term
: This is a definition.
: This is an alternate definition.
```

## Formatted

Term
: This is a definition.
: This is an alternate definition.

# Beamer Slides

# Header-less Content

## Raw

```
### Header

Content here.

###

Content is also here.
```

## Formatted

### Header

Content here.

###

Content is also here.

# In-line Images

## Raw

```
![Markdown Icon](../images/markdown-icon.png  "Markdown Icon"){ height=60% }\ 
![Also a markdown Icon](../images/markdown-icon.png  "Also a markdown Icon"){height=30%}
```

## Formatted

![Markdown Icon](../images/markdown-icon.png  "Markdown Icon"){ height=60% }\ 
![Also a markdown Icon](../images/markdown-icon.png  "Also a markdown Icon"){height=30%}

# Columns

## Raw

```
::: columns

:::: column

Left text.

::::

:::: {.column width=20%}

Right text.

::::

:::
```

## Formatted

::: columns

:::: column

Left text.

::::

:::: {.column width=20%}

Right text.

::::

:::

# Labels

## Raw

```
Reference Figure \ref{fig:md}.

![Markdown Icon\label{fig:md}](../images/markdown-icon.png  "Markdown Icon"){height=70%}
```

## Formatted

Reference Figure \ref{fig:md}.

![Markdown Icon\label{fig:md}](../images/markdown-icon.png  "Markdown Icon"){height=70%}

# Compiling

## Note

I mainly use [ghostwriter](https://github.com/wereturtle/ghostwriter) and [Pandoc](https://github.com/jgm/pandoc).

Most text-editors should have support for markdown. Most IDE's should have plugins to view formatted markdown in real-time.

## ghostwriter

- Can choose `Markdown Flavor` and `Style Sheet` for HTML preview.
- Can see `Outline HUD` and `Documents Statistics HUD`; and can use `ctrl + shift + h` to remove or show them.
- Can `Insert Image` by dragging in an image.
- Can `Copy HTML` with `ctrl + shift + c`.
- Can `Export` directly.
- Can use `Distraction Free Mode` with no HUD and no HTML preview.

## Pandoc

- To HTML example snippet: `pandoc markdown-guide.md -o markdown-guide.html -s --mathjax`.
- To PDF example snippet: `pandoc markdown-guide.md -o markdown-guide.pdf --pdf-engine=pdflatex`.
- To Beamer example snippet: `pandoc markdown-guide.md -o markdown-slide.pdf -t beamer -V theme:Luebeck`. Note: Beamer does not like footnotes that take more than the available space (hence make sure that this is satisfied before converting to beamer); also it is best remove any geometry tags and decrease the font size as well.
- `-s` means standalone and not a fragment; e.g. an HTML file with `head` and `body`.
- `-f` and `-t` specifies input and output format respectively (markdown, latex, html), otherwise format is interpreted from file type.
- `--toc` for table of contents; useful with `-c style.css`.
- Make modifications to `latex-template.tex` from `pandoc -D latex >> latex-template.tex`, and then use `--template=latex-template.tex`.
- Can concatenate multiple input files.

# Adding References

## Steps

1. Add a `.bib` file into a directory, and optionally a `.csl` file.
	- [Here](http://www.bibtex.org/Format/) is a link in formating the `.bib` file.
	- [Here](https://www.zotero.org/styles) is a link for `.csl` files for citation standards.
	- [Here](https://editor.citationstyles.org/visualEditor/) is a link to edit your own `.csl` files.
2. Within your markdown document, append `@` with the unique citation-key declared in the `.bib` file, to add references. 
3. Add the `-C` or `--cite-proc` argument when compiling, to process the citations.
4. Add the `--bibliography=<file-name>.bib` argument to specify the path to the file (replace `<file-name>`).
5. Optionally add the `--csl=<file-name>.csl` argument to specify a certain citation style.

## Raw

```
This is two self references. [@puth-mdg;@puth-mdg]
```

## Formatted

This is two self references. [@puth-mdg;@puth-mdg]

# References

## Note

Otherwise, the references will automatically be appended to the end of the document.

## Raw

```
::: {#refs}
:::
```

## Formatted

::: {#refs}
:::

## Explore

- Labels
- Images
- [Citations](https://pandoc.org/MANUAL.html#citations)
- Citation Syntax
