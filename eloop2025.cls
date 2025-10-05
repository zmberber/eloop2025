\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eloop2025}[Enterprise Loop 2025 class]

\newcommand{\headlinecolor}{\normalcolor}
\LoadClass[abstract=true]{scrartcl}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{microtype}
\RequirePackage{authblk}
\RequirePackage{datetime}
\RequirePackage[USenglish]{babel}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage[left=25mm,right=25mm]{geometry}
\RequirePackage[backend=biber]{biblatex}

\declaretheorem{theorem}[
name=Theorem,
parent=section,
style=plain]
\declaretheorem{definition}[
name=Definition,
parent=section,
style=definition]
\declaretheorem{remark}[
name=Remark,
sibling=definition,
style=remark]
\declaretheorem{note}[
name=Note,
numbered=no,
style=remark]
\declaretheorem{lemma}[
name=Lemma,
sibling=definition,
style=plain]
\declaretheorem{proposition}[
name=proposition,
sibling=definition,
style=plain]
\declaretheorem{corollary}[
name=corollary,
sibling=definition,
style=plain]

\DeclareEmphSequence{\bfseries,\bfseries\itshape}

\date{\formatdate{1}{11}{2025}}

\titlehead{\centering{\includegraphics[width=0.3\textwidth]{eloop-logo}\vspace{0.4cm}\\Enterprise Loop 2025 @ c-base, Rungestr. 20, 10179, Berlin, Germany}\\\url{https://eloop.org}}

\renewcommand*\familydefault{\sfdefault}

\renewcommand\Authand{, }
\renewcommand\Authands{, }

\AtBeginDocument{
  \renewcommand{\abstractname}{Executive summary}
  \usepackage{tgadventor}
  \usepackage[T1]{fontenc}
}




