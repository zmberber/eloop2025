#  ELoop 2025

- **Date**:  2025-11-01
- **Address**:
  ```
  c-base
  Rungestr. 20
  10179 Berlin
  Germany
  ```

## Board of Directors

- rtunreal
- p4nd4

## Review Committee

- berber
- rtunreal
- lassulus

## Submission Guidelines

The relevant dates are:
- **Abstract Submission Deadline**:  Wed, 22 Oct 2025
- **Full Submission Deadline**:  Sun, 27 Oct 2025
- **Review retreival**:  Mon, 28 Oct 2025
- **Rebuttal Deadline**:  Thu, 30 Oct 2025
- **Notice of Acceptance**: Fr, 31 Oct 2025

*These dates have wiggle-room, don't worry, we got you, fam.*

### Content

Content must fulfill the following requirements:
- Content must be corporate as well as enterprise-oriented.
- Generative AI must be used.
  - By submitting content to this conference, you agree to adhere to our standards of not letting human error be able to influence valuable content, specifically by letting generative AI write content for you, as a quality-ensuring measure.
  - If the above is not immediately apparent, sufficient evidence of generative AI usage must be provided as supplementary material.
  - Any use of manually written, and therefore possibly faulty, content by a human must be clearly declared.
- Boring details shall not be included in the main body of the paper, but may be included in the appendix.
  - The appendix is not mandatory for reviewers to read to reach their verdict, the appendix may be considered at the reviewers' discretion.

### Formatting

- Submissions **must** be formatted via LaTeX (PDFLaTeX, LuaLaTeX, XeLaTeX) with the supplied `eloop2025.cls` documentclass
- Margins, font and font spacing, as well as other basic geometry may not be altered

### Document compilation guide

The recommended way of rendering is via direct pure LaTeX.

#### Pure LaTeX

Refer to `paper.tex` for an example of a paper using the `eloop2025.cls` documentclass.  The bilbiography file `bibliography.bib` is part of the example and is not mandatory and can be omitted such a file is not used in the main document.
- This was compiled using `mklatex` in this directory, making note that the following additional files are present:
  - `eloop2025.cls`
  - `.latexmkrc`
  
#### Markdown with Pandoc

It is also possible to compile a markdown file via pandoc.  Refer to `pandocpaper.md` for a similar example.  Additionally to the `bibliography.bib` file, this example also includes the figure file `spreadability_curve.pdf`.  The file `eloop2025.cls` must also be present for this to work, and the document can be compiled via `pandoc pandocpaper.md -o pandocpaper.pdf`.

#### Nix bonux

If using nix, both versions can be compiled at once using `nix run`.
