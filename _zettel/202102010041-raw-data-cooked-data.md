---
title: Raw data, cooked data
tags: [data-science, algorithmic-bias, social-sciences, truth]
---

There is a saying amongst data science practitioners that there is no such
thing as "raw data".

- facebook as origin of data science: primarily working with online, social
  data
- one might argue that data science has ballooned so as to swallow up other
  fields, but that is a matter of assigning buzzwords of the day. let's keep
  the definition here cleaner and call
  - computer vision, natural language processing by their rightful names
  - optimisations of factory processes, delivery routes, etc. their original
    name: operations research
  - matters of assessing risk and reward the actuarial sciences
  - so on and so forth for other fields swallowed up by the "sexiest" job
    of the century
- data gathering processes are biased from the start [{% cite wmd %}]
  - what data gets gathered, where
  - what gets measured, how
  - who is collecting the data, why
- data gathering shaped by concerns and demands of the state => statistics!!
  [{% cite seeing-like-a-state %}]
- to review: raw vs cooked in {% cite the-art-of-not-being-governed %}
- "hard" sciences work more with "raw-er" data, "soft" sciences work more with
  "cooked" data
  - despite the naming, technically easier to deal with data in the "hard"
    sciences since it's much easier to get everyone to agree to set definitions
    and standards without debate, which sets a stable foundation upon which
    to make measurements, do experiments with (marignally) fewer ethical
    considerations, etc.
  - with "cooked" data, the scales are tilted from the start by the framing of
    the commissioning party / the practitioner. worse, the living subjects
    that provide the cooked data have wills of their own, constantly adapting
    and changing to different circumstances. the "cooked" data collected
    earlier very soon gets out of date, and any models or analyses will have
    to change with the living subjects.
  - failure to update results in some of the weapons of math destruction we've
    seen, preserving in modelled aspic outmoded norms and assumptions. models,
    intelligent or otherwise, as a conservative force in such a way, if
    learning only from non-updating, historical data, measured from a certain,
    possibly outmoded frame.
  - even with online learning, "warm starts" require some degree of influence
    from older data (can't go back to collect retroactively), and without
    reformulating a model or its inputs, the model is still going to be
    encoding old assumptions in the engineered features.
- "cooked" data as representations: already biased in the naming, the
  categorisations, the privileging of certain bases of measurement over others.
  language is biased, our cultural definitions are biased, and when we collect
  data according to such specifications, they automatically conform to these
  biased frames. [{% cite truth-and-lies %}]
  - danger of building models on representations, like building sandcastles
    on thin air (some {% cite simulacra-and-simulation %} may be useful here)