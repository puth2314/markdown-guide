[![html-current](https://img.shields.io/badge/html-current-brightgreen.svg?style=flat)](https://htmlpreview.github.io/?https://github.com/puth2314/markdown-guide/blob/master/build/markdown-guide.html)
[![pdf-current](https://img.shields.io/badge/pdf-current-brightgreen.svg?style=flat)](https://github.com/puth2314/markdown-guide/blob/master/build/markdown-guide.pdf)
[![slide-deprecated](https://img.shields.io/badge/slide-deprecated-orange.svg?style=flat)](https://github.com/puth2314/markdown-guide/blob/master/build/markdown-slide.pdf)

# Introduction

Welcome to a markdown guide. The aim to provide the general quirks of markdown; intended to be revisited as often as needed.

I tend to forget some specific markdown syntax; by which this guide provides a nice reference for. Also, writing this markdown guide in markdown is just wonderful.

This is a subset of the actual guide because this `README.md` is compiled using GitHub-flavored markdown. You might want to view the [HTML file](https://htmlpreview.github.io/?https://github.com/puth2314/markdown-guide/blob/master/build/markdown-guide.html) instead.

The ![LaTeX .pdf](https://github.com/puth2314/markdown-guide/blob/master/build/markdown-guide.pdf) and ![Beamer slides](https://github.com/puth2314/markdown-guide/blob/master/build/markdown-slide.pdf) are also in the repository; although direct compilation of a single markdown file into multiple formats often yield awkward formatting to at least one format (because that markdown file is not particularly written for said format).

# What is markdown?

Markdown is a markup language with plain text formatting syntax (basically better text). It converts plain text to HTML.

# Why use markdown?

- Markdown is incredibly lightweight compared to rich text formats; such as `.rtf` or `.docx`.
- It is arguably the simplest markup language there is.
- Can be converted to a plethora of formats seamlessly; such as `.html`, `.pdf`, `.docx`, etc. (which implies that `.md` files are essentially future-proof).

# Where is markdown used?

- Repositories such as [GitHub](https://github.com/) (`README.md` files) for software documentation.
- Forums and blog posts within applications or websites.
- Static websites.
- Documents and notes.
- Email formatting.
- This markdown guide.

# Headings and Sub-headings

Prepending a `#` before some text promotes it to a heading. Prepending additional `#`'s demotes it to a sub-heading, sub-sub-heading and so on. 

Adding one (or multiple) `=` below the text also promotes it to a heading. Use `-` for a sub-heading.

## Raw

```
# Heading
## Sub-heading
### Sub-sub-heading
#### Sub-sub-sub-heading
##### Sub-sub-sub-sub-heading

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
##### Sub-sub-sub-sub-heading

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

Text attributes: _italic_, *also italic*, **bold**, __also bold__, `mono-space`, ~~strike-through~~.
```

## Formatted

Paragraphs are separated by a blank line.

Two spaces at the end of a line  
produce a line break.

Text attributes: _italic_, *also italic*, **bold**, __also bold__, `mono-space`, ~~strike-through~~.

# Lists

A blank line between list elements (sometimes) produces a larger space between the elements.

## Raw

```
Unordered list:

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


Ordered list:

1. Uno
2) Dos
3) Tres

4. Cuatro
```

## Formatted

Unordered list:

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


Ordered list:

1. Uno
2) Dos
3) Tres

4. Cuatro

# Links

## Raw

```
A [Wikipedia](https://www.wikipedia.org "Wikipedia Home") and [Google][identifier] hyper-link.

A <https://directlink.tv> and <directlink@email.org>.

[identifier]: https://www.google.com "Google Home"
```

## Formatted

A [Wikipedia](https://www.wikipedia.org "Wikipedia Home") and [Google][identifier] hyper-link.

A <https://directlink.tv> and <directlink@email.org>.


[identifier]: https://www.google.com "Google Home"

# Horizontal Rule

Horizontal rules are not used that often.

## Raw

```
Horizontal rule:

---

Also horizontal rule:

___

Also also horizontal rule:

***
```

## Formatted

Horizontal rule:

---

Also horizontal rule:

___

Also also horizontal rule:

***

# Images

Text within the quotes after the image directory is the text displayed when the image directory is not found.

## Raw

```
![Markdown Icon](images/markdown-icon.png  "Markdown Icon"){ height=100% }
```

## Formatted

![Markdown Icon](images/markdown-icon.png  "Markdown Icon"){ height=100% }

# Block-quotes

Prepend a `>` in every line of the block for a block-quote.

## Raw

```
> Append two space in first line  
> for a line-break in block-quote.
>
> Second paragraph in block-quote.
>
>> Deeper block-quote with additional `>`.
>>
>>> Even deeper block-quote.
>>>
```

## Formatted

> Append two space in first line  
> for a line-break in blockquote.
>
> Second paragraph in blockquote.
>
>> Deeper blockquote with additional `>`.
>>
>>> Even deeper blockquote.
>>>

# Code-blocks

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
Text[^footnote-identifier] with a footnote[^long-footnote].

[^footnote-identifier]: Footnote information.

[^long-footnote]: Footnote with multiple blocks.
  
	Subsequent indented paragraphs belong to the footnote.
    
    	code.isNone() == True
```

## Formatted

Text[^footnote-identifier] with a footnote[^long-footnote].

[^footnote-identifier]: Footnote information.

[^long-footnote]: Footnote with multiple blocks.

	Subsequent indented paragraphs belong to the footnote.
    
    	code.isNone() == True

<!--
beamer does not like footnotes with multiple blocks
-->

# LaTeX

Surround LaTeX code with double `$`.

## Raw

```
$$\frac{some}{69}\cdot\frac{420}{LaTeX}$$
```

## Formatted

$$\frac{some}{69}\cdot\frac{420}{LaTeX}$$

# Tables

Generally and unfortunately, for some table styles, you cannot directly set the column width; unless you perform some wonky stuff with its behaviour.

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
  
# Task-list

## Raw

```
- [x] Done.
- [ ] Not done.
```

## Formatted

- [x] Done.
- [ ] Not done.

# Compiling

I mainly use [ghostwriter](https://github.com/wereturtle/ghostwriter) and [pandoc](https://github.com/jgm/pandoc).

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

# Explore

- Labels
- Images
- [Citations](https://pandoc.org/MANUAL.html#citations)
- Citation Syntax
