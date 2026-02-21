# JoA LaTeX Template

Joker of Academics (JoA) is a community-maintained platform for publishing "failed" research and "academic garbage". Unlike traditional journals, JoA accepts submissions that didn't work out—providing encouragement, ideas, and lessons learned from failures.

> [!IMPORTANT] Chinese support
>
> 
> For Chinese papers, use document class [JoACN](./JoACN.cls) instead of [JoA](./JoA.cls). See [example.zh.tex](./example.zh.tex) for a complete Chinese example.
> 
> When using online LaTeX editors (e.g. Overleaf), make sure to select **XeLaTeX** or **LuaLaTeX** as the compiler. _pdfLaTeX_ does not support Chinese intrinsically.

## Files

| File                               | Description                                                             |
| ---------------------------------- | ----------------------------------------------------------------------- |
| [JoA.cls](./JoA.cls)               | LaTeX class file for English papers                                     |
| [JoACN.cls](./JoACN.cls)           | LaTeX class file for Chinese papers (includes ctex package)             |
| [header.png](./header.png)         | Header image for the paper                                              |
| [footer.png](./footer.png)         | Footer image for the paper                                              |
| [mider.png](./mider.png)           | Banner image containing DOI (to be replaced by editor upon publication) |
| [example.tex](./example.tex)       | Example paper (English) demonstrating template usage                    |
| [example.zh.tex](./example.zh.tex) | Example paper (Chinese) demonstrating template usage                    |
| [joker.png](./joker.png)           | Sample image used in the example paper                                  |

## Usage

1. **Copy the template files** ([JoA.cls](./JoA.cls), [header.png](./header.png), [footer.png](./footer.png), [mider.png](./mider.png)) to your project directory

2. **Use the template** in your LaTeX document:
```latex
\documentclass{JoA}
```

3. **Set document metadata** (before `\begin{document}`):
```latex
\JoAtitle{Your Paper Title}
\miderimage{mider.png}
\JoAauthor{First Author$^{1,*}$, Second Author$^{2}$}
\JoAaffiliation{$^{1}$Department, University, City, Country\\
$^{2}$Department, University, City, Country}
\JoAkeyword{Keyword 1; Keyword 2; Keyword 3; Keyword 4}
\JoAabstract{Your abstract content here.}
```

4. **Generate the title page**:
```latex
\begin{document}
\maketitletwo

\section{Introduction}
...
\end{document}
```

