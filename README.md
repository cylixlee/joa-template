# JoA LaTeX Template

Joker of Academics (JoA) is a community-maintained platform for publishing "failed" research and "academic garbage". Unlike traditional journals, JoA accepts submissions that didn't work out—providing encouragement, ideas, and lessons learned from failures.

## Files

| File | Description |
|------|-------------|
| `JoA.cls` | LaTeX class file for the journal format |
| `header.png` | Header image for the paper |
| `footer.png` | Footer image for the paper |
| `mider.png` | Banner image containing DOI (to be replaced by editor upon publication) |
| `example.tex` | Example paper (English) demonstrating template usage |
| `example.zh.tex` | Example paper (Chinese) demonstrating template usage |
| `joker.png` | Sample image used in the example paper |

## Usage

1. **Copy the template files** (`JoA.cls`, `header.png`, `footer.png`, `mider.png`) to your project directory

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

## Chinese Support

The template includes `ctex` package, so you can write papers in Chinese directly. See `example.zh.tex` for a Chinese example.

## Compiling

Compile with:
```bash
pdflatex example
```

Or use your preferred LaTeX editor.

## Note

The `mider.png` file contains the DOI placeholder. When your paper is accepted for publication, the editor will provide a replacement image with the actual DOI.
