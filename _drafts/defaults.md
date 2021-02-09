---
title:  Defaults
blurb:  Ripping out the IV drip of the news feed
tags:   [news, media, technology]
---

It's a bit of a mystery how we came to use the word *default* to mean <span class='small-caps'>the standard fall-back option in the absence of an explicitly declared choice</span>. But one can guess: its Latin roots, *de* 'away' + *fallo* 'deceive, cheat,
escape notice of', point their spindly fingers at a slippery skiver. With its
older senses, we speak of failure, of negligence, in meeting any of a variety
of obligations: failing to make payments, we default on a loan; failing to
show up, we default a game, or a court summons.

When we speak of defaults today—factory defaults, default search engines,
default home-pages, we speak first and foremost of their pre-set nature. Yet,
tucked away neatly behind each app's hamburger menus are screens full of
configurable options that go untouched for the most part, out of sight and out
of mind. And who today has the time or the energy to fiddle with all those
thousand and one knobs? So it is here finally, in these deserted digital
basements, that our unspoken default has come to reside: our unwitting
abdication of our ability—and indeed, responsibility—as human operators to
specify our own instructions for the machine.

The unflattering denotation of the default was not lost on early designers of
computer systems. Bruce Tognazzini, setting down design guidelines for the
Apple *IIe*, for instance, opens the section on 'Defaults' thus:

> {% marginnote %}{% cite apple-iie-design -L page -l 37 %}{% endmarginnote %} Please do not ever use the
> word default in a program designed for humans. Default is something the
> mortgage went into right before the evil banker stole the Widow Parson's
> house. There is an exhaustive list of substitutes (previous, automatic,
> standard, etc.) in the Appendix to How to Write a Manual.
>
> Defaults should be declared, not assumed. Undeclared (not displayed) defaults
> such as pressing `RETURN` for Yes (or for No?) will cause confusion and
> anger.

Bruce is probably out there somewhere today, spinning with confusion and
anger.

The power of the default has not been lost on Silicon Valley types in their
clamouring for market share—nor on government officials looking to engineer
social behaviour. Not least because we humans can be consistently relied upon
to be very lazy indeed: back in the days of the First Browser War, Microsoft
had infamously managed to propel Internet Explorer to market dominance by
bundling it into their popular Windows operating system. That made <span
class='small-caps'>IE</span> the default browser, the browser of lazy consumer
(non-)choice, and in the process effectively killed off Netscape, the most
popular browser at the time. All told, a stellar strategy for the lumbering
tech giant attempting to break into a new market; why bother doing all the
hard work of developing a better product {% hidden_sidenote %}when you could
just tack it on to your already-popular platform<hidden_sidenote><img src="{%
link assets/images/flex_tape.gif %}">{% endhidden_sidenote %}, and make all
your pre-existing users adopt it?

This story of the demise of Netscape came back to me again and again as I was
looking into referral sources to news websites. Referral traffic had been
something of an evergreen subject while I was a data scientist at
Chartbeat{% sidenote %}
    What is a "Chartbeat"? Think of a major online news source. Any one would
    do. Chances are, on that website that you just thought of, Chartbeat is
    tracking your every move, on every visit. "Chartbeat is the leading
    provider of real-time analytics to major online publishers around the
    world, such as The New York Times, Le Monde, The Telegraph, et al. 
    More at [chartbeat.com](chartbeat.com).
{% endsidenote %}, a quirky little internet startup whose lore is
inextricably tied to the story of the online news media.

It goes something like this: the year was 2009. The hulking mass of the mass
media had struck the immovable iceberg of social media, and the ship was
sinking, fast. Publishers were desperately bailing water. For as long as
almost anyone could remember, news operations had been almost entirely funded
by deep-pocketed advertisers. News proprietors were historically flush with
cash, for no other could provide such untrammelled access to consumer
attention. Circulation had made the fortunes of the press barons back in the
day. Reach made the fortunes of the media moguls when broadcasting came onto
the post-war scene. But it is <span class='small-caps'>DAU</span>s{% sidenote %}**D**aily **A**ctive
**U**sers{% endsidenote %} that now make the fortunes of Zuckerberg, Pichai,
and Dorsey, leaving news sites, these former titans of advertising, to tussle
over the dwindling scraps of online traffic referred to them from the Internet
giants. So it became part of my job at Chartbeat to wrangle this cold, rubbery
spaghetti of referral data into a comprehensible tally of how much traffic
each website or app drove to publishers.

Unsurprisingly, the top 2 spots in the referral rankings invariably went to
the duopoly, Google and Facebook, driving an order of magnitude more traffic
than any of the other individual referral sources. But of ongoing (and
sometimes disproportionate) interest to publishers were also the referrers a
little further down the list. If there was an up and coming referral source,
they'd want to be the first to get a jump on. One such referrer was Google
Chrome's _Articles for You_{% sidenote %}[At Chartbeat, we'd dubbed it
Google Chrome Suggestions.][afy]{% endsidenote %} on
the browser's new tab page. The amount of monthly traffic it was referring had
grown 21x over the course of just a year, and had even surpassed even that of
Twitter, then the third largest referrer after <span class='small-caps'>FB</span> and <span class='small-caps'>GOOG</span>. (You can see it just barely peeking over the <span class='small-caps'>TWTR</span> horizon in '18 in the chart below.)

<figure>
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
got me thinking back to Microsoft's infamous Netscape murder. 

A little ways down the referrers list, too, were other signs of default:
[upday news for Samsung][upday] came pre-installed on Samsung phones; Pocket,
a link-saving app, [started to surface link recommendations on each new tab
Firefox users opened][pocket]—much like *Articles for You*. But these
referrers never broke the top 10—Samsung and Mozilla never held the manner of
market monopoly Google does today.

Around this time, Google also launched their [feed for the Google app (which
also appears—by default—on the left-of-home panel on
Android)][google-app-feed]. This was later to be rebranded as [Google
Discover][google-discover], and subsequently shown, again by default, on
mobile `google.com` itself. Yet another default feed, served up this time on
Google's flagship product. Frustratingly, for people like me looking at
referral spaghetti, there was no way to tell whether that uptick in Google
traffic was coming from people actively searching out information on Google
Search, or from those mindlessly scrolling through that bottomless buffet of
recommended content.

<figure class="image full-width">
<table>
    <tr>
        <td><img class="grid-img" src="{{ site.baseurl }}/assets/images/chrome-afy.png"></td>
        <td><img class="grid-img" src="{{ site.baseurl }}/assets/images/google-discover-app.png"></td>
        <td><img class="grid-img" src="{{ site.baseurl }}/assets/images/google-discover-search.png"></td>
    </tr>
    <tr style="line-height: 16px;">
        <td><span class="caption">Google Chrome's <i>Articles for you</i></span></td>
        <td><span class="caption">Google Discover, in the Google App</span></td>
        <td><span class="caption">Google Discover, on <code>google.com</code></span></td>
    </tr>
</table>
</figure>

I already hear you protesting at this *biased* portrayal: Su, what do you have
against feeds? Feeds are great! I want to be an empowered and informed member
of society. News is by definition that which I don't know about but should be
apprised of, and feeds, like how Google has so cleverly put it, [feed my need
to know][google-app-feed] with the lowest level of requisite effort on my
part. If I had to go out there and search out the information I needed to know
all the time, I wouldn't have the time for doing anything else—pragmatism, not
idealism!

Well. Humour me for a minute, and think back to the last time you (doom)scrolled through a news feed{% sidenote %}
    Just the word [_feed_][feed] itself—like the word _default_—gives me the
    heebie-jeebies. What is it, to be a consumer of a feed? Of animal feed? Of
    prolefeed? To be a pig, in a cage, on antibiotics? [{% cite fitter-happier
    %}].
{% endsidenote %}; Facebook, Twitter, whichever, doesn't matter. Of the news
items you came across, how many did you simply scan over the headlines and
preview image or autoplay video of? How many did you actually click through to
peruse? Of those you perused, how many would you say had a direct impact on
your life, that you've done something differently on account of having read or
watched it? Or was it just another piece of trivia you instinctively
retweeted, and then brought up as a bit of idle chit-chat as you ran into
other people that day? [As <span class='small-caps'>NPR</span> so cheekily demonstrated, who even
reads anymore?][npr-read] As we collect articles and share links like hermit
crabs scrabbling to encrust the shells of our online personae with the shiny,
discarded excreta of our mediated reality, what becomes of that reality known
as Real Life?

What news, as we commonly encounter it today, does one actually _need_ to
know? For Neil Postman, the answer to this question was, not very much. Not
because we'd survive living under a rock, but because the news—that
decontextualised, objectivised view from nowhere, blasting 24/7 through the
media firehose—does not contain information that most of us can realistically
*act* on. In his 1985 book _Amusing Ourselves to Death_{% sidenote cite-aotd
%}{% cite amusing-ourselves-to-death %}{% endsidenote %}, written in the
golden age of <span class='small-caps'>MTV</span>, Postman coined the term _information-action ratio_
as a précis for the phenomenon. Others have compared news consumption to an
[information diet][info-diet], which, like the stuff that we eat, has
increasingly come to be made up of junk: high in calories, low in actual
nutrition. This food metaphor is one I've witnessed being employed over and
over unironically in the industry—references would be made to the production
of "snackable content", little packets of bite-sized content that the "busy
professional" would consume on the go as they went about their day to keep
boredom and FOMO at bay.{% sidenote %}Not that this is a perspective uniformly
shared by all publishers. [A.G. Sulzberger, publisher of the <span class='small-caps'>NYT</span>,
complained in an interview with Time magazine][time-ag], "I actually hate the
word content. It’s a word for junk … the junk you shovel into Facebook. What
we do is journalism." But even with clean, honest journalism, a small voice
within me can't help but ask—how many times have we delved into stellar,
hard-hitting investigative reporting, say, the Snowden leaks, the Cambridge
Analytica fiasco, or the release of the Panama papers, only to emerge feeling
concerned, but ultimately powerless?{% endsidenote %}

How did we get this way, drowning in information and still so lost at sea?
Postman drew on Marshall McLuhan's "medium is the message" maxim in uncovering
<span class='small-caps'>TV</span> as a medium that inherently short-circuited any attempt at
measured discourse, tugging on the false visual intimacy created between rapt
viewer and dazzling <span class='small-caps'>TV</span> personality to relay its visceral messages.
But it is certainly not the case today that all feeds simply beam autoplay
videos into our eyeballs. Content™ comes at us in galleries, videos, and
listicles alike. The medium being the message, in any case, doesn't explain
_why_ there's so much chum in those Outbrain buckets.

To do that, we need to (as fictional Deep Throat said) follow the money. For
decades, mass media companies had enjoyed the undivided attention of the
popular mind. The larger the circulation of a paper, the more a print
publication was able to charge advertisers to take out a spot in its sheets.
Circulation was king. The lifestyle section and the Sunday paper were just two
of the "innovations" that publications came up with in their drive to reach
ever widening audiences and demographics—to women, especially, who were known
as the ones to actually go out and spend money on the wares the advertisers
were hawking. Similarly, when the hey-day of <span class='small-caps'>TV</span> rolled around, the
wider the reach of a network, the higher its Nielsen ratings, and the more the
broadcaster was able to charge for a spot of advertising.

All this, obviously, changed with the internet. At first, the internet was
just this dinky little hippie space that everyone would just put their
articles up on for free, a [technological curiosity obsessed over by the <span class='small-caps'>IT</span> nerds lurking in the basement][nyt-twtr]. But it seemed one day we were
inking our fingers and smudging our cheeks with powdery grey transfers from
newsprint, and the very next, our eyes were glued to our smartphones,
glassy-eyed captives in the walled gardens of the Books of Faces. And so it
came to pass, that where the eyeballs went, the ad dollars soon followed.

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
    [{% cite television-delivers-people %}] <span class='small-caps'>AFAIK</span>,
    this short video entitled _Television delivers people_ is the first time
    that the phrase, "you are the product" gets applied to a form of media.
    Although the video refers explicitly to <span class='small-caps'>TV</span>, the same analysis can
    certainly apply to any form of media that is (nearly) free to
    consume—including the newspaper.
{% endsidenote %} to the advertiser. Not only were you
already the product, the mass media's claims to "truth" and
"objectivity"{% sidenote %}
    I have a whole separate rant on "objectivity", "neutrality",
    and "default positions", but that will have to wait for another time.
{% endsidenote %} were instituted not so much on the grounds of some noble
sense of journalistic integrity, but more so out of fear of upsetting the
paying advertiser{% sidenote %}{% cite media-future-past %}{% endsidenote %},
or losing access to valuable high-level sources{% sidenote %}{% cite manufacturing-consent -L chapter -l 1 %}{% endsidenote %}. Its imperatives
for scale, the need to sell more papers, or to reach a wider audience, did not
derive primarily from the need for direct reader revenue. Rather, it was to
the much more lucrative end of cultivating a captive audience to sell on to
the advertiser that the mass media sought out the masses. As soon as a medium
started to derive most of its revenue from the advertiser{% sidenote ad-rev %}
    As one point of reference: in 1966, the <span class='small-caps'>NYT</span> was [N° 404 on the
    Fortune 500][nyt-fortune-500], that had a "350-man department that
    [brought] in more than $100 million a year by selling ads," and moreover,
    "the revenue derived from advertising [was] three times what the paper
    earn[ed] from its circulation sale and its other business ventures
    combined." [{% cite kingdom-and-power -L chapter -l 4 %}]    
{% endsidenote %} and not from you, the reader, it had already been de-fanged
as a speaker of the people's truth.

The ways in which we apprehend the world today, with our smartphones,
algorithmic feeds and Twitter diplomacy, may seem completely alien to an
observer living just a decade or two ago, but it is the same invisible hand of
advertising which continues to direct which pieces of information we pay
attention to—and which inconvenient truths get magically hand-waved into
obscurity. Though it may be an algorithm now curating your personalised Google
feed{% sidenote %}
    It's pretty questionable, however, to what extent the content
    that shows up on such feeds is truly "personalised". I recently heard a
    complaint (from someone with a Ph.D. in physics) about the recommended
    links showing up on her Google feed being mostly celebrity gossip, whereas
    those showing up on her husband's feed were things like, "recent advances
    in physics!" In this connexion, the "personalised feed" comes across as
    little more than the algorithmic identification and perpetuation of
    stereotypes (that we formerly tended to associate with the mass media),
    selectively shown and now with the middle(hu)man simply cut out. I 
    suggested that she could probably turn the feed off if she didn't like the
    recommendations, but she demurred, saying that she wouldn't be otherwise
    exposed to "news from outside her bubble" without having to lift a finger. 
    <br><br>
    Much more about algorithmic bias and how it can lead to the further
    entrenchment of our own societal biases in
    _Weapons of Math Destruction_ [{% cite wmd %}].
{% endsidenote %} by churning through terabytes upon terabytes of clickstream
data, where before it was experienced editors handpicking stories deserving of
a spot on Page 1, the salaries paid out to the tech employees building the
feeds, just the same as to the editors baptising stories as "newsworthy",
still ultimately issue from the deep pockets of corporate marketing
departments. The default feed has vied to replace the frontpage, with the
structural incentive to mine human attention more naked than ever before.

Again, I sense you shifting in your seat—well, _so what_ if I actually am the
product? They're corporations, they exist to make money, and besides, it's not
like I'm not getting something out of this exchange—my attention, for their
information.

To assume that such an exchange is fair is dangerous: that some expert out
there, human or machine, can automatically know—far removed from your
context—what you, a living, breathing person with your own unique set of
motivations and experiences, needs to engage with in going about your life.{%
sidenote %}
    I bring up the uniqueness of the human experience here not as an assertion
    of some individual "unique snowflake" status. In fact, I've found that
    people proclaiming such screeds also readily embrace representations of
    people as mere grab-bags of predetermined "identities", ultimately
    producing rather the opposite effect of turning themselves into a
    statistic, an individual instantiation of some atomised agent, acting
    alone in some cold, absolute, and unchanging world.
{% endsidenote %} It is to acquiesce to another's vision for our own lives, to
deny our humanity, our agency, our inherent ability to build, to destroy,
and to *affect* our collective social reality with our words and actions.

For this is exactly where the trap of the default lies: in failing to specify
our own instructions for the system—for tools we are supposed to be using to
further our own ends—we do not simply fall prey to the control of some
magical, omniscient machine. Such a statement is an absurdity; the machine
didn't build itself, people in search of profits built the machine. What we in
fact fall prey to, are the machinations of the wizards behind the curtains:
the editors and producers, then latterly the tech executives, product
managers, and engineers dictating the default states of the front pages and
apps and feeds that have come to occupy every waking moment of our lives. To
paraphrase Tognazzini, the default is what we've accepted right before the
technocrats stole our powers to self-determination.

Why on earth have we come to live with such a state of things? I think it has
something to do with the implacable "more is better" ideology of our times:
more growth *must* lead to higher standards of living; more healthcare *must*
lead to a healthier populace; more information *must* lead to better decision
making. Quantity trumps quality any day. All noise must of course be signal,
utility be damned. All the information in the world, available at our
fingertips in real-time—and who cares if it's delivered in fragmented factoids
stripped of personal context or human meaning? Breaking News: more sanctions
against nuclear-aspirant Iran—who cares if it was a CIA-backed coup that
overthrew their inchoate democracy and brought about the rise of the
ultra-religious republic?{% sidenote %}{% cite all-the-shahs-men %}{% endsidenote %} Now This: another
third-world country facing an intractable debt-crisis—who cares if the foreign
aid so "generously" disbursed upon the global south has tended to entrench
them further into debt bondage, rather than lifting them out of poverty as the
aid agencies claim?{% sidenote %}{% cite debt-boomerang %}{% endsidenote %} All this *information*, so
readily accessible to us in neat, bite-sized packets, optimised for the
maximal delivery of commercial propaganda, presents to us but an aesthetic
surface. It is a hard, smooth, shell of constructed narratives against which
our attention simply glances off, finding no purchase or in-roads to the messy
reality seething underneath.

<!-- global/local

- the growth imperative of wall-street/vcs/modern economics incentivises
  "scale" and global markets
- empathy doesn't scale
- we're encouraged to keep up with such news as "responsible global citizens"
  (and because localised events quickly turn into global ones that can affect
  us: financial crises, pandemics, etc.)
- though the informational reach of our sights is global, the direct reach of
  our civic and political rights—i.e. things that we can affect—conferred by
  citizenship is necessarily local
- not so for MNCs, inter-governmental orgs, and the people that run them
- we end up paying proportionally more attention to events we have no control
  over, seeing them through the lens of a self-selecting media priesthood, and
  proportionally less to happenings and opportunities closer at hand,
  which get dismissed as parochial, trite, insular

-->

The most egregious example of the harms of relying on the attention merchants
for an accurate representation of reality comes in the form of our gravest
challenge today: the intersecting climate and ecological crises that threaten
all life on Earth. This is the perfect storm of mis-aligned 21st century
incentives: a planetary-scale disaster unfolding in slow motion, with
little of the quick or easy visual- or sound-bites so suited our
attention-deficient consciousnesses. As Chris Hayes so infamously claimed,
"climate change is a ratings killer"—a strict no-no for any business
predicated on undivided attention for the delivery of advertising. This is an
instinct that has extended even to broadcasters with a scientific background.
Sir David Attenborough, perhaps the most celebrated natural historian on
television of our times, was saying just in 2018 that reminding viewers of the
extinction crisis could become a "[real turn-off][climate-turn-off]".
Thankfully, he has recently been [somewhat less inclined to continue tiptoeing
around the problem][attenborough-tiptoe].

The more we lean into the infotainment that has come to characterise our media
consumption in the advertising age, the less we understand _how_ we got to
that shit-show of a year called 2020, and the more we despair of being able to
_do_ anything about any of it. Global zoonotic pandemics, yawning social
inequalities, widening fissures in bodies politic, unprecedented wildfires
from Australia to California, from the Amazon to the Arctic, unprecedented
numbers of named storms in the Atlantic, unprecedented environmental
destruction and extinction on all fronts. As St. Thunberg puts it, our house
is on fire—yet all we seem to be able to do is to remain at the table
muttering helplessly to ourselves: "This is fine." When the 2020 wildfire
season turned San Francisco skies a bloody orange, drone footage of the
apocalyptic cityscapes went viral, Bladerunner soundtrack setting the scene
for our quotidian reality. We play make believe, pretending to be protagonists
living through some grand disaster movie, larger-than-life media spectacles
taking up so much of the air in our social exchanges as to choke out the
difficult, but important conversations around what exactly it is about the way
we live and the stories we tell ourselves that's brought us here.

<!-- TK: links to compassion fatigue?
_zettel/202101220222-compassion-fatigue.md -->

<p class="section-break">&</p>

Where do we go from here? Ad-revenue, for better or for worse, is now out of
the question for media outlets fighting tooth and nail now to survive. The
instinct for many has been to put up paywalls, the most obvious way of
transitioning to a reader-supported revenue model. Yet, restricting access to
news and information surely defeats the purpose of public-service journalism.
When elite publications put up walls restricting access to information, they
serve only to further entrench the informational inequalities that plague our
society{% sidenote %}So much for the liberal bias of the mainstream media!{%
endsidenote %} As Nathan Robinson outlined in his excellent article, "Truth is
Paywalled but the Lies are Free"{% sidenote %}{% cite truth-is-paywalled-but-lies-are-free %}{% endsidenote %}, it's little wonder
that the likes of Breitbart has had so much success spewing their lies on
Facebook. When responsible publications deem their reporting to be privileged
information for only those who can pay, truth and integrity are readily
subverted by those with every incentive to spread their lies far and wide by
pumping out freely-accessible viral content.

Incisive though his critique of the paywall was, I find that I must
respectfully disagree with his prescriptions against this malaise. Robinson
proposes that governments draw on our taxes in order to fund
publications—academic and media alike—allotting payments according to how
often each piece of content is accessed. For academic publishing at least,
such a model could be a no-brainer; why do the likes of Elsevier deserve 30%
profit margins{% sidenote %}[In 2019, <span class='small-caps'>RELX</span>, Elsevier's parent company, reported a profit margin of 31.6% (p. 2).][relx]{%
endsidenote %} for simply throwing academic research—often *already* funded by
our tax dollars—behind a private paywall on the internet? I wholeheartedly
agree, too, that there is already more than enough room in what we pay in
taxes to be able to fund such a programme (*ahem*, military budgets).

On the news media side of things, however, the compensation for engagement
payment model continues to feed into the exact same attention economy that we
lament today—and again, engagement is a very different beast than
understanding or action. The Outbrains and Taboolas of the world would come to
be funded by our tax dollars, instead of just our eyeballs. This is a similar
experiment to the one being carried out by [Scroll]—which while I do support,
I do not believe will ultimately help us rebalance the information-action
ratio.

A tax-funded media also throws another spanner into the works: the state would
gain more direct leverage over reportage and programming. Even though the
funds come nominally from the taxpayer, they are still funnelled through the
state apparatus, which ultimately has discretion over the allocation and
distribution of such taxes. Depending on the prevailing political culture,
this can mean anything from [complete state control over the media][sg-media],
[the promulgation of state propaganda and censorship][voa-trump],
[neo-colonial whitewashing][moral-maze], to [fearless public-interest
reporting that are nevertheless subject to other arms of state control][abc];
possibly all occurring within the same broadcaster. The point here is not that
public broadcasters should be abolished—where would we be without <span class='small-caps'>BBC</span>'s _Doctor Who_, or <span class='small-caps'>CBC</span>'s _Ideas_, or, heck, Channel 4's _Black
Mirror_? But the state ought not be allowed absolute monopoly
over a nation's media ecosystem either—or its public discourse by extension.

<!-- bbc christmas tree "refer upstairs" mi5 cf q1 series k kris kringle 23:00
-->

Instead, with the death of ad-revenue, I think we should seize the moment to
clean house. We need to get rid of the simultaneous offspring and enabler of
the advertising model: the attention economy. It is high time to say goodbye
to those chain outlets calling themselves local papers, that still think that
republishing wire stories constitutes sufficient "journalism" for the
communities they should be serving, to those purveyors of click-bait
cholesterol that have clogged up our informational arteries.

What I'm truly excited about today, is open, reader-supported, participatory
journalism. Journalism that finally re-aligns the financial incentives and
power structures in favour of those that it purports today to serve. As some
have noted, the best part about subscribing to the New York Times is being
able to call up and threaten to cancel.{% sidenote %}{% cite citation-needed %}{% endsidenote %} As the
ad-supported model becomes increasingly insupportable, publishers would do
well to now recognise the interests of the people, instead of the will of the
corporations—who have unceremoniously abandoned them now that the tech giants
can provide them with direct access to consumers, and at greater scale than
the news media could scrape together.

The Anglophone publication that has done best in this regard, in my opinion,
is The Guardian. It has purposefully rejected the use of a paywall{% sidenote
%}though it remains to be seen how the [data-wall] skirmishes in the <span class='small-caps'>EU</span>/<span class='small-caps'>CA</span> will work out{% endsidenote %}, in favour of keeping its
journalism free and open. Though it still serves up ads to fund part of this
open access, 28% of its funding now comes via subscriptions and donations
from its members and readers.{% sidenote gmg-2018 %}
    The latest figures I could find on this subject were from
    [2018-2019][gmg-2018].
{% endsidenote %} Those who pay get ad-free access to its materials (unlike
some other outlets who shall remain unnamed). Its reportage speaks incisively
to the zeitgeist, investigating the intersecting environmental, social, and
political crisis of our day. Pleas for funding are prominent, consistent, and
clearly demonstrate their sustained reporting on the issues that matter—as
well as how important their readers' support is to them—all at the ends of
articles, where a more ad-driven publication would have been tempted to add in
an infinite scroll of other articles to milk your attention for all its worth.
Reporting aside, they are also demonstrably rising to the moment, practising
what they preach in their reporting by [auditing their operations for its
environmental impact][audit-env-guardian], [cutting off fossil fuel
advertising in their pages][fossil-ads-guardian]. Few other outlets walk the
talk the way the Guardian does. I think it is for this very reason that this
forward-thinking publication has weathered the upheavals of the media industry
remarkably well, reporting that it has recently broken even in its
finances<sup>[✐](#gmg-2018)</sup>, even as its exsanguinated competitors are
merging or shuttering all around it.

Above and beyond the re-alignment of financial incentives with
reader-supported journalism, I am excited about the rise of participatory
journalism, flipping the script on the already famous and powerful as the
active news makers and the masses as mere passive consumers of its
by-products. To truly opt out of the default, we need to reject the prevailing
view that only the already powerful are newsworthy, that only the already
famous wield the power to effect change. We need to halt that magical thinking
that help for us will conveniently fall out of the clear sky, that top-down
directives are then only way to get things done, that only mass society can be
the end-game of all civilised societies. To do this, we need to recognise our
neighbours—ordinary citizens—as the true heroes of our time, to re-affirm
ourselves as the primary co-constructors of our social reality.

Closer to home for me, this means cheering on small but enormously
consequential voices such as those of Kirsten Han on her *We, The Citizens*
newsletter, or the multi-national and multi-lingual efforts of New Naratif in
the South-east Asia region. Equally exciting are the citizens elsewhere in
Asia, coming together to resist the neo-liberal international order in Taiwan
(New Bloom, sprouting from the seeds of the Sunflower movement), or banding
together in diaspora to resist the hegemonic repression of the Chinese state
(Lausan, Hong Kong).

How is this participatory journalism different from just posting on social
media? The social media networks of our day have found their winning formula
in exploiting the "network effects" that venture capitalists love so much. It
is exactly this scale that enables their out-sized advertising revenues, which
the Silicon Valley types are unlikely to give up any time soon.{% sidenote %}
    Jack Dorsey floated the idea of a [subscription
    Twitter][twtr-subs] a while back, but it's a little unclear if there would
    be an appetite for such a paid service, especially as younger, hipper, and
    free platforms are mushrooming up all the time to upstage the older ones.
{% endsidenote %} Popular social platforms are likely to remain mired in the
exact ad-supported infotainment paradigm we need to extricate ourselves from.

This means that, for the foreseeable future, the dynamics of these platforms
would continue to favour the sorts of attention-seeking Content™ we so
urgently need to turn away from. Even though any media operation will, like it
or not, need to rely upon at least some manner of social network, online or
off, in order to recruit contributors and audiences, Content™ created solely
for the purposes of going viral is of a completely different nature than
participatory reporting. To understand the former, one need only think of what
BuzzFeed, NowThis, or social media influencers continually churn out:
clickbait, infotainment, and fuel for conspicuous consumption.

Participatory journalism, on the other hand, is more interested in delving
deep into everyday concerns of everyday people, concerns so repressed and
glossed over by dominant corporate media narratives that they sour and ferment
in people's hearts, building up unreleased pressure and resentment over time.
Concerns that, again and again, have proven to be dangerous and explosive when
they have gone un-addressed. It is, I think, not always enough to conduct
citizen journalism in the form of verbatim recordings of events <span class='small-caps'>IRL</span>,
even though it has undoubtedly produced some admirable results. Human events
attain their significance only in context, and we are, for better or for
worse, creatures of narrative. To piece together a comprehensive and
comprehensible picture requires time, effort, access, and in some cases,
experience, which not everyone possesses equally. It is only when
journalists—who have the experience—work with the people—doing the living and
the celebrating and the suffering—that we can truly address the informational
inequalities that dog us and our communities.

<!-- To put it bluntly: I don't care about your posts about avocado toast. Nothing
against avocado toast—I love a good one myself. The posts, though: we have too
many posts about avocado toast taking up our attention and airspace, choking
out the important issues we really need to be advocating against: our
profligate consumption, our social injustices, all of the negative
"externalities" we wreck upon our neighbours and our planet, hidden away by
the distance and length of the global supply chain. Because avocado toast is
all we're allowed to talk about, because it's not going to ruffle any
feathers, because we're addicted to the dopamine hits from the likes and
re-tweets and the admiring jealousy in the replies, and so we do it for the
gram. Because avocado toast is safe for our reputations, safe for the
capitalist status quo. Safe, for keeping us despairing, blind to our
collective power if we could just be bothered, if we could just hear the cries
for help from our neighbours in need, drowned out by the over-amplified
surface hostilities. I want to hear all those questioning thoughts, those
moments of non-comprehension that flashed across your mind for just a brief
second before you tucked it away again securely in those dusty recesses of
your mind reserved for sharp objects. -->

<!-- I'm excited about reclaiming democracy from the technocracy, about reclaiming
our very own pulse. I'm excited about the long tail, about the people taking
our communities seriously enough to report on our everyday lives as bona fide
news, about those busy making audiences the news makers and the news makers
the audiences, for whom Chartbeat and Google Analytics and Omniture are means
to an end, not the end itself. Because it's too socially expensive, because
it's already too late an hour, because it is profligate madness to continue
pouring our attention down the drain of monetised attention.
 -->
[abc]: https://www.abc.net.au/news/2019-06-05/abc-raided-by-australian-federal-police-afghan-files-stories/11181162
[afy]: https://www.niemanlab.org/2018/03/this-is-the-next-major-traffic-driver-for-publishers-chromes-mobile-article-recommendations-up-2100-percent-in-one-year/
[attenborough-tiptoe]: https://www.theguardian.com/environment/2020/sep/18/dont-look-away-now-are-viewers-finally-ready-for-the-truth-about-nature-aoe
[audit-env-guardian]: https://www.theguardian.com/environment/2020/oct/05/guardian-net-zero-emissions-carbon-neutral-2030
[climate-presentation]: https://grist.org/article/is-climate-change-a-ratings-killer-or-is-something-wrong-with-for-profit-media/
[climate-rebuild]: https://www.theguardian.com/environment/2019/apr/22/why-is-the-us-news-media-so-bad-at-covering-climate-change
[climate-turn-off]: https://www.theguardian.com/environment/2018/nov/04/attenborough-dynasties-ecological-campaign
[data-wall]: https://www.niemanlab.org/2019/12/first-party-data-becomes-medias-most-important-currency/
[feed]: {% link _zettel/202102040106-feed.md %}
[flex-tape]: {% link assets/images/flex_tape.gif %}
[fossil-ads-guardian]: https://www.theguardian.com/media/2020/jan/29/guardian-to-ban-advertising-from-fossil-fuel-firms-climate-crisis
[echo-chambers]: https://www.vice.com/en/article/d3xamx/journalists-and-trump-voters-live-in-separate-online-bubbles-mit-analysis-shows
[emotion-viral]: https://hbr.org/2016/05/research-the-link-between-feeling-in-control-and-viral-content
[google-app-feed]: https://www.blog.google/products/search/feed-your-need-know/
[google-discover]: https://blog.google/products/search/introducing-google-discover/
[gmg-2018]: https://www.theguardian.com/media/2019/aug/07/guardian-broke-even-last-year-parent-company-confirms
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
[relx]: https://www.relx.com/~/media/Files/R/RELX-Group/documents/reports/annual-reports/2019-annual-report.pdf
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
        vegaEmbed(`#${figId}`, "{% link assets/vega/ona18-dark.json %}", {"renderer": "svg", "actions": false});
    } else {
        var viz = document.getElementById(figId);
        while (viz.firstChild) { viz.firstChild.remove(); }
        vegaEmbed(`#${figId}`, "{% link assets/vega/ona18-light.json %}", {"renderer": "svg", "actions": false});
    }
}
</script>
