Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 047BB59763D
	for <lists+blinux-list@lfdr.de>; Wed, 17 Aug 2022 21:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660763354;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r0Bv0SbuU/HHRAuOe+LLVxWUHEyLCCZm7AsamxNY0bo=;
	b=EBfJnoPfLVGIezX+cWtXs8WpV08RKaTLWlfJRNeMKBsNByi8vd/hxCWvNFGMp3JukguKW9
	VDDO//1CsHwOrWyGJ/DxKNyynRw8V/4uVHyJCJ1JE6CSGiNiUF2wzTdPYrgxm8hW/rT0BT
	tY9b2zNedOif3jZYIHpW9G8vW+dWRFQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-660-6c0Qf5jkNd6QNn94UwQxvw-1; Wed, 17 Aug 2022 15:09:10 -0400
X-MC-Unique: 6c0Qf5jkNd6QNn94UwQxvw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A98985A581;
	Wed, 17 Aug 2022 19:09:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6A0889458A;
	Wed, 17 Aug 2022 19:09:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0CEA8194E00F;
	Wed, 17 Aug 2022 19:09:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 17 Aug 2022 15:06:55 -0400 (EDT)
To: K0LNY_Glenn <glenn@ervin.email>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <003c01d8b258$0bc5acc0$80ffa8c0@Win7VM>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org> <02e001d8af3c$0d4cdfb0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131437260.1254020@server2.shellworld.net>
 <02fe01d8af46$46cde5e0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131554070.1255408@server2.shellworld.net>
 <031101d8af50$8f3d3fb0$80ffa8c0@Win7VM>
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
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.1885.1660763347.10500.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"

wrong.
Your first duty is to those clients  You serve.  as illustrated here the Nf=
b=20
used their ability to reach insiders to influence policy to the detriment=
=20
of the broader community...same can clearly be said for freedom=20
scientific.
That you stated clearly that your  rehab system runs on an nfb philosophy=
=20
illustrates my point perfectly.
There are countless legal terms for  such conflicts of interest, I dare=20
say if you were serving any other clientele your government watchdog would=
=20
put  a stop  to the practice.
allows the organization to have undue almost antitrust influence on=20
people's lives.



On Wed, 17 Aug 2022, K0LNY_Glenn wrote:

> I don't think so, we are people first, and being a government employee
> should not preclude personal rights.
> Besides, I attended the conventions for CEU credits, but I never joined w=
ith
> dues.
> Glenn
> ----- Original Message -----
> From: "Karen Lewellen" <klewellen@shellworld.net>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Butch Bussen" <butchb@shellworld.net>; "John G. Heim" <jheim@wisc.ed=
u>;
> <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
> <Blinux-list@redhat.com>
> Sent: Wednesday, August 17, 2022 11:36 AM
> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>
>
> speaking personally?
> No government employee should be a member of the NfB.   ethical conflict
> of interest personified.
>
> Karen
>
>
> On Wed, 17 Aug 2022, K0LNY_Glenn wrote:
>
>> Yeah, I had been to a state NFBN convention that year and did the PAC
>> thing.
>> Then when the NFB did that, I called up the state treasurer for the NFBN
>> and
>> cancelled my PAC plan.
>> I told them that they don't care if I can read my money, then they don't
>> need any from me.
>> Glenn
>> ----- Original Message -----
>> From: "Karen Lewellen" <klewellen@shellworld.net>
>> To: "Butch Bussen" <butchb@shellworld.net>
>> Cc: "John G. Heim" <jheim@wisc.edu>; "K0LNY_Glenn" <glenn@ervin.email>;
>> <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>> <Blinux-list@redhat.com>
>> Sent: Wednesday, August 17, 2022 11:18 AM
>> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>
>>
>> My personal favorite is the rejection of money that could be identified
>> by touch.  never mind that for honestly thousands of years the practice
>> has
>> been common so those with limited education could still engage in
>> commerce.
>>
>>
>>
>> On Wed, 17 Aug 2022, Butch Bussen wrote:
>>
>>> Yes, I remember that.  And what about their oposition to descriptive
>>> video,
>>> even filed a law sute to get the law thrown out, which it was at that
>>> time.
>>> 73
>>> Butch
>>> WA0VJR
>>> Node 3148
>>> Wallace, ks.
>>>
>>>
>>> On Tue, 16 Aug 2022, John G. Heim wrote:
>>>
>>>>  Holy cow! Are you aware that the NFB once asked Microsoft to *NOT*
>>>> improve
>>>>  Narrator to the point where it would compete with Jaws? If you think
>>>> the
>>>>  NFB is incapable of forcing choices on people, you are very sadly
>>>>  mistaken.
>>>>
>>>>
>>>>
>>>>  On 8/16/22 09:36, K0LNY_Glenn wrote:
>>>>>   This sort of thing would never happen in Nebraska, or any state whe=
re
>>>>>   the
>>>>>   agency staff is of the NFB philosophy.
>>>>>   Say what you want about the NFB, no organization is without its
>>>>>   problems,
>>>>>   but it is the core philosophy that formed the NFB that knows that
>>>>>   society
>>>>>   has low expectations of the Blind, and this is why the NFB believes
>>>>> in
>>>>>   skills and high expectations.
>>>>>   And with that, comes giving respect to the Blind, like the respect =
of
>>>>>   choice.
>>>>>   Yeah I know about the information of recent about NFB abuse, but th=
is
>>>>>   is
>>>>>   organizational issues, unrelated to the philosophy.  In fact, the
>>>>> fact
>>>>>   that
>>>>>   it has come up demonstrates that the NFB is no different than any
>>>>> other
>>>>>   organization in interpersonal staff issues.
>>>>>   And choice does not mean training center choices.
>>>>>   Choice isn't always an option, just like if you took a vocational
>>>>>   course
>>>>>   in
>>>>>   college, there are things you have to take, so to me, the lack of
>>>>>   choice
>>>>>   in
>>>>>   this regard is different than computer software, where all the
>>>>> choices
>>>>>   will
>>>>>   reach the same end result.
>>>>>   In states where the NFB philosophy is embraced, if a client said I
>>>>> want
>>>>>   to
>>>>>   use a Mac, or I want Window Eyes, then that is what they would get,
>>>>> no
>>>>>   questions asked.
>>>>>   They would not have to fight to get it.
>>>>>   I simply cannot imagine a counselor saying that someone has to use
>>>>> the
>>>>>   software that the counselor wants them to have.
>>>>>   When I hear that stuff, I almost cannot believe it, but I know Butc=
h
>>>>>   well
>>>>>   enough to know he wouldn't make that up.
>>>>>
>>>>>   Glenn
>>>>>   ----- Original Message -----
>>>>>   From: "Butch Bussen" <butchb@shellworld.net>
>>>>>   To: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>   Cc: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>;
>>>>>   "Milan
>>>>>   Zamazal" <pdm@zamazal.org>; <Blinux-list@redhat.com>
>>>>>   Sent: Tuesday, August 16, 2022 8:18 AM
>>>>>   Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>
>>>>>
>>>>>   You are right.  In Nevada, freedom pushed jaws to the rehab people
>>>>> and
>>>>>   took them out for steak diners and so forth.  I fought like hell to
>>>>> get
>>>>>   them to buy window-eyes.
>>>>>   73
>>>>>   Butch
>>>>>   WA0VJR
>>>>>   Node 3148
>>>>>   Wallace, ks.
>>>>>
>>>>>
>>>>>   On Sun, 14 Aug 2022, Karen Lewellen wrote:
>>>>>
>>>>>>   And where do these employers learn about jaws?
>>>>>>   In fact, provide if you do not mind an example of how  this works
>>>>>>   exactly.
>>>>>>   after all, unless I am incorrect, these employers are not personal
>>>>>>   Jaws
>>>>>>   users, meaning someone they trust continues to sell them on an
>>>>>>   expensive
>>>>>>   program instead of a largely free one.
>>>>>>
>>>>>>
>>>>>>
>>>>>>   On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>
>>>>>>>     Karen,
>>>>>>>     Most employers don't want NVDA, and will only allow Jaws.
>>>>>>>     In Nebraska, if an employer said put on whatever works, the
>>>>>>>     counselors
>>>>>>>     will
>>>>>>>     use NVDA, because of the cost of Jaws.
>>>>>>>     If some of the clients in a call center already use Jaws, but
>>>>>>>     don't know
>>>>>>>     NVDA, the counselor will use Jaws, because the other clients
>>>>>>> will
>>>>>>>     need
>>>>>>>   to
>>>>>>>     learn one of the two.
>>>>>>>     So it's all choice, but in the workplace, it depends on what
>>>>>>> the
>>>>>>>   employer
>>>>>>>     will allow.
>>>>>>>     Also, sometimes scripts need to be made, and there are more
>>>>>>> Jaws
>>>>>>>   scripters
>>>>>>>     available than there are NVDA add-on writers.
>>>>>>>     So this perception that Jaws is forced by rehab, from my 31
>>>>>>> years
>>>>>>>     in the
>>>>>>>     business I can say is rubbish.
>>>>>>>     Now, if a counselor did not know how to use NVDA, and either
>>>>>>> may
>>>>>>>     be
>>>>>>>     chosen,
>>>>>>>     the rehab counselor is able to select the one that the
>>>>>>> counselor
>>>>>>>     feels
>>>>>>>   is
>>>>>>>     best for the student and for the counselor's teaching.
>>>>>>>     When it comes to part B moneys, which is used for
>>>>>>> non-vocational
>>>>>>>     purchases,
>>>>>>>     where a lot of Jaws purchases come from, it is in the agency's
>>>>>>>     best
>>>>>>>     interest
>>>>>>>     to spend as little as possible, because that doesn't come back
>>>>>>>     like VR
>>>>>>>     expenditures do.
>>>>>>>     Glenn
>>>>>>>
>>>>>>>     ----- Original Message -----
>>>>>>>     From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>>     To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>>>     Cc: <speakup@linux-speakup.org>; "Milan Zamazal"
>>>>>>>     <pdm@zamazal.org>;
>>>>>>>     <Blinux-list@redhat.com>
>>>>>>>     Sent: Saturday, August 13, 2022 6:15 PM
>>>>>>>     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>
>>>>>>>
>>>>>>>     The challenge with that example is that, as one often gets
>>>>>>>   reminded,
>>>>>>>   the
>>>>>>>     rehab systems track record for facilitating  employment for
>>>>>>> their
>>>>>>>   clients
>>>>>>>     is quite poor.
>>>>>>>     With a high percentage of unemployment among our clients.
>>>>>>>     Making,
>>>>>>>     speaking personally, your buying Jaws for personal use not
>>>>>>> really
>>>>>>>     reflecting how the system would respond to an alternative
>>>>>>>     request.
>>>>>>>     Now if someone from organized rehab said, okay freedom
>>>>>>>     scientific, we
>>>>>>>   are
>>>>>>>     creating an employment program where our clients will train in
>>>>>>>     Linux,
>>>>>>>     needing a solid screen reader solution for the system.  We will
>>>>>>>     give you
>>>>>>>     an
>>>>>>>     exclusive development contract for s millions to create the
>>>>>>> tool.
>>>>>>>     Fs would likely say where do we sign?
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>     On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>>
>>>>>>>>     True enough, but largely, rehab people typically use Windows
>>>>>>>> at
>>>>>>>>     work,
>>>>>>>>     and
>>>>>>>>     probably at home, but they need to cater to the needs of the
>>>>>>>>     client.
>>>>>>>>     If a client used Linux, I doubt that any rehab counselor
>>>>>>>> would
>>>>>>>>   advocate
>>>>>>>>     that
>>>>>>>>     the client switch to Windows, unless that was needed for a
>>>>>>>>     specific
>>>>>>>>   job.
>>>>>>>>     In Nebraska, we purchased Jaws much more for personal use
>>>>>>>> than
>>>>>>>>     we did
>>>>>>>>     for
>>>>>>>>     work related situations.
>>>>>>>>     So if FS made a JFL, and people were using Linux, rehab would
>>>>>>>>     indeed
>>>>>>>>     purchase a JFL product.
>>>>>>>>     Glenn
>>>>>>>>     ----- Original Message -----
>>>>>>>>     From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>>>     To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>>>>     Cc: <speakup@linux-speakup.org>; "Milan Zamazal"
>>>>>>>>     <pdm@zamazal.org>;
>>>>>>>>     <Blinux-list@redhat.com>
>>>>>>>>     Sent: Saturday, August 13, 2022 3:01 PM
>>>>>>>>     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>>
>>>>>>>>
>>>>>>>>     there was an interesting discussion a month or so back on the
>>>>>>>>     blinux
>>>>>>>>     list
>>>>>>>>     about how long it took completing tasks in the gui as apposed
>>>>>>>>     to say
>>>>>>>>     command line,  the comments were quite informative.
>>>>>>>>     Still, fs has never marketed largely to the end user. Instead
>>>>>>>>     they
>>>>>>>>     market
>>>>>>>>     to the American rehab community.
>>>>>>>>     how much market research has  the rehab community done to
>>>>>>>>     support the
>>>>>>>>     need
>>>>>>>>     for choices?
>>>>>>>>     How many rehab counselors support  training in Linux?
>>>>>>>>     one comment made by the subject of this thread about poor
>>>>>>>>     quality
>>>>>>>>   speech
>>>>>>>>     is a fine one...out of the box Linux has few speech choices.
>>>>>>>>     everyone
>>>>>>>>     brings their needs to the table there.
>>>>>>>>
>>>>>>>>     if you want to get fs to care about Linux, you  need to prove
>>>>>>>>     there is
>>>>>>>>     money for  them there, from their main source of income.
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>     On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>>>
>>>>>>>>>     Well since Orca seems to work on so many distros, I don't
>>>>>>>>>   know why
>>>>>>>>>   FS
>>>>>>>>>     would
>>>>>>>>>     not be able to do the same.
>>>>>>>>>     If Jaws users could switch into Linux, it would be a real
>>>>>>>>>     game
>>>>>>>>>     changer,
>>>>>>>>>     and
>>>>>>>>>     I think with lots more Blind Linux users, we would start
>>>>>>>>>     seeing
>>>>>>>>>     accessibility in Linux not being a second thought.
>>>>>>>>>     Glenn
>>>>>>>>>     ----- Original Message -----
>>>>>>>>>     From: "Karen Lewellen" <klewellen@shellworld.net>
>>>>>>>>>     To: "K0LNY_Glenn" <glenn@ervin.email>
>>>>>>>>>     Cc: <speakup@linux-speakup.org>; "Milan Zamazal"
>>>>>>>>>     <pdm@zamazal.org>;
>>>>>>>>>     <Blinux-list@redhat.com>
>>>>>>>>>     Sent: Saturday, August 13, 2022 1:47 PM
>>>>>>>>>     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>     Well technically freedom scientific does not exist any
>>>>>>>>>     longer, being
>>>>>>>>>     bought
>>>>>>>>>     by another company.
>>>>>>>>>     Still, I can respect why they, or nvda have not created
>>>>>>>>> their
>>>>>>>>>     tools
>>>>>>>>>     for
>>>>>>>>>     Linux.
>>>>>>>>>     That is because as I understand it, Linux is  quite like
>>>>>>>>>     clay. You
>>>>>>>>>   can
>>>>>>>>>     mold a distribution into almost anything. there are various
>>>>>>>>>     personifications of the system, all sorts of ways and
>>>>>>>>> changes
>>>>>>>>>     and
>>>>>>>>>     options
>>>>>>>>>     for creativity.
>>>>>>>>>     however adaptive tools are often extensions of physical
>>>>>>>>>     characteristics,
>>>>>>>>>     hands, eyes, ears, brains, combinations of these.
>>>>>>>>>     To build solid assistive tools one must have a solid
>>>>>>>>>     foundation as
>>>>>>>>>   it
>>>>>>>>>     were.  that is part of why there have needed to be so few
>>>>>>>>>     Apple
>>>>>>>>>     efforts
>>>>>>>>>     at
>>>>>>>>>     inclusion, they  created  with, and then created in-house
>>>>>>>>>     adaptive
>>>>>>>>>     tools
>>>>>>>>>     for various  populations that were built into the system.
>>>>>>>>>     Although Microsoft did not bother until much later, in
>>>>>>>>> theory
>>>>>>>>>     at
>>>>>>>>>     least,
>>>>>>>>>     the
>>>>>>>>>     consistency of windows is what makes it possible for
>>>>>>>>> freedom
>>>>>>>>>     or the
>>>>>>>>>     former
>>>>>>>>>     gw  micro or nvda to create something that can in theory
>>>>>>>>>     work.
>>>>>>>>>     Floor for the furniture is somewhat solid.
>>>>>>>>>     Just my thoughts,
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>     On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>>>>>>>>
>>>>>>>>>>     I would like to see Freedom Scientific make a Jaws For
>>>>>>>>>>     Linux.
>>>>>>>>>>     JFL
>>>>>>>>>>     I'd certainly pay the yearly rental fee for it, and it
>>>>>>>>>>     would bring
>>>>>>>>>>     many
>>>>>>>>>>     more
>>>>>>>>>>     users into Linux.
>>>>>>>>>>     FS could, with its resources, possibly make it more
>>>>>>>>>> robust
>>>>>>>>>>     than
>>>>>>>>>>     Orca.
>>>>>>>>>>
>>>>>>>>>>     Glenn
>>>>>>>>>>     ----- Original Message -----
>>>>>>>>>>     From: "Milan Zamazal" <pdm@zamazal.org>
>>>>>>>>>>     To: <speakup@linux-speakup.org>
>>>>>>>>>>     Cc: <Blinux-list@redhat.com>
>>>>>>>>>>     Sent: Saturday, August 13, 2022 12:08 PM
>>>>>>>>>>     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>>>>>>     "KL" =3D=3D Karen Lewellen
>>>>>>>>>>>>>>> <klewellen@shellworld.net>
>>>>>>>>>>>>>>>   writes:
>>>>>>>>>>   KL>  What bothers me most are his lack of actual
>>>>>>>>>>   qualifications,
>>>>>>>>>>   and
>>>>>>>>>> KL>    absolute dismissal of what he has not experienced..as
>>>>>>>>>> if
>>>>>>>>>> KL>    he
>>>>>>>>>> KL>    defines Linux usage for everyone.  That attitude is
>>>>>>>>>> KL>    dangerous,
>>>>>>>>>> KL>    because he is educating those outside of the
>>>>>>>>>> KL>    accessibility
>>>>>>>>>> KL>    experiences, who will believe his ignorance is
>>>>>>>>>> factual.
>>>>>>>>>> KL>    he
>>>>>>>>>>   has
>>>>>>>>>>   KL>  to be expert, it is his job.
>>>>>>>>>>
>>>>>>>>>>     Hi Karen,
>>>>>>>>>>
>>>>>>>>>>     I know Lukas personally and I admire his skills and
>>>>>>>>>>   qualifications.
>>>>>>>>>>     I
>>>>>>>>>>     also know first hand that he is open to constructive
>>>>>>>>>>     feedback and
>>>>>>>>>>   I
>>>>>>>>>>     believe he=C3=A2?Td be happy to be corrected about possible
>>>>>>>>>>     technical
>>>>>>>>>>     inaccuracies in the interview.  It may be also a good
>>>>>>>>>>     opportunity
>>>>>>>>>>   to
>>>>>>>>>>     find out what=C3=A2?Ts possibly missing in making anybody
>>>>>>>>>>     better
>>>>>>>>>>     informed.
>>>>>>>>>>
>>>>>>>>>>     As for =C3=A2?oabsolute dismissal of what he has not
>>>>>>>>>>   experienced=C3=A2?=C2?,
>>>>>>>>>>   what
>>>>>>>>>>     reasonable free software alternatives to a less or more
>>>>>>>>>>     standard
>>>>>>>>>>     desktop
>>>>>>>>>>     with Orca and a software synthesizer can you see for a
>>>>>>>>>>     common
>>>>>>>>>>   blind
>>>>>>>>>>     user
>>>>>>>>>>     who needs to use a fully working web browser, to read and
>>>>>>>>>>     process
>>>>>>>>>>     text
>>>>>>>>>>     documents, to be compatible with other computer users,
>>>>>>>>>>     etc.?
>>>>>>>>>>
>>>>>>>>>>     And let=C3=A2?Ts be realistic.  We celebrate every single
>>>>>>>>>>   developer
>>>>>>>>>>   hired
>>>>>>>>>>     to
>>>>>>>>>>     improve accessibility.  This tells something about the
>>>>>>>>>>     state of
>>>>>>>>>>   the
>>>>>>>>>>     matters.  We cannot expect that a single person will fix
>>>>>>>>>>     all the
>>>>>>>>>>     kinds
>>>>>>>>>>     of accessibility problems in all the environments.  Lukas
>>>>>>>>>>     works at
>>>>>>>>>>     his
>>>>>>>>>>     job focusing on certain areas currently seen there as
>>>>>>>>>>     urgent ones
>>>>>>>>>>     and I
>>>>>>>>>>     appreciate this opportunity.  Anybody else seeing a need
>>>>>>>>>> to
>>>>>>>>>>     work
>>>>>>>>>>   on
>>>>>>>>>>     other areas is welcome to contribute to whatever sees
>>>>>>>>>> fit,
>>>>>>>>>>   as I
>>>>>>>>>>   do.
>>>>>>>>>>
>>>>>>>>>>     Regards,
>>>>>>>>>>     Milan
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>
>>>>
>>>>
>>>>
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

