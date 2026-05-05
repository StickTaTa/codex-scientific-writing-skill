---
name: scientific-writing
description: "Research-backed scientific writing workflows for papers, literature reviews, grant proposals, clinical reports, and related academic documents. Use when Codex needs to plan, draft, revise, structure, or format publication-style scientific prose, organize a manuscript project, enforce real-citation discipline, or prepare LaTeX/BibTeX outputs."
---

# Scientific Writing

## Overview

Use this skill to run a scientific writing task end to end with a disciplined manuscript workflow. Prefer LaTeX with BibTeX unless the user explicitly requests another format.

This skill is a Codex-native port of the core `scientific-writing` workflow from `K-Dense-AI/claude-scientific-writer`. Keep the main workflow here concise and load the bundled reference files only when they are needed.

## Core Workflow

1. Classify the job before writing.
   - Identify the document type, venue, audience, and output format.
   - Decide whether the task is a new draft, a revision, or a structural rewrite.
   - Default to IMRaD for research papers unless the venue or document type requires another structure.

2. Set up a working project structure.
   - Create a dedicated output folder for substantial writing tasks.
   - Keep drafts, references, figures, final outputs, and saved research results separate.
   - Version substantial revisions instead of overwriting the current manuscript.

3. Gather evidence before drafting claims.
   - Find real, verifiable sources before citing them.
   - Prefer primary sources and official reporting guidelines.
   - Remove or rephrase claims that cannot be supported.
   - Reuse saved research results when available instead of repeating the same search.

4. Build the skeleton first.
   - Create the full section structure before writing prose.
   - Add placeholders for figures, tables, key claims, and missing evidence.
   - Choose the right template from `assets/` when a LaTeX manuscript needs a starting point.

5. Write section by section.
   - Draft one section at a time.
   - Turn outline bullets into full prose before treating the section as complete.
   - Keep Methods reproducible, Results factual, and Discussion interpretive but bounded by the evidence.

6. Revise with publication standards in mind.
   - Check logical flow, terminology consistency, citation completeness, figure integration, and venue constraints.
   - Confirm that tables and figures add information rather than duplicate the text.
   - Tighten weak transitions and vague claims.

7. Deliver a clean output package.
   - Produce the manuscript source, bibliography, final render, and a short summary of what changed.
   - Leave a clear revision trail when editing an existing manuscript.

## Citation Discipline

Apply these rules on every manuscript task:

- Cite only real papers, guidelines, or official sources.
- Verify that each citation supports the exact claim attached to it.
- Prefer recent literature for active fields, but keep foundational citations where needed.
- Scan BibTeX entries for missing metadata before finalizing the manuscript.
- Do not leave placeholder citations, invented author-year pairs, or `[citation needed]` markers in the draft.

## Writing Rules

- Write the final manuscript in full paragraphs unless the target format explicitly requires lists.
- Use lists mainly for planning, checklists, materials, criteria, or supplementary content.
- Keep Abstract, Introduction, Results, Discussion, and Conclusion prose-driven.
- Use field-appropriate terminology consistently.
- Match tone and structure to the target venue rather than using one generic academic voice.

## Manuscript Revision Rules

When revising an existing scientific manuscript, especially for a
high-impact journal style:

- Read the target manuscript and surrounding project evidence before changing prose.
- Preserve the manuscript's current storyline and terminology unless the user asks for a reframing.
- Keep main-text Results written as evidence-led narrative, not as protocol documentation.
- Do not isolate long protocol explanations in Results when the setting can be folded into the result sentence.
- Introduce the dataset briefly in main text, then move implementation details to Methods or Supplementary Note.
- For benchmarks, state the fairness standard plainly: same preprocessing where possible, same evaluated gene set, same train/validation/test logic, and uniform output alignment.
- Use supplementary tables for exact data partitions, gene panels, method adaptations, checkpoint rules, and metric definitions.
- If experiments are unfinished but the expected placement is known, insert a clear placeholder rather than inventing numbers.
- Placeholder text must identify what final values or figure/table references need to be filled in.
- For single-slide and multi-slide benchmarks, avoid making the section sound like only one setting exists; present the completed setting as the current evidence and reserve a visible place for the pending setting.

## Figures and Tables

Plan visuals early instead of bolting them on at the end.

- Use figures for trends, mechanisms, workflows, architectures, and comparisons that are easier to read visually.
- Use tables for exact values, cohort summaries, variable definitions, and dense structured information.
- Make every caption self-contained enough that a reviewer can understand the display item without rereading the full section.
- Keep figure and table references synchronized with the prose while revising.

## References To Load On Demand

Open only the files relevant to the current task:

- `references/imrad_structure.md`: section-by-section manuscript guidance.
- `references/citation_styles.md`: APA, AMA, Vancouver, Chicago, IEEE conventions.
- `references/figures_tables.md`: design and integration guidance for display items.
- `references/reporting_guidelines.md`: CONSORT, STROBE, PRISMA, CARE, and related standards.
- `references/writing_principles.md`: clarity, concision, tone, and paragraph flow.
- `references/professional_report_formatting.md`: report-style formatting patterns beyond classic IMRaD papers.

## Assets

Use these output assets when the user wants a LaTeX starting point instead of a blank file:

- `assets/scientific_report_template.tex`: general report/manuscript starter template.
- `assets/scientific_report.sty`: companion style file for the template.

## Boundaries

- Do not pretend unsupported claims are established facts.
- Do not treat literature summaries as substitutes for actual source verification.
- Do not keep a manuscript in outline form when the user asked for a finished draft.
- Do not load every reference file by default; open only what the task needs.
