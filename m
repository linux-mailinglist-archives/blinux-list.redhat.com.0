Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BF91D597918
	for <lists+blinux-list@lfdr.de>; Wed, 17 Aug 2022 23:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660772942;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uleTq3D9bNvAe67SmviihPxwXRRNIJ2TtSjk9cyEj+M=;
	b=Ix3JmGmBrf+w0aDltk0Zz0Uka3Rl9tUvXEj4iWYbeapWXrLs0QqQrrCuNad6ZsjrvdHmzE
	vRBt1LzZ3j+k79QGlqXaNBVQZksi8kh5vEBK4s4xEV0bHLzMQoBUd2wDy+v7N41r6te5mh
	i1WeWV4N/fRgZN/2UYKbmCaaJPlAXOY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-275-UgL-x3AROdCQxm6go4IXMg-1; Wed, 17 Aug 2022 17:48:59 -0400
X-MC-Unique: UgL-x3AROdCQxm6go4IXMg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7FCE83815D28;
	Wed, 17 Aug 2022 21:48:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B03564010D2A;
	Wed, 17 Aug 2022 21:48:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 41256194E00F;
	Wed, 17 Aug 2022 21:48:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 17 Aug 2022 17:48:45 -0400 (EDT)
To: K0LNY_Glenn <glenn@ervin.email>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <003a01d8b280$1a0da710$80ffa8c0@Win7VM>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <Pine.LNX.4.64.2208131909070.1258388@server2.shellworld.net>
 <033301d8af87$4227f3f0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208140031380.1264046@server2.shellworld.net>
 <Pine.LNX.4.64.2208160617250.1327201@server2.shellworld.net>
 <049901d8b17d$8869e7e0$80ffa8c0@Win7VM>
 <e3c7521b-cd73-38d7-0e9a-0e7a956e0f47@wisc.edu>
 <Pine.LNX.4.64.2208170740540.1352313@server2.shellworld.net>
 <Pine.LNX.4.64.2208171215290.1353159@server2.shellworld.net>
 <003101d8b255$9973b150$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208171234210.1354666@server2.shellworld.net>
 <003c01d8b258$0bc5acc0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208171501270.1356841@server2.shellworld.net>
 <002201d8b278$f82e4070$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208171638110.1359061@server2.she
 llworld.net> <002f01d8b27f$0b75a640$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208171721080.1359800@server2.sh ellworld.net >
 <003a01d8b280$1a0da710$80ffa8c0@Win7VM>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.1742.1660772932.10505.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Cc: Milan Zamazal <pdm@zamazal.org>, "John G. Heim" <jheim@wisc.edu>,
 speakup@linux-speakup.org, Butch Bussen <butchb@shellworld.net>,
 Blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"

Glen,
why would I bother?
your own words as a seasoned employee speak for themselves.
Nebraska is an NFB philosophy state.
Were you  here in Ontario, that  could be a human rights violation, since=
=20
here the code establishes that claiming everyone sharing a label=20
accommodates the same is a violation of the individual's human rights.
No wonder the state of new York supported my professional move, if rehab=20
systems like yours are Nfb puppets.
The commission is not the individual rehab staffer, who  states he makes=20
decisions using a NFB dictionary.



On Wed, 17 Aug 2022, K0LNY_Glenn wrote:

> Karen,
> Start out at the web site for
> Nebraska Commission for the Blind.
> There are links to communicate with all the board members, who are appoin=
ted
> by the governor.
> Glenn
> ----- Original Message -----
> From: "Karen Lewellen" <klewellen@shellworld.net>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Butch Bussen" <butchb@shellworld.net>; "John G. Heim" <jheim@wisc.ed=
u>;
> <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
> <Blinux-list@redhat.com>
> Sent: Wednesday, August 17, 2022 4:24 PM
> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>
>
> Do what?
> where I am it is actually a violation of vendor contract to tell someone
> they must use a certain tool.
> give them the chance in an office to try several things yes.
> Force jaws down their throat like rehab does no.
> I said I wished I knew someone in Nebraska media not that I did...althoug=
h
> perhaps.
>
>
>
> On Wed, 17 Aug 2022, K0LNY_Glenn wrote:
>
>> Please do.
>>
>> ----- Original Message -----
>> From: "Karen Lewellen" <klewellen@shellworld.net>
>> To: "K0LNY_Glenn" <glenn@ervin.email>
>> Cc: "Butch Bussen" <butchb@shellworld.net>; "John G. Heim"
>> <jheim@wisc.edu>;
>> <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>> <Blinux-list@redhat.com>
>> Sent: Wednesday, August 17, 2022 3:46 PM
>> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>
>>
>> Glen,
>> you are missing the point.
>> A commission board, at least if constructed  with integrity serves as a
>> watchdog for your organization's activities.
>> Making sure that you act, objectively, and above influence with governme=
nt
>> funding.
>> That role differs from a public servant, like yourself.
>> In fact that the commission  has members from both organizations is
>> exactly why you should not be a member.
>> if, as you said, the state has an Nfb philosophy, I wonder  just how abo=
ve
>> influence  that commission actually is, lip service attendance does not
>> translate  to the statement you freely made.
>> Honestly, i wish I knew someone with Nebraska public radio.  there is a
>> investigative, data journalism piece right here, exploring how objective
>> your  office is in fact.
>>
>>
>>
>> On Wed, 17 Aug 2022, K0LNY_Glenn wrote:
>>
>>> Karen,
>>> In Nebraska, the commission board attends both consumer groups' state
>>> conventions.
>>> So there is total transparency within the consumer groups.
>>> The agency sends clients to both conventions for educational purposes.
>>> Some can go to either national convention on the state.
>>> Glenn
>>> ----- Original Message -----
>>> From: "Karen Lewellen" <klewellen@shellworld.net>
>>> To: "K0LNY_Glenn" <glenn@ervin.email>
>>> Cc: "Butch Bussen" <butchb@shellworld.net>; "John G. Heim"
>>> <jheim@wisc.edu>;
>>> <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>>> <Blinux-list@redhat.com>
>>> Sent: Wednesday, August 17, 2022 2:06 PM
>>> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>
>>>
>>> wrong.
>>> Your first duty is to those clients  You serve.  as illustrated here th=
e
>>> Nfb
>>> used their ability to reach insiders to influence policy to the detrime=
nt
>>> of the broader community...same can clearly be said for freedom
>>> scientific.
>>> That you stated clearly that your  rehab system runs on an nfb philosop=
hy
>>> illustrates my point perfectly.
>>> There are countless legal terms for  such conflicts of interest, I dare
>>> say if you were serving any other clientele your government watchdog
>>> would
>>> put  a stop  to the practice.
>>> allows the organization to have undue almost antitrust influence on
>>> people's lives.
>>>
>>>
>>>
>>> On Wed, 17 Aug 2022, K0LNY_Glenn wrote:
>>>
>>>> I don't think so, we are people first, and being a government employee
>>>> should not preclude personal rights.
>>>> Besides, I attended the conventions for CEU credits, but I never joine=
d
>>>> with
>>>> dues.
>>>> Glenn
>>>> ----- Original Message -----
>>>> From: "Karen Lewellen" <klewellen@shellworld.net>
>>>> To: "K0LNY_Glenn" <glenn@ervin.email>
>>>> Cc: "Butch Bussen" <butchb@shellworld.net>; "John G. Heim"
>>>> <jheim@wisc.edu>;
>>>> <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>>>> <Blinux-list@redhat.com>
>>>> Sent: Wednesday, August 17, 2022 11:36 AM
>>>> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>
>>>>
>>>> speaking personally?
>>>> No government employee should be a member of the NfB.   ethical confli=
ct
>>>> of interest personified.
>>>>
>>>> Karen
>>>>
>>>>
>>>> On Wed, 17 Aug 2022, K0LNY_Glenn wrote:
>>>>
>>>>> Yeah, I had been to a state NFBN convention that year and did the PAC
>>>>> thing.
>>>>> Then when the NFB did that, I called up the state treasurer for the
>>>>> NFBN
>>>>> and
>>>>> cancelled my PAC plan.
>>>>> I told them that they don't care if I can read my money, then they
>>>>> don't
>>>>> need any from me.
>>>>> Glenn
>>>>> ----- Original Message -----
>>>>> From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>> To: "Butch Bussen" <butchb@shellworld.net>
>>>>> Cc: "John G. Heim" <jheim@wisc.edu>; "K0LNY_Glenn" <glenn@ervin.email=
>;
>>>>> <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>>>>> <Blinux-list@redhat.com>
>>>>> Sent: Wednesday, August 17, 2022 11:18 AM
>>>>> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>
>>>>>
>>>>> My personal favorite is the rejection of money that could be identifi=
ed
>>>>> by touch.  never mind that for honestly thousands of years the practi=
ce
>>>>> has
>>>>> been common so those with limited education could still engage in
>>>>> commerce.
>>>>>
>>>>>
>>>>>
>>>>> On Wed, 17 Aug 2022, Butch Bussen wrote:
>>>>>
>>>>>> Yes, I remember that.  And what about their oposition to descriptive
>>>>>> video,
>>>>>> even filed a law sute to get the law thrown out, which it was at tha=
t
>>>>>> time.
>>>>>> 73
>>>>>> Butch
>>>>>> WA0VJR
>>>>>> Node 3148
>>>>>> Wallace, ks.
>>>>>>
>>>>>>
>>>>>> On Tue, 16 Aug 2022, John G. Heim wrote:
>>>>>>
>>>>>>>  Holy cow! Are you aware that the NFB once asked Microsoft to *NOT*
>>>>>>> improve
>>>>>>>  Narrator to the point where it would compete with Jaws? If you thi=
nk
>>>>>>> the
>>>>>>>  NFB is incapable of forcing choices on people, you are very sadly
>>>>>>>  mistaken.
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>  On 8/16/22 09:36, K0LNY_Glenn wrote:
>>>>>>>>   This sort of thing would never happen in Nebraska, or any state
>>>>>>>> where
>>>>>>>>   the
>>>>>>>>   agency staff is of the NFB philosophy.
>>>>>>>>   Say what you want about the NFB, no organization is without its
>>>>>>>>   problems,
>>>>>>>>   but it is the core philosophy that formed the NFB that knows tha=
t
>>>>>>>>   society
>>>>>>>>   has low expectations of the Blind, and this is why the NFB
>>>>>>>> believes
>>>>>>>> in
>>>>>>>>   skills and high expectations.
>>>>>>>>   And with that, comes giving respect to the Blind, like the respe=
ct
>>>>>>>> of
>>>>>>>>   choice.
>>>>>>>>   Yeah I know about the information of recent about NFB abuse, but
>>>>>>>> this
>>>>>>>>   is
>>>>>>>>   organizational issues, unrelated to the philosophy.  In fact, th=
e
>>>>>>>> fact
>>>>>>>>   that
>>>>>>>>   it has come up demonstrates that the NFB is no different than an=
y
>>>>>>>> other
>>>>>>>>   organization in interpersonal staff issues.
>>>>>>>>   And choice does not mean training center choices.
>>>>>>>>   Choice isn't always an option, just like if you took a vocationa=
l
>>>>>>>>   course
>>>>>>>>   in
>>>>>>>>   college, there are things you have to take, so to me, the lack o=
f
>>>>>>>>   choice
>>>>>>>>   in
>>>>>>>>   this regard is different than computer software, where all the
>>>>>>>> choices
>>>>>>>>   will
>>>>>>>>   reach the same end result.
>>>>>>>>   In states where the NFB philosophy is embraced, if a client said=
 I
>>>>>>>> want
>>>>>>>>   to
>>>>>>>>   use a Mac, or I want Window Eyes, then that is what they would
>>>>>>>> get,
>>>>>>>> no
>>>>>>>>   questions asked.
>>>>>>>>   They would not have to fight to get it.
>>>>>>>>   I simply cannot imagine a counselor saying that someone has to u=
se
>>>>>>>> the
>>>>>>>>   software that the counselor wants them to have.
>>>>>>>>   When I hear that stuff, I almost cannot believe it, but I know
>>>>>>>> Butch
>>>>>>>>   well
>>>>>>>>   enough to know he wouldn't make that up.
>>>>>>>>
>>>>>>>>   Glenn
>>>>>>>>   ----- Original Message -----
>>>>>>>>   From: "Butch Bussen" <butchb@shellworld.net>
>>>>>>>>   To: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>>>   Cc: "K0LNY_Glenn" <glenn@ervin.email>;
>>>>>>>> <speakup@linux-speakup.org>;
>>>>>>>>   "Milan
>>>>>>>>   Zamazal" <pdm@zamazal.org>; <Blinux-list@redhat.com>
>>>>>>>>   Sent: Tuesday, August 16, 2022 8:18 AM
>>>>>>>>   Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>>
>>>>>>>>
>>>>>>>>   You are right.  In Nevada, freedom pushed jaws to the rehab peop=
le
>>>>>>>> and
>>>>>>>>   took them out for steak diners and so forth.  I fought like hell
>>>>>>>> to
>>>>>>>> get
>>>>>>>>   them to buy window-eyes.
>>>>>>>>   73
>>>>>>>>   Butch
>>>>>>>>   WA0VJR
>>>>>>>>   Node 3148
>>>>>>>>   Wallace, ks.
>>>>>>>>
>>>>>>>>
>>>>>>>>   On Sun, 14 Aug 2022, Karen Lewellen wrote:
>>>>>>>>
>>>>>>>>>   And where do these employers learn about jaws?
>>>>>>>>>   In fact, provide if you do not mind an example of how  this wor=
ks
>>>>>>>>>   exactly.
>>>>>>>>>   after all, unless I am incorrect, these employers are not
>>>>>>>>> personal
>>>>>>>>>   Jaws
>>>>>>>>>   users, meaning someone they trust continues to sell them on an
>>>>>>>>>   expensive
>>>>>>>>>   program instead of a largely free one.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>   On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>>>>
>>>>>>>>>>     Karen,
>>>>>>>>>>     Most employers don't want NVDA, and will only allow Jaws.
>>>>>>>>>>     In Nebraska, if an employer said put on whatever works, the
>>>>>>>>>>     counselors
>>>>>>>>>>     will
>>>>>>>>>>     use NVDA, because of the cost of Jaws.
>>>>>>>>>>     If some of the clients in a call center already use Jaws, bu=
t
>>>>>>>>>>     don't know
>>>>>>>>>>     NVDA, the counselor will use Jaws, because the other clients
>>>>>>>>>> will
>>>>>>>>>>     need
>>>>>>>>>>   to
>>>>>>>>>>     learn one of the two.
>>>>>>>>>>     So it's all choice, but in the workplace, it depends on what
>>>>>>>>>> the
>>>>>>>>>>   employer
>>>>>>>>>>     will allow.
>>>>>>>>>>     Also, sometimes scripts need to be made, and there are more
>>>>>>>>>> Jaws
>>>>>>>>>>   scripters
>>>>>>>>>>     available than there are NVDA add-on writers.
>>>>>>>>>>     So this perception that Jaws is forced by rehab, from my 31
>>>>>>>>>> years
>>>>>>>>>>     in the
>>>>>>>>>>     business I can say is rubbish.
>>>>>>>>>>     Now, if a counselor did not know how to use NVDA, and either
>>>>>>>>>> may
>>>>>>>>>>     be
>>>>>>>>>>     chosen,
>>>>>>>>>>     the rehab counselor is able to select the one that the
>>>>>>>>>> counselor
>>>>>>>>>>     feels
>>>>>>>>>>   is
>>>>>>>>>>     best for the student and for the counselor's teaching.
>>>>>>>>>>     When it comes to part B moneys, which is used for
>>>>>>>>>> non-vocational
>>>>>>>>>>     purchases,
>>>>>>>>>>     where a lot of Jaws purchases come from, it is in the agency=
's
>>>>>>>>>>     best
>>>>>>>>>>     interest
>>>>>>>>>>     to spend as little as possible, because that doesn't come ba=
ck
>>>>>>>>>>     like VR
>>>>>>>>>>     expenditures do.
>>>>>>>>>>     Glenn
>>>>>>>>>>
>>>>>>>>>>     ----- Original Message -----
>>>>>>>>>>     From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>>>>>     To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>>>>>>     Cc: <speakup@linux-speakup.org>; "Milan Zamazal"
>>>>>>>>>>     <pdm@zamazal.org>;
>>>>>>>>>>     <Blinux-list@redhat.com>
>>>>>>>>>>     Sent: Saturday, August 13, 2022 6:15 PM
>>>>>>>>>>     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>     The challenge with that example is that, as one often gets
>>>>>>>>>>   reminded,
>>>>>>>>>>   the
>>>>>>>>>>     rehab systems track record for facilitating  employment for
>>>>>>>>>> their
>>>>>>>>>>   clients
>>>>>>>>>>     is quite poor.
>>>>>>>>>>     With a high percentage of unemployment among our clients.
>>>>>>>>>>     Making,
>>>>>>>>>>     speaking personally, your buying Jaws for personal use not
>>>>>>>>>> really
>>>>>>>>>>     reflecting how the system would respond to an alternative
>>>>>>>>>>     request.
>>>>>>>>>>     Now if someone from organized rehab said, okay freedom
>>>>>>>>>>     scientific, we
>>>>>>>>>>   are
>>>>>>>>>>     creating an employment program where our clients will train =
in
>>>>>>>>>>     Linux,
>>>>>>>>>>     needing a solid screen reader solution for the system.  We
>>>>>>>>>> will
>>>>>>>>>>     give you
>>>>>>>>>>     an
>>>>>>>>>>     exclusive development contract for s millions to create the
>>>>>>>>>> tool.
>>>>>>>>>>     Fs would likely say where do we sign?
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>     On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>>>>>
>>>>>>>>>>>     True enough, but largely, rehab people typically use Window=
s
>>>>>>>>>>> at
>>>>>>>>>>>     work,
>>>>>>>>>>>     and
>>>>>>>>>>>     probably at home, but they need to cater to the needs of th=
e
>>>>>>>>>>>     client.
>>>>>>>>>>>     If a client used Linux, I doubt that any rehab counselor
>>>>>>>>>>> would
>>>>>>>>>>>   advocate
>>>>>>>>>>>     that
>>>>>>>>>>>     the client switch to Windows, unless that was needed for a
>>>>>>>>>>>     specific
>>>>>>>>>>>   job.
>>>>>>>>>>>     In Nebraska, we purchased Jaws much more for personal use
>>>>>>>>>>> than
>>>>>>>>>>>     we did
>>>>>>>>>>>     for
>>>>>>>>>>>     work related situations.
>>>>>>>>>>>     So if FS made a JFL, and people were using Linux, rehab wou=
ld
>>>>>>>>>>>     indeed
>>>>>>>>>>>     purchase a JFL product.
>>>>>>>>>>>     Glenn
>>>>>>>>>>>     ----- Original Message -----
>>>>>>>>>>>     From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>>>>>>     To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>>>>>>>     Cc: <speakup@linux-speakup.org>; "Milan Zamazal"
>>>>>>>>>>>     <pdm@zamazal.org>;
>>>>>>>>>>>     <Blinux-list@redhat.com>
>>>>>>>>>>>     Sent: Saturday, August 13, 2022 3:01 PM
>>>>>>>>>>>     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>     there was an interesting discussion a month or so back on t=
he
>>>>>>>>>>>     blinux
>>>>>>>>>>>     list
>>>>>>>>>>>     about how long it took completing tasks in the gui as appos=
ed
>>>>>>>>>>>     to say
>>>>>>>>>>>     command line,  the comments were quite informative.
>>>>>>>>>>>     Still, fs has never marketed largely to the end user. Inste=
ad
>>>>>>>>>>>     they
>>>>>>>>>>>     market
>>>>>>>>>>>     to the American rehab community.
>>>>>>>>>>>     how much market research has  the rehab community done to
>>>>>>>>>>>     support the
>>>>>>>>>>>     need
>>>>>>>>>>>     for choices?
>>>>>>>>>>>     How many rehab counselors support  training in Linux?
>>>>>>>>>>>     one comment made by the subject of this thread about poor
>>>>>>>>>>>     quality
>>>>>>>>>>>   speech
>>>>>>>>>>>     is a fine one...out of the box Linux has few speech choices=
.
>>>>>>>>>>>     everyone
>>>>>>>>>>>     brings their needs to the table there.
>>>>>>>>>>>
>>>>>>>>>>>     if you want to get fs to care about Linux, you  need to pro=
ve
>>>>>>>>>>>     there is
>>>>>>>>>>>     money for  them there, from their main source of income.
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>     On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>>>>>>
>>>>>>>>>>>>     Well since Orca seems to work on so many distros, I don't
>>>>>>>>>>>>   know why
>>>>>>>>>>>>   FS
>>>>>>>>>>>>     would
>>>>>>>>>>>>     not be able to do the same.
>>>>>>>>>>>>     If Jaws users could switch into Linux, it would be a real
>>>>>>>>>>>>     game
>>>>>>>>>>>>     changer,
>>>>>>>>>>>>     and
>>>>>>>>>>>>     I think with lots more Blind Linux users, we would start
>>>>>>>>>>>>     seeing
>>>>>>>>>>>>     accessibility in Linux not being a second thought.
>>>>>>>>>>>>     Glenn
>>>>>>>>>>>>     ----- Original Message -----
>>>>>>>>>>>>     From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>>>>>>>     To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>>>>>>>>     Cc: <speakup@linux-speakup.org>; "Milan Zamazal"
>>>>>>>>>>>>     <pdm@zamazal.org>;
>>>>>>>>>>>>     <Blinux-list@redhat.com>
>>>>>>>>>>>>     Sent: Saturday, August 13, 2022 1:47 PM
>>>>>>>>>>>>     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>     Well technically freedom scientific does not exist any
>>>>>>>>>>>>     longer, being
>>>>>>>>>>>>     bought
>>>>>>>>>>>>     by another company.
>>>>>>>>>>>>     Still, I can respect why they, or nvda have not created
>>>>>>>>>>>> their
>>>>>>>>>>>>     tools
>>>>>>>>>>>>     for
>>>>>>>>>>>>     Linux.
>>>>>>>>>>>>     That is because as I understand it, Linux is  quite like
>>>>>>>>>>>>     clay. You
>>>>>>>>>>>>   can
>>>>>>>>>>>>     mold a distribution into almost anything. there are variou=
s
>>>>>>>>>>>>     personifications of the system, all sorts of ways and
>>>>>>>>>>>> changes
>>>>>>>>>>>>     and
>>>>>>>>>>>>     options
>>>>>>>>>>>>     for creativity.
>>>>>>>>>>>>     however adaptive tools are often extensions of physical
>>>>>>>>>>>>     characteristics,
>>>>>>>>>>>>     hands, eyes, ears, brains, combinations of these.
>>>>>>>>>>>>     To build solid assistive tools one must have a solid
>>>>>>>>>>>>     foundation as
>>>>>>>>>>>>   it
>>>>>>>>>>>>     were.  that is part of why there have needed to be so few
>>>>>>>>>>>>     Apple
>>>>>>>>>>>>     efforts
>>>>>>>>>>>>     at
>>>>>>>>>>>>     inclusion, they  created  with, and then created in-house
>>>>>>>>>>>>     adaptive
>>>>>>>>>>>>     tools
>>>>>>>>>>>>     for various  populations that were built into the system.
>>>>>>>>>>>>     Although Microsoft did not bother until much later, in
>>>>>>>>>>>> theory
>>>>>>>>>>>>     at
>>>>>>>>>>>>     least,
>>>>>>>>>>>>     the
>>>>>>>>>>>>     consistency of windows is what makes it possible for
>>>>>>>>>>>> freedom
>>>>>>>>>>>>     or the
>>>>>>>>>>>>     former
>>>>>>>>>>>>     gw  micro or nvda to create something that can in theory
>>>>>>>>>>>>     work.
>>>>>>>>>>>>     Floor for the furniture is somewhat solid.
>>>>>>>>>>>>     Just my thoughts,
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>     On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>>>>>>>
>>>>>>>>>>>>>     I would like to see Freedom Scientific make a Jaws For
>>>>>>>>>>>>>     Linux.
>>>>>>>>>>>>>     JFL
>>>>>>>>>>>>>     I'd certainly pay the yearly rental fee for it, and it
>>>>>>>>>>>>>     would bring
>>>>>>>>>>>>>     many
>>>>>>>>>>>>>     more
>>>>>>>>>>>>>     users into Linux.
>>>>>>>>>>>>>     FS could, with its resources, possibly make it more
>>>>>>>>>>>>> robust
>>>>>>>>>>>>>     than
>>>>>>>>>>>>>     Orca.
>>>>>>>>>>>>>
>>>>>>>>>>>>>     Glenn
>>>>>>>>>>>>>     ----- Original Message -----
>>>>>>>>>>>>>     From: "Milan Zamazal" <pdm@zamazal.org>
>>>>>>>>>>>>>     To: <speakup@linux-speakup.org>
>>>>>>>>>>>>>     Cc: <Blinux-list@redhat.com>
>>>>>>>>>>>>>     Sent: Saturday, August 13, 2022 12:08 PM
>>>>>>>>>>>>>     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>     "KL" =3D=3D Karen Lewellen
>>>>>>>>>>>>>>>>>> <klewellen@shellworld.net>
>>>>>>>>>>>>>>>>>>   writes:
>>>>>>>>>>>>>   KL>  What bothers me most are his lack of actual
>>>>>>>>>>>>>   qualifications,
>>>>>>>>>>>>>   and
>>>>>>>>>>>>> KL>    absolute dismissal of what he has not experienced..as
>>>>>>>>>>>>> if
>>>>>>>>>>>>> KL>    he
>>>>>>>>>>>>> KL>    defines Linux usage for everyone.  That attitude is
>>>>>>>>>>>>> KL>    dangerous,
>>>>>>>>>>>>> KL>    because he is educating those outside of the
>>>>>>>>>>>>> KL>    accessibility
>>>>>>>>>>>>> KL>    experiences, who will believe his ignorance is
>>>>>>>>>>>>> factual.
>>>>>>>>>>>>> KL>    he
>>>>>>>>>>>>>   has
>>>>>>>>>>>>>   KL>  to be expert, it is his job.
>>>>>>>>>>>>>
>>>>>>>>>>>>>     Hi Karen,
>>>>>>>>>>>>>
>>>>>>>>>>>>>     I know Lukas personally and I admire his skills and
>>>>>>>>>>>>>   qualifications.
>>>>>>>>>>>>>     I
>>>>>>>>>>>>>     also know first hand that he is open to constructive
>>>>>>>>>>>>>     feedback and
>>>>>>>>>>>>>   I
>>>>>>>>>>>>>     believe he=C3=A2?Td be happy to be corrected about possib=
le
>>>>>>>>>>>>>     technical
>>>>>>>>>>>>>     inaccuracies in the interview.  It may be also a good
>>>>>>>>>>>>>     opportunity
>>>>>>>>>>>>>   to
>>>>>>>>>>>>>     find out what=C3=A2?Ts possibly missing in making anybody
>>>>>>>>>>>>>     better
>>>>>>>>>>>>>     informed.
>>>>>>>>>>>>>
>>>>>>>>>>>>>     As for =C3=A2?oabsolute dismissal of what he has not
>>>>>>>>>>>>>   experienced=C3=A2?=C2?,
>>>>>>>>>>>>>   what
>>>>>>>>>>>>>     reasonable free software alternatives to a less or more
>>>>>>>>>>>>>     standard
>>>>>>>>>>>>>     desktop
>>>>>>>>>>>>>     with Orca and a software synthesizer can you see for a
>>>>>>>>>>>>>     common
>>>>>>>>>>>>>   blind
>>>>>>>>>>>>>     user
>>>>>>>>>>>>>     who needs to use a fully working web browser, to read and
>>>>>>>>>>>>>     process
>>>>>>>>>>>>>     text
>>>>>>>>>>>>>     documents, to be compatible with other computer users,
>>>>>>>>>>>>>     etc.?
>>>>>>>>>>>>>
>>>>>>>>>>>>>     And let=C3=A2?Ts be realistic.  We celebrate every single
>>>>>>>>>>>>>   developer
>>>>>>>>>>>>>   hired
>>>>>>>>>>>>>     to
>>>>>>>>>>>>>     improve accessibility.  This tells something about the
>>>>>>>>>>>>>     state of
>>>>>>>>>>>>>   the
>>>>>>>>>>>>>     matters.  We cannot expect that a single person will fix
>>>>>>>>>>>>>     all the
>>>>>>>>>>>>>     kinds
>>>>>>>>>>>>>     of accessibility problems in all the environments.  Lukas
>>>>>>>>>>>>>     works at
>>>>>>>>>>>>>     his
>>>>>>>>>>>>>     job focusing on certain areas currently seen there as
>>>>>>>>>>>>>     urgent ones
>>>>>>>>>>>>>     and I
>>>>>>>>>>>>>     appreciate this opportunity.  Anybody else seeing a need
>>>>>>>>>>>>> to
>>>>>>>>>>>>>     work
>>>>>>>>>>>>>   on
>>>>>>>>>>>>>     other areas is welcome to contribute to whatever sees
>>>>>>>>>>>>> fit,
>>>>>>>>>>>>>   as I
>>>>>>>>>>>>>   do.
>>>>>>>>>>>>>
>>>>>>>>>>>>>     Regards,
>>>>>>>>>>>>>     Milan
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>>
>>>>
>>>>
>>>>
>>>
>>>
>>
>>
>
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

