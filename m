Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 762B0591D36
	for <lists+blinux-list@lfdr.de>; Sun, 14 Aug 2022 02:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660435617;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DXCE7zRCT5qacWtdkAWU9cf4rSYDt5u2ep58y8dS9pA=;
	b=L/kUKkZQpMnu9ggqlRttfpHsVBPjB4+eufFj7TigxRh/24VLeP/LwcG0qyghIHKCWZx1gr
	NhDU0AMKh9VG2EDTH4JMBdtv2DeReu8Ne4yiDwqICUCFmka/ICxEamMiQxgCRB6hp1F48I
	Wu3dVrt5fWofoBsvOgYTEmQUZPakTiU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-303-mTlohKLeNZSpDef0d5eAGA-1; Sat, 13 Aug 2022 20:06:54 -0400
X-MC-Unique: mTlohKLeNZSpDef0d5eAGA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72E1B1C05141;
	Sun, 14 Aug 2022 00:06:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 17FF6909FE;
	Sun, 14 Aug 2022 00:06:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6E4CB1946A4B;
	Sun, 14 Aug 2022 00:06:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Date: Sat, 13 Aug 2022 19:01:49 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.496.1660433371.10500.blinux-list@redhat.com>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com>
 <Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org>
 <02e001d8af3c$0d4cdfb0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131437260.1254020@server2.shellworld.net>
 <02fe01d8af46$46cde5e0$80ffa8c0@Win7VM>
 <mailman.463.1660420875.10498.blinux-list@redhat.com>
 <mailman.496.1660433371.10500.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.1.0)
X-Spam-Flag: NO
Message-ID: <mailman.479.1660435606.10504.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

The only problem with voxin is that it uses incredibly ancient libraries wh=
ich may stop working any day now. Sigh.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sat, 13 Aug 2022 19:29:22 -0400
Subject: Re: "Accessibility in Fedora Workstation" (fwd)

> I used JAWS before I used Orca.=A0 I had to learn some new things, but no=
t
many, so I had no reason to think we needed the makers of JAWS (whatever
name they now use) to port it to Linux.=A0 It also seems to me a strange
combination, Linux distributions containing solely or primarily free
software (almost always free of charge as well as the "four freedoms"
and JAWS, which was and remains proprietary.=A0 I have no idea what it
would cost that company to create a JAWS that works seamlessly with the
Linux kernel and the software running under it, but I so far have no
reason for wanting to pay for that.


The one thing I like about JAWS when I need to use our Windows machine
is Eloquence.=A0 It's the main reason my wife gives me for not wanting to
move to Linux.=A0 I've always assumed that somebody with the time, tools,
and knowledge, or some group, could create free software voices as good
as Eloquence.=A0 Maybe I should even try to be such a programmer, but that
will not be soon.=A0 In the meantime, I guess, there is Voxin, which I
think is not free software, in terms of freedom, but is cheaper than JAWS.


Al


On 8/13/22 16:01, Linux for blind general discussion wrote:
> there was an interesting discussion a month or so back on the blinux
> list about how long it took completing tasks in the gui as apposed to
> say command line,=A0 the comments were quite informative.
> Still, fs has never marketed largely to the end user. Instead they
> market to the American rehab community.
> how much market research has=A0 the rehab community done to support the
> need for choices?
> How many rehab counselors support=A0 training in Linux?
> one comment made by the subject of this thread about poor quality
> speech is a fine one...out of the box Linux has few speech choices.=A0
> everyone brings their needs to the table there.
>
> if you want to get fs to care about Linux, you=A0 need to prove there is
> money for=A0 them there, from their main source of income.
>
>
>
> On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>
>> Well since Orca seems to work on so many distros, I don't know why FS
>> would
>> not be able to do the same.
>> If Jaws users could switch into Linux, it would be a real game
>> changer, and
>> I think with lots more Blind Linux users, we would start seeing
>> accessibility in Linux not being a second thought.
>> Glenn
>> ----- Original Message -----
>> From: "Karen Lewellen" <klewellen@shellworld.net>
>> To: "K0LNY_Glenn" <glenn@ervin.email>
>> Cc: <speakup@linux-speakup.org>; "Milan Zamazal" <pdm@zamazal.org>;
>> <Blinux-list@redhat.com>
>> Sent: Saturday, August 13, 2022 1:47 PM
>> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>
>>
>> Well technically freedom scientific does not exist any longer, being
>> bought
>> by another company.
>> Still, I can respect why they, or nvda have not created their tools for
>> Linux.
>> That is because as I understand it, Linux is=A0 quite like clay. You can
>> mold a distribution into almost anything. there are various
>> personifications of the system, all sorts of ways and changes and
>> options
>> for creativity.
>> however adaptive tools are often extensions of physical characteristics,
>> hands, eyes, ears, brains, combinations of these.
>> To build solid assistive tools one must have a solid=A0 foundation as it
>> were.=A0 that is part of why there have needed to be so few Apple
>> efforts at
>> inclusion, they=A0 created=A0 with, and then created in-house adaptive t=
ools
>> for various=A0 populations that were built into the system.
>> Although Microsoft did not bother until much later, in theory at
>> least, the
>> consistency of windows is what makes it possible for freedom or the
>> former
>> gw=A0 micro or nvda to create something that can in theory=A0 work.
>> Floor for the furniture is somewhat solid.
>> Just my thoughts,
>>
>>
>>
>> On Sat, 13 Aug 2022, K0LNY_Glenn wrote:
>>
>>> I would like to see Freedom Scientific make a Jaws For Linux.
>>> JFL
>>> I'd certainly pay the yearly rental fee for it, and it would bring many
>>> more
>>> users into Linux.
>>> FS could, with its resources, possibly make it more robust than Orca.
>>>
>>> Glenn
>>> ----- Original Message -----
>>> From: "Milan Zamazal" <pdm@zamazal.org>
>>> To: <speakup@linux-speakup.org>
>>> Cc: <Blinux-list@redhat.com>
>>> Sent: Saturday, August 13, 2022 12:08 PM
>>> Subject: Re: "Accessibility in Fedora Workstation" (fwd)
>>>
>>>
>>>>>>>> "KL" =3D=3D Karen Lewellen <klewellen@shellworld.net> writes:
>>>
>>> =A0=A0 KL> What bothers me most are his lack of actual qualifications, =
and
>>> =A0=A0 KL> absolute dismissal of what he has not experienced..as if he
>>> =A0=A0 KL> defines Linux usage for everyone.=A0 That attitude is danger=
ous,
>>> =A0=A0 KL> because he is educating those outside of the accessibility
>>> =A0=A0 KL> experiences, who will believe his ignorance is factual.=A0 h=
e has
>>> =A0=A0 KL> to be expert, it is his job.
>>>
>>> Hi Karen,
>>>
>>> I know Lukas personally and I admire his skills and qualifications.=A0 =
I
>>> also know first hand that he is open to constructive feedback and I
>>> believe he=92d be happy to be corrected about possible technical
>>> inaccuracies in the interview.=A0 It may be also a good opportunity to
>>> find out what=92s possibly missing in making anybody better informed.
>>>
>>> As for =93absolute dismissal of what he has not experienced=94, what
>>> reasonable free software alternatives to a less or more standard
>>> desktop
>>> with Orca and a software synthesizer can you see for a common blind
>>> user
>>> who needs to use a fully working web browser, to read and process text
>>> documents, to be compatible with other computer users, etc.?
>>>
>>> And let=92s be realistic.=A0 We celebrate every single developer hired =
to
>>> improve accessibility.=A0 This tells something about the state of the
>>> matters.=A0 We cannot expect that a single person will fix all the kind=
s
>>> of accessibility problems in all the environments.=A0 Lukas works at hi=
s
>>> job focusing on certain areas currently seen there as urgent ones and I
>>> appreciate this opportunity.=A0 Anybody else seeing a need to work on
>>> other areas is welcome to contribute to whatever sees fit, as I do.
>>>
>>> Regards,
>>> Milan
>>>
>>>
>>>
>>>
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

