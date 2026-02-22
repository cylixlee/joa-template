# JoA LaTeX Template

Joker of Academics (JoA) is a community-maintained platform for publishing "failed" research and "academic garbage". Unlike traditional journals, JoA accepts submissions that didn't work out—providing encouragement, ideas, and lessons learned from failures.

> [!IMPORTANT]
>
> 
> For Chinese papers, use document class [JoACN](./JoACN.cls) instead of [JoA](./JoA.cls). See [example.zh.tex](./example.zh.tex) for a complete Chinese example.
> 
> When using online LaTeX editors (e.g. Overleaf), make sure to select **XeLaTeX** or **LuaLaTeX** as the compiler. _pdfLaTeX_ does not support Chinese intrinsically.

## Files

This repository contains four types of files: *template resources*, *paper resources*, *template classes*, and *example papers*.

```
.
├── .template/        # Template resources
│   ├── header.png
│   ├── footer.png
│   ├── banner.png    #   for English papers
│   └── banner.zh.png #   for Chinese papers
├── images/           # Paper resources
│   └── joker.png
├── JoA.cls           # Template class for English papers
├── JoACN.cls         # Template class for Chinese papers
├── example.tex       # Example English paper
└── example.zh.tex    # Example Chinese paper
```

- **Template resources** are the image files required by the template. They include header, footer, and banner images, with separate versions for English and Chinese papers. These files are embedded in template classes, so users shall not touch them.

- **Paper resources** are resources required by your paper, such as figures. For demonstration purposes, this folder currently contains one sample image. Since this image belongs to the paper rather than the template, it is placed in the paper resources folder rather than the template resources folder. Users should put their own figures in this folder.

- **Template classes** are the LaTeX class files that define the document format. The English version is for papers in English and does not include the `ctex` package, making it compatible with *pdfLaTeX*. The Chinese version includes the `ctex` package for Chinese papers and requires *XeLaTeX* or *LuaLaTeX* compiler.

- **Example papers** demonstrate how to use the templates in English and Chinese respectively.

## Commands

The template defines several custom commands for setting document metadata. The following table describes their purposes.

| Command                | Description                                               |
| ---------------------- | --------------------------------------------------------- |
| `\JoAtitle{...}`       | Set the paper title                                       |
| `\JoAauthor{...}`      | Set authors with affiliations                             |
| `\JoAaffiliation{...}` | Set author affiliations                                   |
| `\JoAkeyword{...}`     | Set keywords (semicolon separated)                        |
| `\JoAabstract{...}`    | Set the abstract content                                  |
| `\maketitletwo`        | Generate the title page with header, footer, and metadata |

