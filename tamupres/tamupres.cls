%% tamupres.cls
%% Copyright 2024-present Naheel Faisal <naheelazawy@gmail.com>
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is Naheel Faisal.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tamupres/tamupres}[2024/09/29 TAMU LaTeX presentation class by Naheel Faisal]

\LoadClass[8pt, aspectratio=43]{beamer}

\newcommand\supertiny{\fontsize{4pt}{5pt}\selectfont}
\newcommand\ultratiny{\fontsize{3pt}{4pt}\selectfont}

\useoutertheme{miniframes}
\setbeamertemplate{headline}{%
  \begin{beamercolorbox}[colsep=1.5pt]{upper separation line head}
  \end{beamercolorbox}
  \begin{beamercolorbox}{section in head/foot}\supertiny
    \vskip2pt
    %% \insertnavigation{.5\paperwidth}
    \vbox{{%
        \usebeamerfont{section in head/foot}\usebeamercolor[fg]{section in head/foot}%
        \hbox to \paperwidth{
          \global\dohead}%
      }}
    \vskip2pt
  \end{beamercolorbox}%
  \begin{beamercolorbox}[colsep=1.5pt]{lower separation line head}
  \end{beamercolorbox}
}

%% adjust beamer title
\setbeamertemplate{frametitle}
{
  \includegraphics[width=\textwidth]{tamupres/frametitle.png}
  \vspace*{-8.5ex}
  \begin{center}\color{white}
    \begin{minipage}{\linewidth}~~~\insertframetitle\end{minipage}
  \end{center}
}

%% beamer options
\setbeamertemplate{footline}[page number]
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{blocks}[rounded][shadow=false]
\setbeamertemplate{enumerate items}[default]
\setbeamertemplate{section in toc}[sections numbered]
\setbeamertemplate{subsection in toc}[default]
\setbeamertemplate{bibliography item}{\insertbiblabel}

\definecolor{Maroon}{rgb}{0.29, 0.00783, 0.00783}
\usecolortheme[named=Maroon]{structure}
\setbeamercolor*{title}{fg=white}
\setbeamercolor*{author}{fg=white}
\setbeamercolor*{institute}{fg=white}
\setbeamercolor*{date}{fg=white}
\usefonttheme{serif}
\setbeamertemplate{caption}[numbered]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{cite}
\usepackage{tikz}
\usetikzlibrary{arrows,shapes,positioning,shadows,trees}
\usepackage{caption}
\usepackage{subcaption} %% for sub-figures
\usepackage{array}
\usepackage{bibentry}
\nobibliography* %% uses the same refs.bib in \bibliography

%% left align with size for tables
\newcolumntype{x}[1]{>{\raggedright\arraybackslash}p{#1}}

\newcommand{\n}{\\}

\renewcommand{\alert}[1]{\textbf{#1}}

%% footnote
\newcommand\blfootnote[1]{%
  \begingroup
  \renewcommand\thefootnote{}\footnote{\supertiny#1}%
  \addtocounter{footnote}{-1}%
  \endgroup
}

\newcommand\fncitebase[1]{\supertiny\cite{#1}~\bibentry{#1}}
\newcommand\fncite[1]{\blfootnote{\noindent\cite{#1}~\bibentry{#1}}}

\newcommand{\tamutitlepage}{
  \usebackgroundtemplate{\includegraphics[width=\paperwidth,height=\paperheight]{tamupres/bg}}
  \begin{frame}[noframenumbering,plain]
    \titlepage{}
  \end{frame}
  \usebackgroundtemplate{}
}

\usetheme{default}

\newcommand{\tamuinit}{
  \title{\thetitle}
  \author{\theauthor\texorpdfstring{\\}{ }UIN \theuin}
  \date{\today}
  \institute{Texas A\&M University}

  \hypersetup{
    pdfauthor={\theauthor},
    pdftitle={\thetitle},
    pdfkeywords={https://github.com/Naheel-Azawy/tamu-pres-template},
    hidelinks,
    draft=false
  }
}
