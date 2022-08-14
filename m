Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D70D6591D8A
	for <lists+blinux-list@lfdr.de>; Sun, 14 Aug 2022 04:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660442753;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=C24Dx52dpWt/B8OV4QIxXVXsO/piCYkRujwOsm5/YGA=;
	b=Hyd2cOvpVLrnaQKPF78GmEo2rZQHnMEGrISDw2NuZ8HGInCxMd/TNi6z3pTk8in41k94Rb
	aRqQPPNzlGR8UEs5jKsLXRophwS9Jnrgr9OTFdo7YCw9atAAllKfRpu6NaEg3q8NUfM4FO
	KpAeasC8j9auSO5FkoSdQkZyJDO4lEg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-209-fzO5iDrCMdaM25Ar71PMmQ-1; Sat, 13 Aug 2022 22:05:51 -0400
X-MC-Unique: fzO5iDrCMdaM25Ar71PMmQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BE9081C05AA4;
	Sun, 14 Aug 2022 02:05:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 130E92026D07;
	Sun, 14 Aug 2022 02:05:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 782261946A4B;
	Sun, 14 Aug 2022 02:05:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Date: Sat, 13 Aug 2022 21:00:50 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.469.1660440924.10505.blinux-list@redhat.com>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org>
 <Pine.LNX.4.64.2208131430230.1254020@server2.shellworld.net>
 <87o7wnq59r.fsf@zamazal.org>
 <Pine.LNX.4.64.2208131900060.1258388@server2.shellworld.net>
 <fa2b05c2-3556-b6e2-c125-045ef5e5724e@slint.fr>
 <mailman.469.1660440924.10505.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.1.0)
X-Spam-Flag: NO
Message-ID: <mailman.479.1660442748.10507.blinux-list@redhat.com>
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
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

That whole idea of we should be grateful for whatever crumbs we get needs t=
o die.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Didier Spaier <didier@slint.fr>
Cc: Blinux-list@redhat.com, Milan Zamazal <pdm@zamazal.org>, speakup@linux-=
speakup.org
Date: Sat, 13 Aug 2022 21:35:19 -0400 (EDT)
Subject: Re: "Accessibility in Fedora Workstation" (fwd)

> I am not bashing anyone.
And who Said fedora is providing anything whatsoever for me at all?
Of course, i get asked by the general Linux users group sharing this
article to defend the limited thinking of a so  called professional,
because
of course everyone sharing a label with him can access just because he
can.
the very willingness  to cut this person some slack as a token
representation of red hat's desire to projectively stereotype is part of wh=
y
actual inclusion is problematical.
I am expected to know him, because he is represented to personify my
accommodation needs...and. he. does. not.
The fact it is free is  completely unimportant.



On Sun, 14 Aug 2022, Didier Spaier wrote:

> Karen, I concur to all Milan said.
>
> Can't you just stop bashing someone who you don't know (and can't answer =
you
> unless he is subscribed to one of the mailing list where you posted this =
rant,
> which seems unfair to me), and a distribution that at least devotes resou=
rces to
> accessibility, even if they do not focus specifically on what you would l=
ike
> them to? You should just be grateful for all Fedora as provided and conti=
nue to
> provide at no cost wrt accessibility. I am, even though I do not personal=
ly need
> it.
>
> That there be inaccuracies in the article is not that important and I don=
't care
> that  Luks doesn't know everything in the matter (who does?). I am sure t=
hat he
> will quickly complete his knowledge, anyway most probably already suffici=
ent for
> what he is asked to work on.
>
> Best regards,
> Didier
>
>
> Le 14/08/2022 =E0 01:07, Karen Lewellen a =E9crit=A0:
>> And as I said from the outset, I am far more concerned with how this art=
icle=A0=A0
>> makes accessibility, and Red Hat commitment to accessibility appear=A0 t=
o the public.
>> A claim to having authority, when stating one knows nothing about how ac=
cess can
>> be provided to various populations equally deserving is concerning.
>> even in the article comments an individual outlined a need, that they di=
d not
>> anticipate being met because Fedora was creating a "blindness" program.
>> If your associate=A0 leads with stated limits,=A0 yet does not=A0 indica=
te he plans to
>> address them, inclusion on this platform for all who seek it seems=A0 fa=
r from
>> likely.
>> I do agree on the forum though. Had comment snot been closed by the time=
 I got=A0
>> the article, and I been=A0 in a position to do so, I might have=A0 raise=
d them=A0 on
>> the spot.
>>
>>
>>
>> On Sat, 13 Aug 2022, Milan Zamazal wrote:
>>
>>>>>>>> "KL" =3D=3D Karen Lewellen <klewellen@shellworld.net> writes:
>>>
>>> =A0=A0 KL> may I ask from where he obtained his software engineering
>>> =A0=A0 KL> degree?=A0 Studied computer science?=A0 Perhaps disability s=
tudies?
>>> =A0=A0 KL> there are certainly scores of disabled individuals with thes=
e
>>> =A0=A0 KL> various levels of qualification..even who are Linux users.=
=A0 The
>>> =A0=A0 KL> interview did not document a single one, outside of his
>>> =A0=A0 KL> experiencing blindness..which is not going to insure he crea=
tes
>>> =A0=A0 KL> an accessible platform for fedora since access refers to sev=
eral
>>> =A0=A0 KL> populations.=A0 and he states he knows nothing about those.
>>>
>>> I have already said regarding this what I felt was needed and I don=92t
>>> find appropriate continuing that discussion here.=A0 I=92d suggest focu=
sing
>>> on how to improve free software accessibility instead.
>>>
>>> If anybody cares about Fedora accessibility, there is always opportunit=
y
>>> to help by providing fixes to reported bugs, giving technical advice or
>>> filing bugs on not yet reported issues.=A0 All of these is needed, it=
=92s
>>> sometimes difficult to move on with some issues and to get any help.
>>> OTOH trying to demotivate people who work on accessibility is certainly
>>> not helpful.
>>>
>>> Regards,
>>> Milan
>>>
>>> =A0=A0 KL> On Sat, 13 Aug 2022, Milan Zamazal wrote:
>>>
>>> =A0=A0 >>>>>>> "KL" =3D=3D Karen Lewellen <klewellen@shellworld.net> wr=
ites:
>>> =A0=A0 >>
>>> =A0=A0 KL> What bothers me most are his lack of actual qualifications, =
and
>>> =A0=A0 KL> absolute dismissal of what he has not experienced..as if he
>>> =A0=A0 KL> defines Linux usage for everyone.=A0 That attitude is danger=
ous,
>>> =A0=A0 KL> because he is educating those outside of the accessibility
>>> =A0=A0 KL> experiences, who will believe his ignorance is factual.=A0 h=
e has
>>> =A0=A0 KL> to be expert, it is his job.
>>> =A0=A0 >>
>>> =A0=A0 >> Hi Karen,
>>> =A0=A0 >>
>>> =A0=A0 >> I know Lukas personally and I admire his skills and
>>> =A0=A0 >> qualifications.=A0 I also know first hand that he is open to
>>> =A0=A0 >> constructive feedback and I believe he=92d be happy to be cor=
rected
>>> =A0=A0 >> about possible technical inaccuracies in the interview.=A0 It=
 may
>>> =A0=A0 >> be also a good opportunity to find out what=92s possibly miss=
ing in
>>> =A0=A0 >> making anybody better informed.
>>> =A0=A0 >>
>>> =A0=A0 >> As for =93absolute dismissal of what he has not experienced=
=94, what
>>> =A0=A0 >> reasonable free software alternatives to a less or more stand=
ard
>>> =A0=A0 >> desktop with Orca and a software synthesizer can you see for =
a
>>> =A0=A0 >> common blind user who needs to use a fully working web browse=
r,
>>> =A0=A0 >> to read and process text documents, to be compatible with oth=
er
>>> =A0=A0 >> computer users, etc.?
>>> =A0=A0 >>
>>> =A0=A0 >> And let=92s be realistic.=A0 We celebrate every single develo=
per
>>> =A0=A0 >> hired to improve accessibility.=A0 This tells something about=
 the
>>> =A0=A0 >> state of the matters.=A0 We cannot expect that a single perso=
n will
>>> =A0=A0 >> fix all the kinds of accessibility problems in all the
>>> =A0=A0 >> environments.=A0 Lukas works at his job focusing on certain a=
reas
>>> =A0=A0 >> currently seen there as urgent ones and I appreciate this
>>> =A0=A0 >> opportunity.=A0 Anybody else seeing a need to work on other a=
reas
>>> =A0=A0 >> is welcome to contribute to whatever sees fit, as I do.
>>> =A0=A0 >>
>>> =A0=A0 >> Regards, Milan
>>> =A0=A0 >>
>>> =A0=A0 >>
>>> =A0=A0 >>
>>>
>>>
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

