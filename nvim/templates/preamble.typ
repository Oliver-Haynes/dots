#import "@preview/ctheorems:1.1.3": *
#counter(heading).update(0)

// --- Rose Pine Palette ---
#let rp-base = rgb("#191724")
#let rp-surface = rgb("#1f1d2e")
#let rp-overlay = rgb("#26233a")
#let rp-muted = rgb("#6e6a86")
#let rp-subtle = rgb("#908caa")
#let rp-text = rgb("#e0def4")
#let rp-love = rgb("#eb6f92")
#let rp-gold = rgb("#f6c177")
#let rp-rose = rgb("#ebbcba")
#let rp-pine = rgb("#31748f")
#let rp-foam = rgb("#9ccfd8")
#let rp-iris = rgb("#c4a7e7")

// --- Global Page Settings ---
#set page(
  fill: rp-base,
  margin: 2cm,
  numbering: "1",
  header: align(right, text(fill: rp-subtle, size: 0.8em)[Module Title]),
)

#set text(fill: rp-text, font: "New Computer Modern", size: 11pt)
#show heading: set text(fill: rp-iris)
#set heading(numbering: "1.1")

// --- Math Formatting ---
#show math.equation: set text(fill: rp-text)
// Forces limits (subscripts/superscripts) to stay above/below for sums and integrals
#show math.equation: set math.limits(inline: true)


#let eps = $epsilon$
#let delta = $delta$
#let R = $bb(R)$
#let N = $bb(N)$
#let seq(x, n) = $(#x _#n)_(#n in N)$
#let limit(n) = $limits(arrow.right)_(#n arrow.right oo)$

// --- Theorem Environments ---
#show: thmrules.with(qed-symbol: $square$)

#let theorem = thmbox(
  "theorem",
  "Theorem",
  fill: rp-surface,
  stroke: 0.5pt + rp-pine,
  // titlefill: rp-pine,
  padding: (top: 0.5em, bottom: 0.5em),
)

#let lemma = thmbox(
  "theorem", // Shares counter with theorem
  "Lemma",
  fill: rp-surface,
  stroke: 0.5pt + rp-gold,
  // titlefill: rp-gold,
)

#let definition = thmbox(
  "theorem",
  "Definition",
  fill: rp-surface,
  stroke: 0.5pt + rp-foam,
  // titlefill: rp-foam,
)

#let proposition = thmbox(
  "theorem",
  "Proposition",
  fill: rp-surface,
  stroke: 0.5pt + rp-foam,
)

#let remark = thmbox(
  "theorem",
  "Remark",
  fill: rp-surface,
  stroke: 0.5pt + rp-foam,
)
#let axiom = thmbox(
  "theorem",
  "Axiom",
  fill: rp-surface,
  stroke: 0.5pt + rp-foam,
)

#let corollary = thmbox(
  "theorem",
  "Corollary",
  fill: rp-surface,
  stroke: 0.5pt + rp-foam,
)
#let answer(body) = block(
  fill: rp-surface,
  stroke: 0.5pt + rp-foam,
  width: 100%,
  inset: 1em,
  radius: 4pt,
  body,
)


#let proof = thmproof("proof", "Proof")

