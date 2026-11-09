---
type: resource
vtne_domain: Pharmacy and Pharmacology
tags: [rvt, pharmacology, math, resource]
status: growing
created: 2026-11-09
updated: 2026-11-09
summary: The handful of formulas behind every veterinary dosage and fluid-rate problem, with worked examples.
aliases: [dosage math, med math, vet math]
---
# Drug Dosage Calculations

> [!tip] Nearly every medical-math problem is the same three steps
> **1. Get the weight into kg → 2. Weight × dosage = dose → 3. Dose ÷ concentration = amount to give.**
> Write the units on every number and cancel them. If the units don't cancel to what you want, the setup is wrong.

## Conversions you must know cold

| From            | To         | Do this                         | Example                        |
| --------------- | ---------- | ------------------------------- | ------------------------------ |
| pounds (lb)     | kilograms  | ÷ 2.2                           | 44 lb ÷ 2.2 = 20 kg            |
| kilograms       | pounds     | × 2.2                           | 5 kg × 2.2 = 11 lb             |
| grams (g)       | milligrams | × 1000                          | 0.5 g = 500 mg                 |
| milligrams (mg) | micrograms | × 1000                          | 0.2 mg = 200 mcg (µg)          |
| liters (L)      | milliliters| × 1000                          | 1.5 L = 1500 mL                |
| mL              | cc         | same thing                      | 3 mL = 3 cc                    |
| % solution      | mg/mL      | × 10                            | 2 % lidocaine = 20 mg/mL       |
| °F              | °C         | (°F − 32) × 5 ⁄ 9               | 102.5 °F ≈ 39.2 °C             |
| °C              | °F         | (°C × 9 ⁄ 5) + 32               | 38 °C = 100.4 °F               |

Why "% × 10": a 1 % solution is 1 g per 100 mL = 1000 mg per 100 mL = 10 mg/mL.

## The core formulas

**Dose (mg) = body weight (kg) × dosage (mg/kg)**

**Volume to give (mL) = dose (mg) ÷ concentration (mg/mL)**

**Tablets per dose = dose (mg) ÷ tablet strength (mg)**

**Tablets to dispense = tablets per dose × doses per day × number of days**

### Fluid therapy

**Rate (mL/hr) = total volume (mL) ÷ hours**

**Drip rate (drops/min) = rate (mL/hr) × drop factor (drops/mL) ÷ 60**

**Dehydration deficit (mL) = % dehydration (as a decimal) × body weight (kg) × 1000**

Maintenance fluid requirements and the "drop factor" of a given IV set vary by source and product. Use the numbers your course gives you on exams, and the numbers on the actual IV set in practice.

## Worked examples

> [!example] 1 — Injectable
> A 44 lb dog needs a drug at 5 mg/kg. The bottle is 50 mg/mL. How many mL?
> - 44 lb ÷ 2.2 = **20 kg**
> - 20 kg × 5 mg/kg = **100 mg**
> - 100 mg ÷ 50 mg/mL = **2 mL**

> [!example] 2 — Tablets
> A 5 kg cat is prescribed 10 mg/kg of a drug that comes as 100 mg tablets, twice daily for 7 days.
> - 5 kg × 10 mg/kg = **50 mg per dose**
> - 50 mg ÷ 100 mg = **½ tablet per dose**
> - ½ × 2 × 7 = **7 tablets to dispense**

> [!example] 3 — IV fluids
> 1200 mL of fluids over 24 hours through a 15 drops/mL set.
> - 1200 mL ÷ 24 hr = **50 mL/hr**
> - 50 × 15 ÷ 60 = **12.5 drops/min** (about one drop every 5 seconds)

> [!example] 4 — Percent solution
> How many mg of lidocaine are in 0.5 mL of a 2 % solution?
> - 2 % × 10 = **20 mg/mL**
> - 20 mg/mL × 0.5 mL = **10 mg**

> [!example] 5 — Dehydration deficit
> A 10 kg dog is estimated 8 % dehydrated.
> - 0.08 × 10 kg × 1000 = **800 mL** to replace (on top of maintenance and ongoing losses)

## Abbreviations on prescriptions

| Abbrev.  | Meaning                      | Abbrev. | Meaning                          |
| -------- | ---------------------------- | ------- | -------------------------------- |
| SID      | once a day *(veterinary only)* | PO      | by mouth                         |
| BID      | twice a day                  | SQ / SC | subcutaneous                     |
| TID      | three times a day            | IM      | intramuscular                    |
| QID      | four times a day             | IV      | intravenous                      |
| q        | every (q8h = every 8 hours)  | PRN     | as needed                        |
| EOD      | every other day              | NPO     | nothing by mouth                 |

## Practice
Ask Claude: *"Give me five dosage problems like the ones in [[Drug Dosage Calculations]], then check my answers."*

## Related
- [[Normal Values]]
- [[Medical Terminology Glossary]]
