# Defects4J Control- and Data-Flow Graph-Based Fault Classification
The classification of 488 faults from seven projects in the Defects4J dataset, using a novel control- and data-flow graph-based classification scheme.

## Fault classes
### Control-flow
- `order`   = unconditional ordering fault
- `jump`    = unconditional jump fault
- `call`    = unconditional method call fault
- `pred`    = predicate node fault
- `guard`   = predicate existence fault
- `block`   = predicate block fault

### Data-flow
- `def`     = definition fault
- `use`     = use fault

## Classification usage
`<project>` is one of [`Chart`, `Closure`, `Jsoup`, `Lang`, `Math`, `Time`] 

`<fault class>` is one of [`order`, `jump`, `call`, `pred`, `guard`, `block`, `def`, `use`]

### Project classification
```
make project p=<project>
```
prints the classification for each project bug.

```
make list_proj_bugs p=<project>
```
prints all project bug numbers.

### Specific bug classification
```
make proj_bug p=<project> b=<bug nr>
```
prints the information for a specific project bug.

### Fault class assigned bugs
```
make list_faultclass [p=<project>] f=<fault class>
```
prints the bugs classified as `<fault class>` for project `<project>`, if specified, otherwise over all projects.
