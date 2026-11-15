# Task: Tailor the CV for the SST Visiting Faculty (Linear Algebra) application

## Goal
Produce a tailored, ideally one-page CV for the Scaler School of Technology (SST) role of Visiting Faculty / Part-Time Instructor, Linear Algebra (undergraduate CS & AI, Electronic City, Bangalore, on-site, part-time).
The audience is an education company, not a physics group. Avoid jargon (pyROOT, CMSSW, HCAL internals) and keep it readable to non-physicists.

## Repo context
- Repo: `GNiramay/New_CV`, LaTeX awesome-cv template, built with LuaLaTeX via `latexmk` (`Compile.sh` locally, `build-resume.yml` in CI).
- Modular section files in `resume/`: `experience.tex`, `teaching.tex`, `honors.tex`, `education.tex` (check the repo for the others, e.g. publications, skills, talks).
- `Personal/contacts_actual.tex` is gitignored. Do not read, edit or commit it.
- Do NOT modify the main CV. Create a separate variant (e.g. a new main file such as `resume_sst.tex` plus any variant section files, or a branch `sst-cv`) so the general CV stays intact.
- Deliver all changes as a **patch file** (`git diff > sst_cv.patch`) in addition to applying them.

## Hard constraints
1. **Honesty first.** Only use facts already in the current CV. Reword and reorder, never add experience or skills. Do not mention PCA, SVD, t-SNE or UMAP anywhere (deliberately left out for this application); do not claim PCA or SVD experience, formal numerical-methods teaching (LU, QR, Gram-Schmidt), or proof-based teaching.
2. Keep the existing dates, publication citations and DOIs exactly as they are.
3. Fix typos wherever they appear: "focusses", "exerimental", "asignments", "relevent", "offerred".
4. Contact header: keep ATS/plain-text friendly (URLs visible as text, no icon-only fields).
5. No template artifacts in the footer (e.g. the "RÉSUMÉ" running footer, if it looks unfinished).

## Changes to make

### 1. Section order
Header, Summary (new), Teaching, Skills (new), Research/Technical experience (condensed), Selected publications, Education. Drop or minimise Workshops/conferences (2-3 lines max).

### 2. Summary (new, 2 lines)
> PhD candidate in experimental physics with hands-on experience in linear algebra-based data analysis (least-squares fitting, covariance, machine learning) in Python. Experience designing and delivering a university course and mentoring students through computational projects.

### 3. Teaching (move to top, rewrite)
**Lecturer, Error Analysis, Texas Tech University (Aug-Nov 2023)**
- Designed the curriculum, weekly problem sets and exams for a class of physics and mathematics majors.
- Taught error propagation, covariance and chi-square (least-squares) fitting, with emphasis on when each method applies.

**Mentor, Texas Tech and Stanford (2021-2023)**
- Mentored two students on computational projects: one extended my detector control software into a Master's thesis; the other analysed test-beam data and presented at an APS section meeting (2023).

### 4. Skills (new section)
- **Programming/numerical:** Python (NumPy, scikit-learn), ROOT, C++, MATLAB/Octave
- **Methods:** least-squares and chi-square fitting, covariance analysis, BDTs and neural-network taggers
- **Teaching:** curriculum design, problem sets and exams, mentoring

### 5. Research and technical experience (condense, one to two lines each)
- **Low-MET supersymmetry search (PhD thesis), CMS, 2022-present:** develop an analysis of LHC collision data using machine-learning jet taggers and statistical fits to set limits on new-physics production.
- **Excess-mortality study, Jnana Prabodhini Foundation (2021):** coordinated a survey-based study estimating COVID-19 mortality in Pune and compared it against standard statistical models; published in *Scientific Reports* (2024).
- **LDMX trigger scintillator lead (2020-2022):** wrote the detector simulation framework, built and tested a prototype, developed remote control and monitoring software.
- **CMS HCAL monitoring (2024):** built and maintained the daily noise-trend monitoring framework. Keep to one line.
- **PRL Ahmedabad internship (2017-2018):** compress to one line (detector simulation in SIMION/COMSOL, analysis in MATLAB/Octave) or drop if the page is too long.

### 6. Publications
Keep 3-4: the Scientific Reports excess-mortality paper, the LDMX paper (arXiv:2203.08192), the CMS ML reweighting paper (EPJC 85, 495), and one of the other CMS papers. Add a single line "Author on 200+ CMS collaboration papers".

### 7. Conferences
Keep only the 2-3 most recent (e.g. APS global physics summit 2026, APS April Meeting 2024).

## Verification
- Compile with `./Compile.sh` (or `latexmk -lualatex`) and confirm there are no errors.
- Confirm the output is one page (two at most), with no overflow or overfull hbox warnings.
- Run `pdftotext` on the result and check that contact info and URLs appear as plain text and no characters are garbled.
- Re-read the output PDF text against this file and the original CV to confirm nothing was invented.
- Produce `sst_cv.patch` and confirm it applies cleanly with `git apply --check`.

## Out of scope
- The cover note (handled separately).
- Any changes to the general CV or to the contact file.
