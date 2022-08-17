Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C895597457
	for <lists+blinux-list@lfdr.de>; Wed, 17 Aug 2022 18:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660754489;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=CLuTC1tlfr5vJvMrZPB0KTO1EhZhgRApQUCxtC12PGk=;
	b=G9vbgm2Y1fmm7Ss50KIlSuzLp2a4b5s0sHuKxPBiPlB04gys24JXZHSqZqG4c0tAnlBUyv
	TVIfzb6t/UIx8dgsgGTX4cEwYGp4dgFdsDPLOLrIN5VRtGhhVpNBM+0M4hufd6LAp//J26
	Kb1XH87Av6C6dXnCCxxjCMqvAs3otSE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-257-CnoyATm5PBSKHzQ75OyOwQ-1; Wed, 17 Aug 2022 12:41:26 -0400
X-MC-Unique: CnoyATm5PBSKHzQ75OyOwQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5DDF185A7BA;
	Wed, 17 Aug 2022 16:41:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8EAE1492C3B;
	Wed, 17 Aug 2022 16:41:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 43DF0194E015;
	Wed, 17 Aug 2022 16:41:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 17 Aug 2022 12:18:13 -0400 (EDT)
To: Butch Bussen <butchb@shellworld.net>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <Pine.LNX.4.64.2208170740540.1352313@server2.shellworld.net>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
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
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.1544.1660754483.10506.blinux-list@redhat.com>
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
 speakup@linux-speakup.org, K0LNY_Glenn <glenn@ervin.email>,
 Blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============8333786224235208018=="

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--===============8333786224235208018==
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

My personal favorite is the rejection of money that could be identified=20
by touch.  never mind that for honestly thousands of years the practice has=
=20
been common so those with limited education could still engage in commerce.



On Wed, 17 Aug 2022, Butch Bussen wrote:

> Yes, I remember that.  And what about their oposition to descriptive vide=
o,=20
> even filed a law sute to get the law thrown out, which it was at that tim=
e.
> 73
> Butch
> WA0VJR
> Node 3148
> Wallace, ks.
>
>
> On Tue, 16 Aug 2022, John G. Heim wrote:
>
>>  Holy cow! Are you aware that the NFB once asked Microsoft to *NOT* impr=
ove
>>  Narrator to the point where it would compete with Jaws? If you think th=
e
>>  NFB is incapable of forcing choices on people, you are very sadly
>>  mistaken.
>>=20
>>=20
>>
>>  On 8/16/22 09:36, K0LNY_Glenn wrote:
>> >   This sort of thing would never happen in Nebraska, or any state wher=
e=20
>> >   the
>> >   agency staff is of the NFB philosophy.
>> >   Say what you want about the NFB, no organization is without its=20
>> >   problems,
>> >   but it is the core philosophy that formed the NFB that knows that=20
>> >   society
>> >   has low expectations of the Blind, and this is why the NFB believes =
in
>> >   skills and high expectations.
>> >   And with that, comes giving respect to the Blind, like the respect o=
f
>> >   choice.
>> >   Yeah I know about the information of recent about NFB abuse, but thi=
s=20
>> >   is
>> >   organizational issues, unrelated to the philosophy.  In fact, the fa=
ct
>> >   that
>> >   it has come up demonstrates that the NFB is no different than any ot=
her
>> >   organization in interpersonal staff issues.
>> >   And choice does not mean training center choices.
>> >   Choice isn't always an option, just like if you took a vocational=20
>> >   course
>> >   in
>> >   college, there are things you have to take, so to me, the lack of=20
>> >   choice
>> >   in
>> >   this regard is different than computer software, where all the choic=
es
>> >   will
>> >   reach the same end result.
>> >   In states where the NFB philosophy is embraced, if a client said I w=
ant=20
>> >   to
>> >   use a Mac, or I want Window Eyes, then that is what they would get, =
no
>> >   questions asked.
>> >   They would not have to fight to get it.
>> >   I simply cannot imagine a counselor saying that someone has to use t=
he
>> >   software that the counselor wants them to have.
>> >   When I hear that stuff, I almost cannot believe it, but I know Butch=
=20
>> >   well
>> >   enough to know he wouldn't make that up.
>> >=20
>> >   Glenn
>> >   ----- Original Message -----
>> >   From: "Butch Bussen" <butchb@shellworld.net>
>> >   To: "Karen Lewellen" <klewellen@shellworld.net>
>> >   Cc: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>;=
=20
>> >   "Milan
>> >   Zamazal" <pdm@zamazal.org>; <Blinux-list@redhat.com>
>> >   Sent: Tuesday, August 16, 2022 8:18 AM
>> >   Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>> >=20
>> >=20
>> >   You are right.  In Nevada, freedom pushed jaws to the rehab people a=
nd
>> >   took them out for steak diners and so forth.  I fought like hell to =
get
>> >   them to buy window-eyes.
>> >   73
>> >   Butch
>> >   WA0VJR
>> >   Node 3148
>> >   Wallace, ks.
>> >=20
>> >=20
>> >   On Sun, 14 Aug 2022, Karen Lewellen wrote:
>> >=20
>> > >   And where do these employers learn about jaws?
>> > >   In fact, provide if you do not mind an example of how  this works=
=20
>> > >   exactly.
>> > >   after all, unless I am incorrect, these employers are not personal=
=20
>> > >   Jaws
>> > >   users, meaning someone they trust continues to sell them on an=20
>> > >   expensive
>> > >   program instead of a largely free one.
>> > >=20
>> > >=20
>> > >=20
>> > >   On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>> > >=20
>> > > >     Karen,
>> > > >     Most employers don't want NVDA, and will only allow Jaws.
>> > > >     In Nebraska, if an employer said put on whatever works, the=20
>> > > >     counselors
>> > > >     will
>> > > >     use NVDA, because of the cost of Jaws.
>> > > >     If some of the clients in a call center already use Jaws, but=
=20
>> > > >     don't know
>> > > >     NVDA, the counselor will use Jaws, because the other clients w=
ill=20
>> > > >     need
>> > > >   to
>> > > >     learn one of the two.
>> > > >     So it's all choice, but in the workplace, it depends on what t=
he
>> > > >   employer
>> > > >     will allow.
>> > > >     Also, sometimes scripts need to be made, and there are more Ja=
ws
>> > > >   scripters
>> > > >     available than there are NVDA add-on writers.
>> > > >     So this perception that Jaws is forced by rehab, from my 31 ye=
ars=20
>> > > >     in the
>> > > >     business I can say is rubbish.
>> > > >     Now, if a counselor did not know how to use NVDA, and either m=
ay=20
>> > > >     be
>> > > >     chosen,
>> > > >     the rehab counselor is able to select the one that the counsel=
or=20
>> > > >     feels
>> > > >   is
>> > > >     best for the student and for the counselor's teaching.
>> > > >     When it comes to part B moneys, which is used for non-vocation=
al
>> > > >     purchases,
>> > > >     where a lot of Jaws purchases come from, it is in the agency's=
=20
>> > > >     best
>> > > >     interest
>> > > >     to spend as little as possible, because that doesn't come back=
=20
>> > > >     like VR
>> > > >     expenditures do.
>> > > >     Glenn
>> > > >=20
>> > > >     ----- Original Message -----
>> > > >     From: "Karen Lewellen" <klewellen@shellworld.net>
>> > > >     To: "K0LNY_Glenn" <glenn@ervin.email>
>> > > >     Cc: <speakup@linux-speakup.org>; "Milan Zamazal"=20
>> > > >     <pdm@zamazal.org>;
>> > > >     <Blinux-list@redhat.com>
>> > > >     Sent: Saturday, August 13, 2022 6:15 PM
>> > > >     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>> > > >=20
>> > > >=20
>> > > >     The challenge with that example is that, as one often gets=20
>> > > >   reminded,
>> > > >   the
>> > > >     rehab systems track record for facilitating  employment for th=
eir
>> > > >   clients
>> > > >     is quite poor.
>> > > >     With a high percentage of unemployment among our clients.=20
>> > > >     Making,
>> > > >     speaking personally, your buying Jaws for personal use not rea=
lly
>> > > >     reflecting how the system would respond to an alternative=20
>> > > >     request.
>> > > >     Now if someone from organized rehab said, okay freedom=20
>> > > >     scientific, we
>> > > >   are
>> > > >     creating an employment program where our clients will train in=
=20
>> > > >     Linux,
>> > > >     needing a solid screen reader solution for the system.  We wil=
l=20
>> > > >     give you
>> > > >     an
>> > > >     exclusive development contract for s millions to create the to=
ol.
>> > > >     Fs would likely say where do we sign?
>> > > >=20
>> > > >=20
>> > > >=20
>> > > >     On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>> > > >=20
>> > > > >     True enough, but largely, rehab people typically use Windows=
 at=20
>> > > > >     work,
>> > > > >     and
>> > > > >     probably at home, but they need to cater to the needs of the=
=20
>> > > > >     client.
>> > > > >     If a client used Linux, I doubt that any rehab counselor wou=
ld
>> > > > >   advocate
>> > > > >     that
>> > > > >     the client switch to Windows, unless that was needed for a=
=20
>> > > > >     specific
>> > > > >   job.
>> > > > >     In Nebraska, we purchased Jaws much more for personal use th=
an=20
>> > > > >     we did
>> > > > >     for
>> > > > >     work related situations.
>> > > > >     So if FS made a JFL, and people were using Linux, rehab woul=
d=20
>> > > > >     indeed
>> > > > >     purchase a JFL product.
>> > > > >     Glenn
>> > > > >     ----- Original Message -----
>> > > > >     From: "Karen Lewellen" <klewellen@shellworld.net>
>> > > > >     To: "K0LNY_Glenn" <glenn@ervin.email>
>> > > > >     Cc: <speakup@linux-speakup.org>; "Milan Zamazal"=20
>> > > > >     <pdm@zamazal.org>;
>> > > > >     <Blinux-list@redhat.com>
>> > > > >     Sent: Saturday, August 13, 2022 3:01 PM
>> > > > >     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>> > > > >=20
>> > > > >=20
>> > > > >     there was an interesting discussion a month or so back on th=
e=20
>> > > > >     blinux
>> > > > >     list
>> > > > >     about how long it took completing tasks in the gui as appose=
d=20
>> > > > >     to say
>> > > > >     command line,  the comments were quite informative.
>> > > > >     Still, fs has never marketed largely to the end user. Instea=
d=20
>> > > > >     they
>> > > > >     market
>> > > > >     to the American rehab community.
>> > > > >     how much market research has  the rehab community done to=20
>> > > > >     support the
>> > > > >     need
>> > > > >     for choices?
>> > > > >     How many rehab counselors support  training in Linux?
>> > > > >     one comment made by the subject of this thread about poor=20
>> > > > >     quality
>> > > > >   speech
>> > > > >     is a fine one...out of the box Linux has few speech choices.=
=20
>> > > > >     everyone
>> > > > >     brings their needs to the table there.
>> > > > >=20
>> > > > >     if you want to get fs to care about Linux, you  need to prov=
e=20
>> > > > >     there is
>> > > > >     money for  them there, from their main source of income.
>> > > > >=20
>> > > > >=20
>> > > > >=20
>> > > > >     On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>> > > > >=20
>> > > > > >     Well since Orca seems to work on so many distros, I don't=
=20
>> > > > > >   know why
>> > > > > >   FS
>> > > > > >     would
>> > > > > >     not be able to do the same.
>> > > > > >     If Jaws users could switch into Linux, it would be a real=
=20
>> > > > > >     game
>> > > > > >     changer,
>> > > > > >     and
>> > > > > >     I think with lots more Blind Linux users, we would start=
=20
>> > > > > >     seeing
>> > > > > >     accessibility in Linux not being a second thought.
>> > > > > >     Glenn
>> > > > > >     ----- Original Message -----
>> > > > > >     From: "Karen Lewellen" <klewellen@shellworld.net>
>> > > > > >     To: "K0LNY_Glenn" <glenn@ervin.email>
>> > > > > >     Cc: <speakup@linux-speakup.org>; "Milan Zamazal"=20
>> > > > > >     <pdm@zamazal.org>;
>> > > > > >     <Blinux-list@redhat.com>
>> > > > > >     Sent: Saturday, August 13, 2022 1:47 PM
>> > > > > >     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>> > > > > >=20
>> > > > > >=20
>> > > > > >     Well technically freedom scientific does not exist any=20
>> > > > > >     longer, being
>> > > > > >     bought
>> > > > > >     by another company.
>> > > > > >     Still, I can respect why they, or nvda have not created th=
eir=20
>> > > > > >     tools
>> > > > > >     for
>> > > > > >     Linux.
>> > > > > >     That is because as I understand it, Linux is  quite like=
=20
>> > > > > >     clay. You
>> > > > > >   can
>> > > > > >     mold a distribution into almost anything. there are variou=
s
>> > > > > >     personifications of the system, all sorts of ways and chan=
ges=20
>> > > > > >     and
>> > > > > >     options
>> > > > > >     for creativity.
>> > > > > >     however adaptive tools are often extensions of physical
>> > > > > >     characteristics,
>> > > > > >     hands, eyes, ears, brains, combinations of these.
>> > > > > >     To build solid assistive tools one must have a solid=20
>> > > > > >     foundation as
>> > > > > >   it
>> > > > > >     were.  that is part of why there have needed to be so few=
=20
>> > > > > >     Apple
>> > > > > >     efforts
>> > > > > >     at
>> > > > > >     inclusion, they  created  with, and then created in-house=
=20
>> > > > > >     adaptive
>> > > > > >     tools
>> > > > > >     for various  populations that were built into the system.
>> > > > > >     Although Microsoft did not bother until much later, in the=
ory=20
>> > > > > >     at
>> > > > > >     least,
>> > > > > >     the
>> > > > > >     consistency of windows is what makes it possible for freed=
om=20
>> > > > > >     or the
>> > > > > >     former
>> > > > > >     gw  micro or nvda to create something that can in theory=
=20
>> > > > > >     work.
>> > > > > >     Floor for the furniture is somewhat solid.
>> > > > > >     Just my thoughts,
>> > > > > >=20
>> > > > > >=20
>> > > > > >=20
>> > > > > >     On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>> > > > > >=20
>> > > > > > >     I would like to see Freedom Scientific make a Jaws For=
=20
>> > > > > > >     Linux.
>> > > > > > >     JFL
>> > > > > > >     I'd certainly pay the yearly rental fee for it, and it=
=20
>> > > > > > >     would bring
>> > > > > > >     many
>> > > > > > >     more
>> > > > > > >     users into Linux.
>> > > > > > >     FS could, with its resources, possibly make it more robu=
st=20
>> > > > > > >     than
>> > > > > > >     Orca.
>> > > > > > >=20
>> > > > > > >     Glenn
>> > > > > > >     ----- Original Message -----
>> > > > > > >     From: "Milan Zamazal" <pdm@zamazal.org>
>> > > > > > >     To: <speakup@linux-speakup.org>
>> > > > > > >     Cc: <Blinux-list@redhat.com>
>> > > > > > >     Sent: Saturday, August 13, 2022 12:08 PM
>> > > > > > >     Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>> > > > > > >=20
>> > > > > > >=20
>> > > > > > > > > > > >     "KL" =3D=3D Karen Lewellen <klewellen@shellwor=
ld.net>
>> > > > > > > > > > > >   writes:
>> > > > > > >   KL>  What bothers me most are his lack of actual=20
>> > > > > > >   qualifications,
>> > > > > > >   and
>> > > > > > > KL>    absolute dismissal of what he has not experienced..as=
 if=20
>> > > > > > > KL>    he
>> > > > > > > KL>    defines Linux usage for everyone.  That attitude is=
=20
>> > > > > > > KL>    dangerous,
>> > > > > > > KL>    because he is educating those outside of the=20
>> > > > > > > KL>    accessibility
>> > > > > > > KL>    experiences, who will believe his ignorance is factua=
l.=20
>> > > > > > > KL>    he
>> > > > > > >   has
>> > > > > > >   KL>  to be expert, it is his job.
>> > > > > > >=20
>> > > > > > >     Hi Karen,
>> > > > > > >=20
>> > > > > > >     I know Lukas personally and I admire his skills and
>> > > > > > >   qualifications.
>> > > > > > >     I
>> > > > > > >     also know first hand that he is open to constructive=20
>> > > > > > >     feedback and
>> > > > > > >   I
>> > > > > > >     believe he=C3=A2?Td be happy to be corrected about possi=
ble=20
>> > > > > > >     technical
>> > > > > > >     inaccuracies in the interview.  It may be also a good=20
>> > > > > > >     opportunity
>> > > > > > >   to
>> > > > > > >     find out what=C3=A2?Ts possibly missing in making anybod=
y=20
>> > > > > > >     better
>> > > > > > >     informed.
>> > > > > > >=20
>> > > > > > >     As for =C3=A2?oabsolute dismissal of what he has not=20
>> > > > > > >   experienced=C3=A2?=C2?,
>> > > > > > >   what
>> > > > > > >     reasonable free software alternatives to a less or more=
=20
>> > > > > > >     standard
>> > > > > > >     desktop
>> > > > > > >     with Orca and a software synthesizer can you see for a=
=20
>> > > > > > >     common
>> > > > > > >   blind
>> > > > > > >     user
>> > > > > > >     who needs to use a fully working web browser, to read an=
d=20
>> > > > > > >     process
>> > > > > > >     text
>> > > > > > >     documents, to be compatible with other computer users,=
=20
>> > > > > > >     etc.?
>> > > > > > >=20
>> > > > > > >     And let=C3=A2?Ts be realistic.  We celebrate every singl=
e=20
>> > > > > > >   developer
>> > > > > > >   hired
>> > > > > > >     to
>> > > > > > >     improve accessibility.  This tells something about the=
=20
>> > > > > > >     state of
>> > > > > > >   the
>> > > > > > >     matters.  We cannot expect that a single person will fix=
=20
>> > > > > > >     all the
>> > > > > > >     kinds
>> > > > > > >     of accessibility problems in all the environments.  Luka=
s=20
>> > > > > > >     works at
>> > > > > > >     his
>> > > > > > >     job focusing on certain areas currently seen there as=20
>> > > > > > >     urgent ones
>> > > > > > >     and I
>> > > > > > >     appreciate this opportunity.  Anybody else seeing a need=
 to=20
>> > > > > > >     work
>> > > > > > >   on
>> > > > > > >     other areas is welcome to contribute to whatever sees fi=
t,=20
>> > > > > > >   as I
>> > > > > > >   do.
>> > > > > > >=20
>> > > > > > >     Regards,
>> > > > > > >     Milan
>> > > > > > >=20
>> > > > > > >=20
>> > > > > > >=20
>> > > > > > >=20
>> > > > > >=20
>> > > > >=20
>> > > >=20
>> >=20
>>=20
>>=20
>>=20
>
--===============8333786224235208018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--===============8333786224235208018==--

