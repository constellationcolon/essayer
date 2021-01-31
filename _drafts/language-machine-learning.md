---
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

cf {% cite truth-and-lies %}