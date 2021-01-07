---
layout:   essai
title:    Defaults
blurb:    Ripping out the IV drip of the news feed
---

You know that feeling you get about a familiar word after saying it a couple
of times too many? As if it were a complete stranger you were now just meeting
for the first time? The word _default_ became such a familiar stranger to me,
as I was looking into referral sources to news
websites.{% sidenote %}
    When we access the news online, we can land on a news website by (a)
    typing in the url to a publisher's homepage, aka **direct** traffic, (b)
    searching for news about X and clicking links to news articles, (c)
    tapping on a news article that pops up on a social feed, (d) following a
    link from somewhere else on the internet, etc. etc. That place we first
    started from is called the _referral source_.    
{% endsidenote %}

Referral traffic had been something of an evergreen subject while I was a data
scientist at Chartbeat.{% sidenote %}
    What is a "Chartbeat"? Think of a major online news source. Any one would
    do. Chances are, on that website that you just thought of, Chartbeat is
    tracking your every move, on every visit. "Chartbeat is the leading
    provider of real-time analytics to major online publishers around the
    world, such as the New York Times and the {% sc BBC %}," et al., etc. More
    at [chartbeat.com](chartbeat.com).
{% endsidenote %} Facing down the adpocalypse{% sidenote %}
    **Adpocalypse** (_n._): the end of the ad-funded news business as we
    know it due to the recent ascendency of the Facebook/Google ads duopoly. A
    time of reckoning and revelations about which outlets saw their readers as
    pairs of eyeballs to be trawled for their content farms, and which were
    actually producing journalism people cared about.
{% endsidenote %}, publishers were obsessed with the latest referral trends, 
restless in their search for the next big source of eyeballs. Part of my job
was to wrangle a rubbery spaghetti of referral URLs into comprehensible
insights about how much traffic each website or app was sending to publishers.

Unsurprisingly, the top 2 spots in the referral rankings invariably went to
the duopoly, Google and Facebook, driving an order of magnitude more traffic
than any of the other individual referral
sources.{% sidenote %}
    Such was the mania amongst publishers that a rival analytics firm (let's
    call them _Cilantro_) began to make a regular hullabaloo in their
    newsletter every time Facebook and Google inevitably switched places again
    in the referral rankings that latest month.
{% endsidenote %}{% sidenote %}
    "But what about Apple News?" I hear you ask. Well, as with all things
    Apple, I could tell you, but the itinerant ghost of Steve Jobs would send
    someone along in short order to kill you.    
{% endsidenote %} But of ongoing (and sometimes disproportionate) interest to
publishers were also the referrers a little further down the list. If there
was an up and coming referral source, they'd want to be the first to get a
jump on.

One such referrer was Google Chrome's [_Articles for You_][afy] (or Google
Chrome Suggestions, {% sc GCS %}, as Chartbeat dubbed it) on the browser's new
tab page{% sidenote %}
    This one kept popping up on people's dashboards as `googleapis.com`.
    Needless to say, that left many people scratching their heads—Google has
    so many {% sc API %}s, so which one is it? As it turns out, the full
    {% sc URL %} for the referrer was
    `http://www.googleapis.com/auth/chrome-content-suggestions`, and some
    light google-ing of the {% sc URL %} revealed forums full
    of disgruntled Chrome users asking how they might turn the damned thing
    off. (This was back in the days of when I was trying to figure out what it
    was; nowadays the search results are just full of articles claiming they'd
    discovered That One Weird Trick for getting your website on that feed.)
{% endsidenote %}. The amount of monthly traffic it was referring had grown 21x
over the course of just a year, and had even surpassed even that of Twitter,
then the third largest (external) referrer after {% sc FB %}
and {% sc GOOG %}. (You can see {% sc GCS %} just barely peeking over
the {% sc TWTR %} horizon in '18 in the chart below.)

<figure style="padding-bottom: 4px;">
  <div style="padding-top: 6px;" class="viz-altair" id="fig-mobile-visits"></div>
  <figcaption>
    Data: <a href="https://ona18.journalists.org/wp-content/uploads/
                   sites/16/2018/10/The-Global-State-of-Reader-Engagement.pdf">
      Chartbeat
    </a>
  </figcaption>
</figure>

Although Chrome's *Articles for You* had, at the time, been limited to just
Android devices, the realization that this fast-growing feed was being shunted
by in front of people on the most popular browser in the world, by _default_,
got me thinking back to Microsoft's infamous Netscape murder. Back in the days
of the First Browser War, the death knell had sounded for Netscape (then the
most popular browser) when Microsoft started bundling Internet Explorer into
Windows. That made {% sc IE %} the default, and hence the browser of (lazy
consumer) choice. All told, a stellar strategy for the lumbering tech giant
attempting to break into a new market; why bother developing a better product
[when you can just tack it on to your already-popular platform][flex-tape],
and make all your pre-existing users adopt it?

A little ways down the referrers list, too, were other signs of default: [upday
news for Samsung][upday] (a news app from the German Axel Springer publishing
group) came pre-installed on Samsung phones; Pocket, an app that allows you to
save links you want to read later, [started to surface link recommendations on
each new tab Firefox users opened][pocket]—much like *Articles for You*. But
these referrers never broke the top 10—Samsung and Firefox never had the manner
of market monopoly Google did, and does.

Now, having seen that little chart of the referral landscape earlier, you may
have noticed that between the duopoly, Facebook seemed to be waning, and
Google Search on the rise (along with direct traffic to publishers'
homepages). Why am I still harping on about defaults, then? Isn't it a good
sign that people were relying less on Facebook for their news, and more
proactively seeking it out on their own, whether through Google or on news
sites directly?

Well, as always, the devil's in the details, for it was also around this time
that Google launched their [feed for the Google app (which also appears on the
left-of-home panel on Android)][google-app-feed]. This was later to be
rebranded as [Google Discover][google-discover], and subsequently expanded to
`google.com` itself.{% sidenote %}
    Was it a product strategy, to consolidate the recommendation experience
    across Google product surfaces? Was it an advertising ploy, to nudge more
    eyeballs onto pages they were serving ads on, just because they didn't
    previously have a feed like Facebook one could simply mindlessly scroll
    through? Or perhaps an internet monopoly play, to ~~coerce~~ incentivise
    websites to use Google {% sc AMP %} to be more likely to make it onto the
    feed and further entrench their hold on the web? (Well, most likely, it
    just was a convenient confluence of all of the above.)
{% endsidenote %}Yet another default feed, served up on yet another
of Google's popular platforms. Frustratingly, for people looking at the
referral information coming out the other side, there was no way to tell
whether that uptick in Google traffic was coming from people more actively
searching out information on Google Search, or from more passive consumers of
the new feed clicking through to recommended links.

{% include break.html %}

It's a bit of a mystery how we came to use the word *default* to mean {% sc the
standard fall-back option in the absence of an explicitly declared choice %}.
But one can certainly *guess*: its Latin roots, *de* 'away' + *fallo* 'deceive,
cheat, escape notice of', point their spindly fingers at a slippery skiver.
With its older senses, we speak of failure, of negligence, in meeting any of a
variety of obligations: failing to make payments, we default on a loan; failing
to show up, we default a game, or a court summons.

When we think of defaults today—factory defaults, default search engines,
default home-pages, we think first and foremost of their pre-set nature. Yet,
buried underneath all those dusty menus full of configurable but untouched
options lies our true Default, that unwitting abdication of our responsibility
as human operators to specify an instruction for the machine.

The unflattering denotation of the default was probably not lost on early
designers of computer systems. Bruce Tognazzini, writing design guidelines for
the Apple *IIe*, for instance, opens the section on 'Defaults'{% sidenote %}{% cite apple-iie-design -L page -l 37 %}{% endsidenote %} thus:

> Please do not ever use the word default in a program designed for humans.
> Default is something the mortgage went into right before the evil banker
> stole the Widow Parson's house. There is an exhaustive list of substitutes
> (previous, automatic, standard, etc.) in the Appendix to How to Write a 
> Manual.
>
> Defaults should be declared, not assumed. Undeclared (not displayed) defaults
> such as pressing `RETURN` for Yes (or for No?) will cause confusion and
> anger.

Bruce is probably out there somewhere today, spinning with confusion and
anger.

{% include break.html %}

I already hear you protesting: Su, what do you have against feeds? Feeds are
great! I want to be an empowered and informed member of society. News is by
definition that which I don't know about but should be apprised of, and feeds,
like how Google has so cleverly put it, feed my need to know with the lowest
level of requisite effort on my part. If I had to go out there and search out
the information I need to know all the time, I wouldn't have the time for
doing anything else—pragmatism, not idealism!

Humour me for a minute, and think back to the last time you (doom)scrolled
through a news feed{% sidenote %}
    Just the word _feed_ itself—like the word _default_—gives me the
    heebie-jeebies. (Whoever said wordnesia was simply a curio?) It's a word
    that puts me in mind of plugging ourselves into a socket on the wall, as
    if we were machines sustained by centrally-supplied electricity; of
    hooking ourselves up to an {% sc IV %} drip, as if institutionalised in
    perpetuity; of animal feed; of prolefeed; of a pig, in a cage, on
    antibiotics. [{% cite fitter-happier %}]    
{% endsidenote %}; Facebook, Twitter, whichever, doesn't matter. Of the news
items you came across, how many did you simply scan over the headlines and
preview image or autoplay clip of? How many did you actually click through to
peruse? Of those you perused, how many would you say had a direct impact on
your life, that you've done something differently on account of having read or
watched it? Or was it just another piece of trivia you instinctively
retweeted, and then brought up as a bit of idle chit-chat as you ran into
other people that day? [As {% sc NPR %} so cheekily demonstrated, who even
reads anymore?][npr-read] We collect articles and share links like hermit
crabs scrabbling to encrust our online personae with the discarded, shiny
hollow shells of some distant reality.

What news, as we commonly encounter it today, does one actually _need_ to
know? For Neil Postman, the answer to this question was, not very much. Not
because we'd survive living under a rock, but because the news—that
decontextualised, objectivised view from nowhere, blasting 24/7 through the
media firehose—does not contain information that most of us can realistically
act on. In his 1985 (!) book _Amusing Ourselves to Death_{% sidenote cite-aotd
%}{% cite amusing-ourselves-to-death %}{% endsidenote %}, written in the
golden age of {% sc MTV %}, Postman coined the term _information-action ratio_
as a précis for the phenomenon. Others have compared news consumption to an
[information diet][info-diet], which, like the stuff that we eat, has
increasingly come to be made up of junk: high in calories, low in actual
nutrition. Sadly, this is a metaphor I've heard being employed unironically:
audience development people at publishers would make reference to "snackable
content", content that the busy professional would presumably be able to slurp
up on the go{% sidenote %}This was, of course, back before we entered this
apocalyptic movie timeline and busy people actually went places, instead of
being stuck indoors for the indefinite future due to a deadly global
pandemic.{% endsidenote %} as if it were a little packet of informational
[soylent]. Not that this is a view uniformly shared by all publishers.
[Speaking to Time magazine][time-ag], A.G. Sulzberger, publisher of the {% sc
NYT %}, complained, "I actually hate the word content. It’s a word for junk …
the junk you shovel into Facebook. What we do is journalism." But even with
journalism—how many times have we delved into stellar, hard-hitting
investigative reporting, only to emerge feeling concerned, but ultimately
powerless?

How did we get this way, drowning in information and still so lost at sea?
Postman drew on Marshall McLuhan's theory that "the medium is the message" to
make his point about {% sc TV %} being a medium that inherently
short-circuited any attempt at measured discourse, tugging on the false visual
intimacy created between rapt viewer and dazzling {% sc TV %} personality to
relay its visceral messages. But it is certainly not the case today that all
feeds simply beam autoplay videos into our eyeballs (even if there _is_ an
annoying tendency to do so{% sidenote %}
    #tbt the infamous pivot-to-video bubble, [which cost the jobs of
    innumerable journalists and eventually got Facebook sued][pivot-to-video].
{% endsidenote %}). Content™ comes at us in slideshows,
videos, and listicles alike. The medium being the message, in any case,
doesn't explain _why_ there's so much chum in those Outbrain buckets.

To do that, we need to (as fictional Deep Throat said) follow the money. For
decades, mass media companies had enjoyed the undivided attention of the
popular mind. The larger the circulation of a paper, the more a print
publication was able to charge advertisers to take out an advertisement in its
sheets. Circulation was king. The lifestyle section and the Sunday paper were
just two of the "innovations" that publications came up with in their drive to
reach ever widening audiences and demographics—to women, especially, who were
known as the ones to actually go out and spend money on the wares the
advertisers were hawking. Similarly, when the time of {% sc TV %} rolled
around, the wider the reach of a network, the higher its Nielsen ratings, and
the more the broadcaster was able to charge for a spot between its
programming.

All this, obviously, changed with the internet. At first, the internet was
just this dinky little thing that everyone would just put their articles up on
for free, a [technological curiosity obsessed over by the {% sc IT %} nerds
lurking in the basement][nyt-twtr]. But it seemed one day we were inking our
fingers and smudging our cheeks with powdery grey transfers from newsprint,
and the very next, our eyes were glued to our smartphones, glassy-eyed
captives in the walled gardens of the Books of Faces. And so it came to pass,
that where the eyeballs went, the ad dollars soon followed. Cue adpocalypse{%
sidenote %} Well, there's a little bit more that happened
with {% sc VC %}-funded media startups in {% sc NYC %} (think Buzzfeed, Vox,
Gawker, et al.){% endsidenote %}.

Of course, all is not well in the walled gardens. Social media feeds have been
blamed for the full gamut of social ills we face today, regardless of whether
they started the fire: the disintegration of our social fabric into
personalised and polarised [echo chambers][echo-chambers], the [radicalising
effects of runaway recommendation systems][recsys], [hijacking our emotional
responses][social-emotion] to [harvest more clicks, incite more outrage, excite
more stans][emotion-viral]—and in doing so extract more ad revenue for the tech
giants.

But insofar as journalists have dutifully documented these abuses of tech,
written up (rightly) critical think-pieces on the impacts that tech is having
on [our attention spans and our mental health][smartphone-generation], as much
as they have (also rightly) bemoaned the ill-gotten gains of the tech
behemoths, [engorged on the appropriated labour of those engaged in the real
work of newsgathering and reporting][platform-pay-news], what they conveniently
fail to mention in the midst of all this hullabaloo about the exploitation of
our minds under the attention economy is that the attention economy was booming
_decades_ before Tristan Harris started pontificating about Time Well Spent.

What the *New York Times* doesn't tell you, when it propagates its
[*Truth*][nyt-truth]; what the op-eds don't say, when they opine that ["You
Are the Product"][u-r-product] of the social networks, is that the mass media
in crisis today was *itself* established on selling you, the consumer, as a
product{% sidenote television-delivers-people %}
    [{% cite television-delivers-people %}] AFAIK,
    this short video entitled _Television delivers people_ is the first time
    that the phrase, "you are the product" gets applied to a form of media.
    Although the video refers explicitly to {% sc TV %}, the same analysis can
    certainly apply to any form of media that is (nearly) free to
    consume—including the newspaper.
{% endsidenote %} to the advertiser. Not only were you
already the product, the mass media's claims to "truth" and
"objectivity"{% sidenote %}
    I have a whole separate rant on "objectivity", "neutrality",
    "defaults" (in another sense), but that will have to wait for another time.
{% endsidenote %} were instituted not so much on the grounds of some noble
sense of journalistic integrity, but more so out of fear of upsetting the
paying advertiser{% sidenote %}{% cite media-future-past %}{% endsidenote %},
or losing access to valuable high-level sources{% sidenote %}{% cite
manufacturing-consent -L chapter -l 1 %} {% endsidenote %}. As soon as a
medium started to derive most of its revenue from the advertiser{% sidenote
ad-rev %}
    As one point of reference: in 1966, the {% sc NYT %} was [N° 404 on
    the Fortune 500][nyt-fortune-500], that had a "350-man department that
    [brought] in more than $100 million a year by selling ads," and moreover,
    "the revenue derived from advertising [was] three times what the paper
    earn[ed] from its circulation sale and its other business ventures
    combined." {% cite kingdom-and-power -L chapter -l 4 %}
{% endsidenote %}
and not from you, the reader, it had already been de-fanged as a speaker of
the people's truth.

## The more things change...

The ways in which we receive and perceive the world today may look completely
alien to an observer living just a decade or two ago, but the underlying
ad-funded terrain that information has to traverse to get to us has remained
the same. The same invisible hand of advertising continues to direct which
pieces of information we pay attention to—and which inconvenient truths get
magically hand-waved into obscurity. Though it may be an algorithm now
curating your personalised Google
feed{% sidenote %}
    It's pretty questionable, however, to what extent the content
    that shows up on such feeds is truly "personalised". I recently heard a
    complaint (from someone with a Ph.D. in physics) about the recommended
    links showing up on her Google feed being mostly celebrity gossip, whereas
    those showing up on her husband's feed were things like, "recent advances
    in physics!" In this connexion, the "personalised feed" comes across as
    little more than the algorithmic identification and perpetuation of
    stereotypes (that we formerly tended to associate with the mass media),
    selectively shown and now with the middleman simply cut out. I brought up
    that she could probably turn the feed off if she didn't like the
    recommendations, but she demurred, saying that she wouldn't be otherwise
    exposed to such a variety of news sources without having to lift a finger. 
    <br><br>
    Much more about algorithmic bias and how it can lead to the further
    entrenchment of our own societal biases in
    _Weapons of Math Destruction_ [{% cite wmd %}].
{% endsidenote %} by churning through terabytes upon terabytes of clickstream
data, where before it was experienced editors handpicking stories deserving of
a spot on Page 1, the salaries paid out to tech employees who built the feeds
still ultimately issue from the deep pockets of corporate marketing
departments, just the same as to the editors who baptise stories as
"newsworthy". The default feed has vied to replace the frontpage, with the
structural incentive to mine human attention more naked than ever before.

Again, I hear you shifting in your seat—well, _so what_ if I actually am the
product? They're corporations, they exist to make money, and besides, it's not
like I'm not getting something out of this exchange—my attention, for their
information, (or entertainment, which I sorely need after a long, hard slog at
work).

To assume that such an exchange is fair is dangerous: that some expert out
there, human or machine, can automatically know—far removed from your
context—what you, a living, breathing person with your own unique set of
experiences, needs to engage with in order to realise your dreams and vanquish
your fears. Much as tech pundits may claim that the fracturing of the mass,
broadcast media into personalised (social) media feeds represents a
repudiation of that traditional regime of top-down mass communication, what
you're arguably getting is still what the averaged consumer a system has
deemed to be similar to you instinctively wants in a positive feedback loop of
infotainment. Your eyeballs, compulsively trained on their Content™, is not an
equal exchange as such—far from it. The more we lean into information as
entertainment and distraction, the less we understand _why_ we're living
through this shit-show of a year called 2020: global pandemic, social
inequality, breakdown of the body politic, unprecedented fires in Australia,
California, and the Amazon, unprecedented numbers of named storms in the
Atlantic, unprecedented environmental destruction and extinction on all
fronts—and the more we despair of being able to _do_ anything about it.

I bring up the uniqueness of the human experience here not as an assertion of
some individual "unique snowflake" status (in fact, I've found that such
assertions often produce the opposite effect in individuals proclaiming such
screeds, who happily embrace the marketers' and technocrats' segmented
representations of people as mere "identities"), but as an assertion of our
humanity, our agency, and our inherent ability to build and affect our
collective social reality with our words and actions. I say this in opposition
to that all-too-modern view of the individual as an instantiation of an
atomised agent, acting alone in some cold, absolute, and unchanging world.

For this is exactly where the trap of the default lies: in failing to specify
an instruction for the machine—a tool we are supposed to be using for our
ends—we do not simply fall prey to the control of some magical machine. <!--
need to elaborate on this romanticisation in culture/fiction --> Such a
statement is an absurdity; the machine didn't build itself, people in search
of profits built the machine. What we in fact fall prey to, are the
machinations of the wizards behind the curtains: the tech executives, product
managers, and engineers dictating the default states of the apps and feeds
that have come to occupy every waking moment of our lives. To paraphrase
Tognazzini, the default is what we've accepted right before the technocrats
stole our powers to self-determination.

Beyond just that tired binary between human or dancer, this matters beyond
even your personal choice whether to sink into that polyester bosom of the
nanny state; to slumber through our lives, dream-like, all watched over by
machines of loving grace. This is that pivotal moment where our species makes
its choice, of whether to go out in the literal fire and brimstone of the
Anthropocene, to relegate ourselves to the trashheap of evolutionary history,
or to call upon those faculties that we have so exalted for millennia as being
uniquely human. To reason, to imagine, to band together, and most of all, to
overcome. Because to choose the machine out of sloth is no longer simply some
naughty exhibition of a human vice. Knowing what we collectively know today,
about all the ways in which our profligate consumption is destroying us and
ours, choosing the machine is to choose to wilfully snuff out that
long-burning flame of the human spirit, to extinguish the spirits of our plant
brothers and animal sisters of the more than human planet who we grew up with
over the last few million years.

What they give you is fragmented factoids stripped of personal context or
human meaning. <!-- They give you Humpty Dumpty after he's fallen off the
wall, and they render you no help whatsoever in piecing him back again. -->
Another war in war-torn Afghanistan. More sanctions against nuclear-aspirant
Iran. They give you the aesthetic surface, the penis fencing of the governing
minority, and in doing so drum up continuing support for ever-escalating
military expenditure in an armada of profitable wars without horizon.

But what happens to the majority of the people living all over the world—in
both the countries doing the invading and those getting invaded—who didn't
choose the war-path their tax dollars are financing? To those precipitating
actions by the Anglophone powers to disrupt inchoate, legitimate democracies,
stretching back to the Cold War and even before, that fostered these very
dictators they're supposedly fighting against today?

The most egregious example of the harms of relying on the attention merchants
for an accurate representation of reality comes in the form of our gravest
challenge today: the climate crisis{% sidenote %}
    Given the far-ranging implications of the climate crisis,
    I have begun to sense that the term is adequate only for describing the
    tip of the iceberg of interlocked issues that we face today on a global
    scale: environmental pollution and destruction, species extinction,
    resource depletion, emergent pandemics, inter- and intra-national
    immigration pressures, infrastructure collapse, ... the list goes on.
{% endsidenote %}. This is the perfect storm of mis-aligned 21st century incentives:

1.  *A planetary-scale disaster unfolding in slow motion,* with little of
    the quick or easy visual- or sound-bites so suited our attention-deficient
    consciousnesses. One can only show a hockey stick graph so many times, and
    images of polar bears seem impossibly far removed. With the Cold War, it
    was at least easy for the average person to immediately comprehend the
    consequences of a misstep: a mushroom cloud, and then—nothing. While there
    are (sadly) certainly more examples at hand today that are well suited for
    the news cycle (e.g. the orange-red skies of the Australian and
    Californian wildfires this year), how many news outlets are actually
    drawing those links between these tragedies and the consequences of our
    actions?

1.  *"Climate change is a ratings killer" — Chris Hayes* The climate crisis is
    undoubtedly a story that begins with our poor life choices, and can only
    end when we collectively acknowledge and re-evaluate them. Too often, this
    re-evaluation is cast as teeth-pulling (reducing consumption on all
    fronts, portrayed as painful despite the spiritual hollowness of modern
    consumer culture), individual consumer choice (paying more for renewable
    energy—a patent lie now that renewables are actually cheaper than fossil
    fuels) and political gridlock ({% sc COPXX %}; no further comment here).
    This has had the effect of turning viewers off, a no-no for any
    advertising-based business whose primary {% sc KPI %} is engagement. Some believe
    this is primarily because these programmes have tended to be [presented
    poorly][climate-presentation]. Others believe it to be too depressing—but
    this begs the question of how such a crisis can be more depressing than
    the endless parade of wars in the Middle East on show in the mass media?
    In the grand scheme of things, far too few outlets recognise this as
    [opportunity to rebuild][climate-rebuild] our economies in a way that is
    more just and equitable for people and living beings all across this
    Earth.

1.  *Politically sensitive implications* The climate crisis is almost
    certainly going to bring more climate refugees to the doorsteps of other
    cities, states, and nations as time goes on; the climate migrations have
    already started. 

1.  *Ideologically sensitive implications* At the heart of it, the climate
    crisis is a story about the consequences of greed, of the lie of infinite
    economic growth on a finite planet. We've lived with this story for so
    long—so many, like I, was brought up on it, spoon-fed to us as
    school-children—that we've forgotten that it was just a story of hope we
    told ourselves in an age when we were so small in number as to be
    negligible on this planet.

This instinct has extended even to broadcasters with a scientific background.
Sir David Attenborough, perhaps the most celebrated natural historian on
television of our times, was saying just 2 years ago that reminding viewers of
the extinction crisis could become a "[real turn-off][climate-turn-off]".
Thankfully, he has recently been [less inclined to continue tiptoeing around
the problem][attenborough-tiptoe].

The way we live today is caricatured perfectly by the This Is Fine meme. Our
house is on fire, and yet all we do is to remain at the table saying, "This
is fine". During the peak of the wildfire season, San Francisco skies were
smogged blood-orange, and yet all the discourse we'd managed was to fly a drone
over the apocalyptic city and set the scenes to music from Bladerunner. We
pretend we're living in some grand disaster as we see in the movies, and yet
every day of this pandemic we wish fervently for a quick return to normal.
This is but wishful thinking. We live today, at the confluence of multiple
disaster scenarios, and if 2020 were a movie before this year had commenced
people would have laughed at the absurdity of the script. Spoiler alert: it's
business as usual that's brought us here. We cannot, must not, return to
pre-2020 "normal".

{% include break.html %}

So where do we go from here? Prudent polemicists generally refrain from
prescribing solutions to the ills that they denounce. This is probably wise,
since none of us can predict the future. But as this is an essay lamenting
the default of inaction, I shall here, in the fullness of my youth and
immaturity, point to developments I'm excited about, and where I think the way
out of our slumber lays.

Ad-revenue, for better or for worse, is now out of the question for media
outlets fighting tooth and nail now to survive. The instinct for many has been
to put up paywalls, the most obvious way of transitioning to a
reader-supported revenue model. Yet, restricting access to news and
information surely defeats the purpose, on some levels of public-service
journalism. When elite publications put up walls to information, they serve
only to further entrench the informational inequalities that plague our
society (so much for the liberal bias of the media!) As Nathan Robinson put it
in his excellent article, Truth is Paywalled but the Lies are Free{%cite
truth-is-paywalled-but-lies-are-free %}, it's little wonder that the likes of
Breitbart has had so much success spewing their lies all over Facebook. When
responsible publications deem their reporting to be privileged information for
only those who can pay, truth and integrity are readily subverted by those
with every incentive to spread their lies far and wide by pumping out
freely-accessible viral content.


Yet here is where I must very respectfully disagree with Robinson on his
suggested remedy. Robinson proposes that governments begin to draw on our
taxes in order to fund publications—academic and media alike—allotting
payments according to the frequency with which each piece of content is
accessed. For academic publishing at least, such a model would be a
no-brainer; why do the likes of Elsevier deserve 30% profit
margins{% sidenote %}
    In 2019, RELX, Elsevier's parent company, reported a profit margin
    of 31.6% [{% cite elsevier-2019 -l 2 %}].    
{% endsidenote %} for simply throwing academic research—often publicly
funded—behind a private paywall on the internet? I wholeheartedly agree, too,
that there is already more than enough room in what we pay in taxes to be able
to fund such a programme (looking at you, military budgets).

For the news media side of things, though, this payment model, of compensation
for engagement, continues to feed into the exact same attention economy that
we lament today—and again, engagement is a very different beast than
understanding or action. The Outbrains and Taboolas of the world would come to
be funded by our tax dollars, instead of just our eyeballs. This is a similar
experiment to the one being carried out by [Scroll]—which
while I do support, I do not believe will help us rebalance the
information-action ratio.

A tax-funded media also throws another spanner into the works: the state would
then gain more direct leverage over reportage and programming. Even though the
funds come nominally from the taxpayer, they are still funnelled through the
state apparatus, which ultimately has discretion over the budget and
distribution of such taxes. Depending on the prevailing political culture,
this can mean anything from [complete state control over the media][sg-media],
[the promulgation of state propaganda and censorship][voa-trump],
[neo-colonial whitewashing][moral-maze], to [fearless public-interest
reporting that are nevertheless subject to the other arms of state
control][abc]; sometimes all occurring within the same broadcaster. The point
here is not that public broadcasters should be abolished—where would we be
without BBC's _Doctor Who_, or CBC's _Ideas_, or, heck, Channel 4's _Black
Mirror_ before Netflix snatched it up? It's simply that the state ought not
be allowed absolute monopoly over a nation's media ecosystem, and its public
discourse by extension.

Instead, with the death of ad-revenue, I think we should seize the moment to
also get rid of its offspring and its enabler, the attention economy. It is
high time to say goodbye to those local (chain) outlets that still think that
republishing wire stories constitutes sufficient "journalism" for the
communities they should be serving, to those purveyors of click-bait
cholesterol that have clogged up our informational arteries.

What I'm truly excited about today, is open, reader-supported, participatory
journalism. Journalism that finally re-aligns the financial incentives and
power structures in favour of those that it purports today to serve. As some
have noted, the best part about subscribing to the New York Times is being
able to call up and threaten to cancel.{% sidenote %}{% cite cite-needed %}{%
endsidenote %} As the ad-supported model becomes increasingly insupportable,
outlets would do well to now recognise the will of the people, instead of the
will of the corporations—who have unceremoniously abandoned them now that the
tech giants have direct access to more scale than the news media could scrape
together.

The publication that has done best in this regard, in my opinion, is The
Guardian. It has purposefully rejected the use of a paywall (though it remains
to be seen how the [data-wall] skirmishes in the {% sc EU %}/{% sc CA %} will
work out), in favour of keeping its journalism free and open. Though it still
serves up ads to fund part of this free access, 28% of its funding now comes
from subscriptions and donations from its members and readers.{% sidenote
gmg-2018 %}
    The latest figures I could find on this subject were from
    [2018-2019](https://www.theguardian.com/media/2019/aug/07/guardian-broke-even-last-year-parent-company-confirms).
{% endsidenote %} Those who pay get ad-free access to its materials (unlike
some other outlets who shall remain unnamed). Its reportage speaks incisively
to the zeitgeist, investigating the intersecting environmental, social, and
political crisis of our day. Its pleas for funding are prominent and clearly
demonstrate their sustained reporting on the issues that matter—as well as how
important their readers' support is to them—all at the ends of articles, where
a more ad-driven publication would have been tempted to add in an infinite
scroll of other articles to milk your attention for all its worth. Reporting
aside, they are also demonstrably rising to the moment, practising what they
preach in their reporting by auditing their operations for its environmental
impact and cutting off fossil fuel advertising in their pages. Few other
outlets walk the talk the way the Guardian has. I think it is for this very
reason that this forward-thinking publication has weathered the upheavals of
the media industry remarkably well, reporting that it has recently broken
even<sup>[✐](#gmg-2018)</sup>, even as all around it, its competitors are shuttering or merging.

Above and beyond the re-alignment of financial incentives with
reader-supported journalism, I am excited about the rise of participatory
journalism, flipping the script on the already famous and powerful as the
active news producers and the masses as mere passive consumers of its
by-products. To truly opt out of the default, we need to reject the idea that
only the already powerful are newsworthy, that only the already famous wield
the power to effect change. We need to halt that magical thinking that help
for us will conveniently fall out of the clear sky, that top-down initiatives
are then only way to get things done in mass society. To do this, we need to
recognise our neighbours—ordinary citizens—as the true heroes of our time, as
the only legitimate co-constructors of our social reality.

Closer to home for me, this means cheering on small but enormously
consequential voices such as those of Kirsten Han on her *We, The Citizens*
newsletter, or P.J. Thum with New Naratif. Equally exciting are the citizens
elsewhere in Asia, coming together to resist the international neoliberal
order in Taiwan (New Bloom, sprouting from the seeds of the Sunflower
movement), or banding together in diaspora to resist the hegemonic repression
of the Chinese state (Lausan, Hong Kong).

How is this participatory journalism different from just posting on social
media? The social media networks of our day have found their niche (or rather,
their scale), in exploiting the "network effects" that venture capitalists
love so much. It is exactly this scale that enables their out-sized advertising
revenues, and with no competitors on the horizon (other than newer and danker
TikToks), it is unlikely that they would switch revenue models any time
soon.{% sidenote %}
    Well, technically, Dorsey floated the idea of a [subscription
    Twitter][twtr-subs] a while back, but it's a little unclear if there would
    be an appetite for such a paid service, especially as younger, hipper, and
    free platforms are mushrooming up all the time to upstage the older
    networks.
{% endsidenote %}

This means that, for the foreseeable future, the dynamics of these platforms
would continue to favour the sorts of attention-seeking Content™ we so
urgently need to get rid of. Even though any media operation will, like it or
not, need to rely upon at least some manner of social network, online or off,
in order to recruit contributors and audiences, Content™ created solely for
the purposes of going viral is of a completely different nature than
participatory reporting. To understand the former, one need only think of what
BuzzFeed, NowThis, or social media influencers continually churn out:
clickbait, infotainment, and fuel for conspicuous consumption. All predicated
on programmatic or direct ad revenue from some corporation or another.

Participatory journalism, on the other hand, is more interested in delving
deep into everyday concerns of everyday people, concerns so repressed and
glossed over by dominant corporate media narratives that they sour and ferment
in people's hearts, building up unreleased pressure and resentment over time.
Concerns that, again and again, have proven to be dangerous and explosive when
they have gone un-addressed. It is, I think, not always enough to conduct
citizen journalism in the form of verbatim recordings of events {% sc IRL %},
even though it has undoubtedly produced some admirable results. Human events
attain their significance only in their full context, and for better or for
worse we are creatures of narrative. To piece together a comprehensive and
comprehensible picture requires time, effort, access, and in some cases,
experience, which not everyone has equal access to. It is only when
journalists—who have the experience, and can be fairly compensated for their
time and effort—work with the people—doing the living and the celebrating and
the suffering, who need and want to document and relate their lived
experiences—that we can truly address the informational inequalities that dog
us and our communities.

To put it bluntly: I don't care about your posts about avocado toast. (Nothing
against avocado toast—I love a good one myself.) We have too many posts about
avocado toast taking up our attention and airspace, choking out the important
issues we really need to be grappling with: our profligate consumption, our
yawning inequalities, all of the negative "externalities" we wreck upon our
neighbours and our planet, hidden away by the distance and length of the
global supply chain and what we too commonly consider to be the "trivial"
activism of local groups. Because avocado toast is all we're allowed to talk
about, because it's not going to ruffle any feathers, because we're addicted
to the dopamine hits from the likes and re-tweets and the admiring jealousy in
the replies, and so we do it for the gram. Because avocado toast is safe for
our reputations, safe for the capitalist status quo, safe for keeping us
despairing, blind to our collective power if we just *bothered*. I'd like to
hear about those questioning thoughts, those moments of non-comprehension that
flashed across your mind for just a brief second before you tucked it away
again securely in those dusty recesses of your mind reserved for sharp
objects.

I'm excited about reclaiming democracy from the technocracy, about reclaiming
our very own pulse. I'm excited about the long tail of people making their own
news, who'd never use Chartbeat, perhaps because it's too expensive, perhaps
because they're too busy making their audiences the news makers and the news
makers their audiences to pay attention to superficial attention.

<!-- URLS -->

[abc]: https://www.abc.net.au/news/2019-06-05/abc-raided-by-australian-federal-police-afghan-files-stories/11181162
[afy]: https://www.niemanlab.org/2018/03/this-is-the-next-major-traffic-driver-for-publishers-chromes-mobile-article-recommendations-up-2100-percent-in-one-year/
[attenborough-tiptoe]: https://www.theguardian.com/environment/2020/sep/18/dont-look-away-now-are-viewers-finally-ready-for-the-truth-about-nature-aoe
[climate-presentation]: https://grist.org/article/is-climate-change-a-ratings-killer-or-is-something-wrong-with-for-profit-media/
[climate-rebuild]: https://www.theguardian.com/environment/2019/apr/22/why-is-the-us-news-media-so-bad-at-covering-climate-change
[climate-turn-off]: https://www.theguardian.com/environment/2018/nov/04/attenborough-dynasties-ecological-campaign
[data-wall]: https://www.niemanlab.org/2019/12/first-party-data-becomes-medias-most-important-currency/
[flex-tape]: {% link /assets/images/flex_tape.gif %}
[echo-chambers]: https://www.vice.com/en/article/d3xamx/journalists-and-trump-voters-live-in-separate-online-bubbles-mit-analysis-shows
[emotion-viral]: https://hbr.org/2016/05/research-the-link-between-feeling-in-control-and-viral-content
[google-app-feed]: https://www.blog.google/products/search/feed-your-need-know/
[google-discover]: https://blog.google/products/search/introducing-google-discover/
[info-diet]: https://w.wiki/iAZ
[moral-maze]: https://twitter.com/NadineElEnany/status/1286024294909321219
[npr-read]: https://n.pr/2J4ZKjx
[nyt-fortune-500]: https://archive.fortune.com/magazines/fortune/fortune500_archive/snapshots/1966/1380.html
[nyt-truth]: https://www.nytco.com/press/nytimes-releases-new-ads-from-the-truth-is-hard-campaign-directed-by-darren-aronofsky/
[nyt-twtr]: https://www.niemanlab.org/2017/03/word-up-this-is-the-story-behind-the-new-york-times-most-famous-tweet-which-is-10-years-old-today/
[pivot-to-video]: https://www.wired.com/story/facebook-lawsuit-pivot-to-video-mistake/
[platform-pay-news]: https://www.reuters.com/article/us-australia-media-regulator-idUSKCN24V3UP
[pocket]: https://blog.getpocket.com/2017/11/introducing-pocket-recommendations-in-firefox-quantum/
[recsys]: https://nyti.ms/3kCGyY9
[Scroll]: https://scroll.com
[sg-media]: https://en.wikipedia.org/wiki/Mass_media_in_Singapore
[smartphone-generation]: https://www.theatlantic.com/magazine/archive/2017/09/has-the-smartphone-destroyed-a-generation/534198/
[social-emotion]: https://doi.org/10.1073/pnas.1320040111
[soylent]: https://w.wiki/iAg
[time-ag]: https://time.com/5696968/a-g-sulzberger-new-york-times/
[twtr-subs]: https://techcrunch.com/2020/07/31/twitter-survey-reveals-the-subscription-options-its-eyeing-including-an-undo-send-option/
[u-r-product]: https://theconversation.com/if-its-free-online-you-are-the-product-95182
[upday]: https://play.google.com/store/apps/details?id=de.axelspringer.yana
[voa-trump]: https://www.theguardian.com/us-news/2020/aug/31/voice-of-america-journalists-trump-boss-michael-pack

<script src="https://cdn.jsdelivr.net/npm/vega@5"></script>
<script src="https://cdn.jsdelivr.net/npm/vega-lite@4"></script>
<script src="https://cdn.jsdelivr.net/npm/vega-embed@6"></script>
<script type="text/javascript">
function darkCharts(state) {
    const figId = "fig-mobile-visits";
    if ( state ) {
        var viz = document.getElementById(figId);
        while (viz.firstChild) { viz.firstChild.remove(); }
        vegaEmbed(`#${figId}`, "{% link /assets/vega/ona18-dark.json %}", {"renderer": "svg", "actions": false});
    } else {
        var viz = document.getElementById(figId);
        while (viz.firstChild) { viz.firstChild.remove(); }
        vegaEmbed(`#${figId}`, "{% link /assets/vega/ona18-light.json %}", {"renderer": "svg", "actions": false});
    }
}
localStorage.dark == "true" ? darkCharts(true) : darkCharts(false);
</script>


