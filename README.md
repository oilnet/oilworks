Oilworks
========

A LaTeX style formatter package that allows users to create LaTeX documents conforming to the Oriental Institute of Leipzig's style requirements.

# How to Install #

## Manually ##

If you want to install the package manually then just download the `.sty` file and place it in the texmf folder for use with all of your LaTeX file needs. If you just want to use it on one project, just place it in your project folder for local access.

# How to Use #

The Oilworks package does not require that you use any other packages, though it allows you to do so. The packages that are utilized by Oilworks are: geometry, babel, csquotes, biblatex, and color, plus some others. In order to use the features provided by Oilworks, the first thing you have to do is to use the package in your LaTeX project. To do this use the following command:
    
    \usepackage{oilworks.sty}

## Paragraph Formatting ##

Paragraph formatting is standard and coincides with the measures put in place by MLA style. The font used
is Charis SIL for Latin parts of the document and is of size 12. Arabic is typeset in Amiri. In order to change the justification of the paper, you have 3 options: (1) left justification, (2) right justification, or (3) justified. Justified is the default because that is also the default setting when using LATEX. If you would like to change the justification settings of your paper, use the following commands:

To make the file right justified use `\raggedleft`
To make the file left justified use `\raggedright`

Place either of these commands before the begin document section of your LaTeX file.

## Citing and Sources ##

This package uses BibTeX because it is the most commonly used for bibliographies. All of your sources
should be kept in a .bib file and should be formatted to meet the BibTeX standards. To learn more about
BibTeX and its features, look at this website http://en.wikipedia.org/wiki/BibTeX. Once your file is
set up you need to tell mla13 which file to look at. To do this type the following before the begin document
section of your LaTeX project:
   
    \sources{NameOfBibFile.bib}

To cite a source, the main command that you should use is the standard cite command. This is the one
that fits with MLA citation style. Here is an example of how to use this command:

No Page Number: `\cite{Name of Source}`
Page Number: `\cite[Page]{Name of Source}`

Finally, add `\makeworkscited` at the end of your document (but before `\end{document}`) in order to include your works cited.

# Comments, Suggestions, or Anything Else #

If you have any suggestions, feel free to update the files yourself, I'm open to any submissions or pull requests.
