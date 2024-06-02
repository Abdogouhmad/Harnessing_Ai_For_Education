(TeX-add-style-hook
 "chapter1"
 (lambda ()
   (LaTeX-add-labels
    "ch:introductory-chapter"
    "sec:problem-statement"
    "sec:the-purpose-of-the-study"
    "sec:the-rationale-and-significance-of-the-study"
    "sec:research-questions-and-hypotheses"
    "subsec:research-questions"
    "subsec:hypotheses"
    "sec:the-organization-of-the-paper"))
 :latex)

