---
layout:     essai
title:      Language / Modernism / Machine Learning
---

<!-- TK: a better title -->

Machine learning is a black hole, tearing apart all fields in its ever
expanding orbit, ablating and incorporating them into its accretion disk,
gorging itself on these fragmentary shards.

-

Claims that {% sc AI %} is taking over the world are, by now and still,
exasperatingly overblown. The moniker of "artificial intelligence" was a
marketing exercise—the academic who came up with the term himself said it <!-- TK:
citation needed -->—and as with most objects of marketing, its most
unqualifiedly enthusiastic cheerleaders have been the ones furthest away from
the sausage factory.

The critiques current in discourse about the applications of {% sc ML %} and other
black-box algorithms have focused, quite rightly, on their effects on our
societies—especially those communities marginalised by traditional power
structures. There is much discussion on how the biased processes of data
collection, pre-processing, and algorithm {% sidenote %}Here, I differentiate
the _algorithm_, a set of computer instructions explicitly programmed by a
human, from a _model_, which takes inputs and spits out particular predictions
(or prescriptions) based on its specification as well as on the data fed to
it.{% endsidenote %} design all contribute to perpetuating pre-existing
systems of oppression.

Less frequently examined, however, are the *techniques* used in harnessing this
data—the underpinnings of the models and algorithms themselves.

## Unsupervised learning

One of the major groups of machine learning techniques is that of unsupervised
learning: determining some set of suitable groupings for a given unlabelled
dataset. Think, for example, about those sidebars that appear in your social
media feeds telling you about the top news events people are talking about at
the moment. When you click into such an entry, up pops a list of conversations
and news articles about the event itself. In their original forms, these posts
and links don't arrive on the platforms' doorsteps already bearing a little
sticker proclaiming "<sc>hello, my name is</sc> Four Seasons Total Landscaping
press conference", they come in memes and satire saying, "Make America Rake
Again!" Being able to group such related threads together, about the final
glorious moments of the Trump re-election campaign fizzling out, is what
unsupervised learning sets out to accomplish.

<!-- setosa illustration -->

There is a profusion of such techniques out there, but at the end of the day,
they all tend to look for groupings of data points located closely together in
some space{% sidenote %}What constitutes "close", and which "space" we measure
such distances in, are determined by the data, its processing, the model and
its parameters, and ultimately the practitioner themselves.{% endsidenote %}.
So far so good. Drawing circles around dots huddled closely together seems the
common sense thing to do.

The trouble comes after we have drawn such circles. As cw likes to point out,
unsupervised learning is often a giant fishing expedition—you never know if
you're going to reel in the line and end up with an old boot, or an actual
catch. <!-- more elaboration and examples -->

> Let us think in particular of the formation of concepts. Every word becomes a
> concept as soon as it is supposed to serve not merely as a reminder of the
> unique, absolutely individualized original experience, to which it owes
> its origin, but at the same time to fit countless, more or less similar
> cases, which, strictly speaking, are never identical, and hence absolutely
> dissimilar. Every concept originates by the equation of the dissimilar.
> {% cite truth-and-lies -l 249 %}

> What is truth? a mobile army of metaphors, metonyms, anthropomorphisms, in
> short, a sum of human relations which were poetically and rhetorically
> heightened, transferred, and adorned, and after long use seem solid,
> canonical, and binding to a nation. Truths are illusions about which it has
> been forgotten that they are illusions, worn-out metaphors without sensory
> impact, coins which have lost their image and now can be used only as metal,
> and no longer as coins.
> {% cite truth-and-lies -l 250 %}

> As a "rational" being, he now puts his actions under the rule of
> abstractions; he no longer lets himself be carried away by sudden
> impressions, by intuitions; he first universalizes these impressions into
> less colorful, cooler concepts, in order to hitch the wagon of his life and
> actions to them. Everything that sets man off from the animal depends upon
> this capacity to dilute the concrete metaphors into a schema; for in the
> realm of such schemata, something is possible that might never succeed under
> the intuited first impressions: to build up a pyramidal order according to
> castes and classes, a new world of laws, privileges, subordinations,
> boundary determinations, which now stands opposite the other, concrete world
> of primary impressions, as the more solid, more universal, more familiar,
> more human, and therefore as the regulatory and imperative world.
> {% cite truth-and-lies -l 250 %}

> As the Romans and Etruscans carved up the sky into rigid mathematical
> sectors and assigned a god to each delimited space as in a temple, so every
> nation has such a mathematically divided conceptual sky above it and
> understands by the demand for truth that each conceptual god must be sought
> only in his own sphere. In this respect man can probably be admired as a
> mighty architectural genius who succeeds in building an infinitely
> complicated conceptual cathedral on foundations that move like flowing
> water; of course, in order to anchor itself to such a foundation, the
> building must be light as gossamer-delicate enough to be carried along by
> the wave, yet strong enough not to be blown apart by the wind.
> 
> {% cite truth-and-lies -l 251 %}

> Language, as we saw, and later science, works at the structure of concepts.
> As the bee simultaneously builds the cells and fills them . with honey, so
> science works incessantly at the great columbarium of the concepts, the
> sepulcher of intuition, forever constructing new and ever higher levels,
> buttressing, cleaning, renovating old cells, and striving especially to
> fill this enormous towering edifice and to arrange the whole empirical,
> i.e., anthropomorphic, world in it.
> {% cite truth-and-lies -l 254 %}
 
({% sc NB %} morbid adjectives; "preserved in aspic")

> That enormous structure of beams and boards of the concepts, to which the
> poor man clings for dear life, is for the liberated intellect just a
> scaffolding and plaything for his boldest artifices. And when he smashes it
> apart, scattering it, and then ironically puts it together again, joining
> the most remote and separating what is closest, he reveals that he does not
> need the emergency aid of poverty, and that he is now guided not by concepts
> but by intuitions. From these intuitions no regular road leads to the land
> of ghostly schemata, of abstractions. The word is not made for these
> intuitions; man falls silent when he sees them, or he speaks in sheer
> forbidden metaphors and unheard of conceptual compounds, in order at least
> by smashing and scorning the old conceptual barricades to correspond
> creatively to the impressions of the mighty present intuition.
> {% cite truth-and-lies -l 256 %}

