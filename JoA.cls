\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JoA}[2026/02/20 JoA - Joker of Academics LaTeX Template]

\LoadClass[a4paper,twocolumn]{article}

\RequirePackage{geometry}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage{tabularx}
\RequirePackage{xcolor}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{cuted}
\RequirePackage{fancyhdr}
\RequirePackage{newtxtext}
\RequirePackage{newtxmath}

\geometry{
  left=2.54cm,
  right=2.54cm,
  top=3.8cm,
  bottom=2.54cm,
  headheight=72pt,
  headsep=0.6cm
}

\definecolor{JoARed}{HTML}{C71D31}

\titleformat{\section}{\color{JoARed}\bfseries\fontsize{12pt}{12pt}\selectfont}{\thesection.}{0.5em}{}%
\titleformat{\subsection}{\color{JoARed}\bfseries\fontsize{12pt}{12pt}\selectfont}{\thesubsection}{0.5em}{}%
\titleformat{\subsubsection}{\color{JoARed}\bfseries\fontsize{12pt}{12pt}\selectfont}{\thesubsubsection}{0.5em}{}%
\titleformat{\paragraph}{\color{JoARed}\bfseries\fontsize{12pt}{12pt}\selectfont}{\theparagraph}{0.5em}{}%
\titleformat{\subparagraph}{\color{JoARed}\bfseries\fontsize{12pt}{12pt}\selectfont}{\thesubparagraph}{0.5em}{}%

\titlespacing*{\section}{0pt}{0.9\baselineskip}{1.0ex plus .2ex}
\titlespacing*{\subsection}{0pt}{1.0ex plus .2ex minus .2ex}{1.0ex plus .2ex}
\titlespacing*{\subsubsection}{0pt}{1.0ex plus .2ex minus .2ex}{1.0ex plus .2ex}

\AtBeginDocument{%
  \pagestyle{fancy}%
  \fancyhf{}%
  \fancyhead[C]{\includegraphics[width=\textwidth]{\JoAheaderimage}}%
  \renewcommand{\headrulewidth}{0pt}%
  \fancyfoot[C]{\thepage}%
}

\gdef\JoAheaderimage{.template/header.png}
\gdef\JoAfooterimage{.template/footer.png}

\gdef\JoAtitletext{}
\gdef\JoAauthortext{}
\gdef\JoAaffiliationtext{}
\gdef\JoAkeywordtext{}
\gdef\JoAabstracttext{}

\newcommand{\JoAtitle}[1]{\gdef\JoAtitletext{#1}}
\newcommand{\JoAauthor}[1]{\gdef\JoAauthortext{#1}}
\newcommand{\JoAaffiliation}[1]{\gdef\JoAaffiliationtext{#1}}
\newcommand{\JoAkeyword}[1]{\gdef\JoAkeywordtext{#1}}
\newcommand{\JoAabstract}[1]{\gdef\JoAabstracttext{#1}}

\makeatletter
\def\normalsize{\fontsize{10.5pt}{12.6pt}\selectfont}
\makeatother
\singlespacing
\setlength{\parskip}{0pt}

\def\maketitletwo{%
\begin{strip}
\vspace{-2.5\baselineskip}%
\begin{flushleft}
{\fontsize{18pt}{18pt}\selectfont \bfseries\JoAtitletext\par}
\vspace{1.2\baselineskip}
{\fontsize{12pt}{12pt}\selectfont\JoAauthortext\par}
\vspace{0.5\baselineskip}
{\fontsize{12pt}{12pt}\selectfont\JoAaffiliationtext\par}
\end{flushleft}
\vspace{0.8\baselineskip}
\noindent
\includegraphics[width=\textwidth]{.template/banner.png}%
\par\vspace{1.5\baselineskip}%
{\color{JoARed}\fontsize{15pt}{15pt}\selectfont \bfseries Abstract\par}
\vspace{0.5\baselineskip}
{\fontsize{12pt}{12pt}\selectfont\parindent=2em\JoAabstracttext\par}
\vspace{1\baselineskip}
{\fontsize{12pt}{12pt}\selectfont \bfseries Keywords: \normalfont \JoAkeywordtext\par}
\vspace{1\baselineskip}
\noindent
\includegraphics[width=\textwidth]{\JoAfooterimage}
\vspace{0.6\baselineskip}
\end{strip}%
}

\endinput
