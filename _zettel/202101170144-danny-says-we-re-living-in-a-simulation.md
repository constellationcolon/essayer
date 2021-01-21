---
layout: zettel
title: Danny says we're living in a simulation
to_read: [fashionable-nonsense]
---

The first time I came across Curtis' thesis in HyperNormalisation [{% cite
hypernormalisation %}], I thought he'd gone off the deep end. He claims that,
starting in the 70's, politicians and capitalists have given up on the
messiness of the real world and have instead substituted and sustained a
simpler world of their own design. I'd deeply admired Century of the Self [{%
cite century-of-the-self %}], but HyperNormalisation just came across like a
basket of conspiracy theories cobbled together and served up as social
critique.

I was also reading Baudrillard's *Simulacra and Simulation* [{% cite
simulacra-and-simulation %}] around the same time and found myself, again,
irked by puffery. This time, it was from the gratuitous application of terms
borrowed from technical fields [{% cite cite-needed %}], which seemed to aim
more at creating an *impression* of scientific technique than at conducting
any sort of rigorous analysis of modern scientific technique / its effects in
social reality (possibly cf: [{% cite plastic-words %}]). I would not be
surprised, however, if this was a deliberate (if annoying) stylistic choice in
service of advancing his "post-modern" argument. Apparently, some people
were so irked by writing like this they wrote an entire book about it
[{% cite fashionable-nonsense %}].

I will concede in both cases, however, that there is probably a tiny kernel of
truth buried deep, deep underneath the overburden of pretentious terms and
over-exaggeration. We humans rely on models of the world in order to be able
to live effectively in it. There is not such a thing as an un-mediated
reality, and our representations of the world become less discerning as the
horizon we have to deal with expands outwards (the analysis in *Public
Opinion* [{% cite public-opinion %}] comes in useful here).

On the state level, such representations—of people, of resources—have to be
systematised in a grid of the state's making in order to make *legible*
everything within its confines, to levy taxes and effect conscription (so as
to wage wars). The aspects of the world that appear on such representations
(e.g. census, cadastral surveys, maps) are highly restricted, privileging
those that are of interest to the state, regardless of the fidelity of such
representations to the lived reality of the everyperson. [{%
cite seeing-like-a-state %}]

This reductionist tendency is one I have observed in practice of data science.
As a younger data scientist, I was baffled whenever more senior colleagues
would reach automatically for the absolute simplest tools—linear regression,
logistic regression, those techniques you learn about in the first week of
introductory machine learning—when conducting analyses of business data. There
are so many models out there that would be able to give us much more accurate
predictions, so why are we still sticking to these dinky little elementary
tools?

Well, I soon learned that outside the confines of academia, people cared very
much about the interpretability of such models, often over and above the error
metrics academicians so emphasized. People wanted to know more about *why* the
model made a certain prediction—for example, why did the model predict that
this customer would keep their subscription, and that one would churn? Knowing
the why would enable the business to take action, for example, by ameliorating
whatever the root causes of customer churn was. On the other hand, complex
models, while usually more accurate, were less interpretable, with fewer easy
explanations of "X factor increases Y outcome". Such analyses was not only
less actionable to people around the company, they can also be perceived as
being less trustworthy—nobody likes a black box with the potential of yielding
arbitrarily wild predictions. And so the simplest of models have stayed fast
in the toolboxes of data scientists through the years, despite all the recent
advances and hype surrounding deep learning.

The attitude I've just described—the preference for interpretability over
accuracy—sits, in some ways, on the enlightened end of the spectrum. More
insidious is when people unquestioningly hail the application of such models as
some magical silver bullet. This applies to all models, and not just those
over-hyped specimens from the AI/ML world.

"All models are wrong, but some are useful," is an adage I wish more people
understood. I'd also hasten to add, "in limited contexts."

Timely and germane is the example of how [wildfires have been handled in
California][wildfire]. 

> Flammable as it looked, even forests mismanaged like that patch burned until
> recently in the historical way, at low severity along the forest floor. As a
> result, the entire field of wildfire science—including every modeling tool
> with which firefighters make life-or-death decisions and society structures
> itself in fire-prone areas—is based on that kind of fire behavior. The core
> mathematics of this science date to the early 1970s, when a Forest Service
> researcher named Richard Rothermel used small laboratory fires to produce
> equations expressing the relationship between wind speed, ground slope, and
> how fast a fire spreads. Rothermel knew his approach worked properly only
> for wildfire in light surface fuel like that in his lab—and failed to
> capture what happened when blazes got into treetops and jumped
> crown-to-crown. But these so-called Rothermel spread equations were
> applicable to so many wildfires that the Forest Service quickly developed
> paper-and-pencil ways for firefighters to plug in numbers for wind and slope
> angle and make reasonable guesses about how fast and in which direction a
> fire might spread—in a single heading, on a straight line. Eventually that
> modeling framework was run on cumbersome supercomputers, then on handheld
> calculators. In the early 1990s, PC-based software finally allowed
> firefighters to predict fire spread in two dimensions on a map.

1.  Modellers usually know the limitations of their models up front—any model
    requires the acceptance of certain assumptions, the negligence of certain
    terms. Such limitations need to be communicated clearly, especially to
    non-technical end-users, lest the model be over-extended in its
    application. Sometimes, though, when a model becomes _too_ useful, it is
    no longer within the control of the modeller as to where it gets
    applied—and that's where the trouble starts.
2.  There is an understandable, if sometimes damnable universalising tendency
    that undergirds our culture. All models are built on certain sets of
    assumptions, assumptions that are inevitably an encoding of the modeller's
    own culture and experiences. Even in physics—the models we developed
    first, and indeed are the most sure of, are those of the space- and
    time-scales that we humans have the most direct experience of. To deny the
    limited applicability of models (and especially those outside of the
    "hard" sciences) takes ignorance, arrogance, avarice, sloth, or some
    combination thereof. In California, as in Australia, the accumulated
    wisdom of the natives in managing their dry and fire-prone homelands was
    ignored in favour of the forest management techniques the colonizing
    Europeans brought from their comparatively wetter climes, to horrifying
    consequences.

And so, from Curtis: yes, state and bureaucratic machinations necessitate
simplifying assumptions for their efficient workings. It doesn't mean there is
a grand conspiracy starting only in the 70's that's engulfed us all today; if
anything, we've been hypernormalised since the birth of the state. Possibly
before. From Baudrillard: what he calls the precession of simulacra, I call the
precession of models.

[wildfire]: https://www.wired.com/story/west-coast-california-wildfire-infernos/