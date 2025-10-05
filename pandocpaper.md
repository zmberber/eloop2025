---
documentclass: eloop2025
title: The spreadability of crunchy peanut butter
header-includes: |
	\author[1]{Alice Researcher}
	\author[2]{Bob Toaster}
   	\affil[1]{Caf\'e A}
	\affil[2]{mathe.cafe MA844}
	\usepackage{csquotes}
	\usepackage{mathtools}
	\usepackage{tikz}
	\usepackage{hyperref}
	\usepackage[nameinlink]{cleveref}
	\usepackage{tgadventor}
	\renewcommand*\familydefault{\sfdefault}
	\usepackage[T1]{fontenc}
	\usetikzlibrary{decorations.pathreplacing}
author: Charlie Spreadman <!-- This Author will be listed last and will get the last affiliation -->
bibliography: bibliography.bib
---

::: abstract
**Executive Summary**

Effective spreadability is a critical quality metric for consumer satisfaction in peanut butter products. While smooth formulations are well-characterized, particulate-rich (crunchy) variants present operational challenges due to heterogeneous microstructure. This study provides a rigorous framework for assessing and predicting the spread performance of crunchy peanut butter. By integrating quantitative rheological measures with topological considerations, we establish actionable insights for formulation optimization, process control, and product differentiation in competitive markets. The introduction of the crunchy-closedness concept enables a structured understanding of particulate effects and supports strategic decision-making in product development.
:::

\newpage

# Introduction

In today's consumer-driven market, product performance and consistency directly impact brand perception and profitability. Peanut butter, a staple in many households, demonstrates significant variability in spreadability when particulate inclusions are present. While smooth peanut butter exhibits predictable flow behavior, crunchy formulations challenge conventional handling, packaging, and end-use performance standards.

The goal of this study is to establish a standardized, quantitative framework to evaluate and predict the spreadability of crunchy peanut butter. By combining viscosity-based metrics, particulate density characterization, and topological analysis, we provide a robust methodology that can guide formulation improvements, reduce waste, and enhance user satisfaction. This research delivers insights that are not only scientifically rigorous but also operationally actionable.

# Related Work

Previous investigations into spreadable substances have spanned butter [@smith2011butter], marmalade [@zhou2014marmalade], and hummus [@klein2019hummus]. Smooth peanut butter's flow mechanics were formalized by the American Society of Nut Spreads (ASNS, 2008), who defined "spreadability" as the reciprocal of applied force per unit smear.

However, few works have addressed systems with particulate obstructions. Johnson (2017) attempted a hybrid model for chunky guacamole, while Lee and Franco (2020) studied jam-seed interactions. These efforts, though commendable, fall short of accounting for the discrete-continuous hybridization intrinsic to crunchy peanut butter.

# Preliminaries

As per convention, we assume the following given notions and quantities:

- $\eta$: effective viscosity of the creamy phase  
- $\rho_c$: density of crunchy particulates per unit area  
- $F_s$: spreading force applied by knife or spatula  
- $\theta$: spread angle achieved before bread rupture  

::: definition
**Definition (Spreadability and Effective Spreadability).**  
Let $P$ be a sample of peanut butter and $B$ a bread substrate.  

Spreadability $S$ is defined as  

$$
S = \frac{\theta}{F_s},
$$

where $\theta$ is the achieved spread angle before bread rupture and $F_s$ is the applied spreading force. If $S > 0$, the system is said to be spreadable.  

We also define the **effective obstruction factor** $\kappa(\rho_c)$ as a measure of how particulate density $\rho_c$ reduces spreadability.  

The **effective spreadability** $S_c$ (also called crunch-modified spreadability) is then  

$$
S_c = \frac{S}{1 + \kappa(\rho_c)}.
$$
:::

::: definition
**Definition (Critical Crunch Densities).**  
Let $\rho_c^*$ denote the **critical crunch density**, i.e., the left edge of the Transitional Crunch Zone where effective spreadability $S_c$ begins to decrease significantly.  

Let $\rho_c^{**}$ denote the **secondary critical density**, i.e., the right edge of the Transitional Crunch Zone where $S_c$ transitions into the Granular Jam Phase.  

Thus, the **transitional crunch zone** spans $\rho_c^* \leq \rho_c \leq \rho_c^{**}$.
:::

![Normalized effective spreadability $S_c/S$ vs particulate density $\rho_c$. Brackets below the x-axis indicate the Laminar Spread Region, Transitional Crunch Zone, and Granular Jam Phase. The rightmost bracket is extended far to the right to indicate an open-ended regime. The critical crunch densities $\rho_c^*$ and $\rho_c^{**}$ mark the left and right edges of the Transitional Crunch Zone, respectively.](spreadability_curve.pdf){#fig:spreadability width=90%}

# Spreadability Theory

Spreadability theory formalizes the relationship between the physical characteristics of peanut butter and its performance during spreading. By defining key metrics such as effective spreadability and cohesive integrity, we provide a quantitative foundation to classify and compare different formulations. This theoretical framework allows for systematic assessment of particulate effects, guiding formulation decisions and operational optimization.

## Main Concepts

::: definition
**Definition (Spreadability).**  
The spreadability $S$ measures the ease of spreading peanut butter over a substrate.
:::

::: definition
**Definition (Effective Obstruction Factor and Effective Spreadability).**  
The effective obstruction factor $\kappa(\rho_c)$ quantifies the reduction in spreadability due to particulate density. The resulting effective spreadability $S_c$ is defined as $S_c = S / (1 + \kappa(\rho_c))$ and is sometimes called **crunch-modified spreadability**.
:::

::: definition
**Definition (Cohesive Integrity).**  
For a peanut butter sample $P$, the **cohesive integrity** $\lambda$ is a dimensionless measure of the internal cohesion of the spread, representing the resistance of the system to particulate separation.
:::

## Empirical Spreadability Regimes

Three distinct regimes emerge from the model:

1. **Laminar Spread Region:** $\rho_c < \rho_c^*$, where $S_c \approx S$.  
2. **Transitional Crunch Zone:** $\rho_c^* \leq \rho_c \leq \rho_c^{**}$, where obstruction reduces $S_c$ significantly.  
3. **Granular Jam Phase:** $\rho_c > \rho_c^{**}$, where $S_c \ll S$ and spreading becomes mechanically inefficient.

# Topological Properties of Crunchy Systems

While spreadability theory characterizes local and empirical properties of peanut butter, topological analysis addresses the global structure of the spreadable domain. By considering the connectivity and closure of regions with positive spreadability, we can rigorously predict how the system behaves under varying particulate densities and cohesive integrity. These insights support both product development and quality assurance by highlighting operationally relevant thresholds and robust design principles.

## Operational Implications of Spreadability

Understanding the limits of effective spreadability is essential for both production efficiency and consumer experience. The following theoretical framework formalizes the relationship between particulate density, cohesive integrity, and the resulting spreadable domain.

## Foundational Results

::: lemma
**Lemma (Adhesion Preservation).**  
If $\lambda$ exceeds a threshold $\lambda_{\min}$, particulate adhesion ensures continuous spreadability in the Transitional Crunch Zone.
:::

::: proof
The proof relies on auxiliary lemmas in the Appendix, which formalize the local effect of particulates, continuity of $S_c$, and cumulative cohesive contributions. By invoking these lemmas, we conclude that for $\lambda > \lambda_{\min}$, $S_c(x) > 0$ for all $x$ in the Transitional Crunch Zone. Hence, the spreadable domain is continuous.
:::

::: lemma
**Lemma (Boundary Retention).**  
Let $P$ be a peanut butter sample with effective spreadability $S_c$. The spreadable region remains connected if $\rho_c < \rho_c^{**}$.
:::

::: proof
The proof leverages auxiliary lemmas in the Appendix, which establish positive lower bounds for $S_c$ in segments, continuity and connectivity of intervals, and preservation of boundaries. Hence, the union of all segments forms a connected spreadable domain.
:::

## Crunchy-Closedness Theorem

::: theorem
**Theorem (Crunchy-Closedness).**  
For a sample $P$ with cohesive integrity $\lambda$ and particulate density $\rho_c$, the effective spreadable domain is topologically closed for $\rho_c \leq \rho_c^{**}$.
:::

::: proof
From the previous lemmas, the stability and boundary retention conditions guarantee that cohesive integrity $\lambda$ dominates particulate disruption. Closure occurs when  

$$
\lambda > \frac{\rho_c}{\rho_c^*}.
$$
:::

# Future Work

Future initiatives will focus on integrating predictive analytics, in-line process monitoring, and real-time rheological feedback into the manufacturing pipeline. Exploration of hybrid spreads, variable substrate properties, and machine-learning-driven optimization will enable scalable improvements in product consistency. These advancements will support data-driven decision-making and enhance the overall consumer experience.

# Conclusion

This study delivers a structured methodology for evaluating and optimizing the spreadability of crunchy peanut butter, combining empirical measurement with topological theory. The introduction of the **crunchy-closedness** concept provides a clear, actionable metric for predicting product performance. By applying these insights, stakeholders can make informed decisions regarding formulation, process design, and quality assurance.

\newpage

# References

::: {#refs}
:::

\newpage

# Appendix: Supplementary Technicalities

::: lemma
**Lemma (Local Spreadability Bound).**  
For any point $x$ in the Transitional Crunch Zone, $S_c(x) \ge S/(1+\kappa(\rho_c(x))) > 0$ if $\lambda > \lambda_{\min}$.
:::

::: proof
By definition of $S_c$ and $\lambda_{\min}$, the cohesive force exceeds the local obstruction. Therefore $S_c(x)$ is strictly positive.
:::

::: lemma
**Lemma (Continuity of Effective Spreadability).**  
The function $S_c(x)$ is continuous with respect to $x$ across the substrate.
:::

::: proof
Assuming $\rho_c(x)$ varies smoothly with $x$, $\kappa(\rho_c(x))$ is continuous. Since $S_c(x) = S/(1+\kappa(\rho_c(x)))$, it is a composition of continuous functions and thus continuous.
:::

::: lemma
**Lemma (Cumulative Cohesive Contribution).**  
The total cohesive effect along a contiguous region is additive and maintains $S_c > 0$ for the domain.
:::

::: proof
Cohesive contributions from infinitesimal segments sum linearly along the domain. Since each contribution is positive, the cumulative effect preserves $S_c > 0$.
:::

::: lemma
**Lemma (Segmental Lower Bound).**  
For each segment $\Delta x$ with $\rho_c < \rho_c^{**}$, $S_c(\Delta x) > 0$.
:::

::: proof
Directly follows from the definition of $\rho_c^{**}$ and the obstruction factor.
:::

::: lemma
**Lemma (Connectivity of Spreadable Intervals).**  
Adjacent segments with positive $S_c$ form a continuous spreadable path.
:::

::: proof
If $S_c(\Delta x_i), S_c(\Delta x_{i+1}) > 0$, there exists a continuous path connecting them because $S_c$ is continuous.
:::

::: lemma
**Lemma (Boundary Preservation under Incremental Changes).**  
The domain boundaries at $\rho_c^*$ and $\rho_c^{**}$ are maintained under small variations in $\rho_c$.
:::

::: proof
By continuity of $\rho_c(x)$ and $S_c(x)$, small perturbations in particulate density do not introduce gaps in the spreadable domain.
:::
