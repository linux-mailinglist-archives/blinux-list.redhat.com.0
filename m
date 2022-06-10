Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B35546A62
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jun 2022 18:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654878678;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IyNUcxq9ivKgooN7OA6YPcvPFn/3AJWeNT5Ev9HKjOM=;
	b=RqwV2zqzY6OfQ+flB9AteU/LLB2Y5GM9NV7v8+yTXl1NPoY6k6sVcwWv+U1aQEpKulLlri
	dxwFA5zSfmAnmATp29AYLWI5YfQSxYwyxzSAdGnrVYqRNtDFGnFEzyPg1KEpwxzitbXjQw
	sg5ufLU4lq8ACugved6wQE36j2F+6Ew=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-203-Thvz-VhfMBaV4FHSqka_Ng-1; Fri, 10 Jun 2022 12:31:14 -0400
X-MC-Unique: Thvz-VhfMBaV4FHSqka_Ng-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C033A80159B;
	Fri, 10 Jun 2022 16:31:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DCA8C1415100;
	Fri, 10 Jun 2022 16:31:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4B9E51947056;
	Fri, 10 Jun 2022 16:31:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: nvda2speechd, let Windows programs talk through Speech dispatcher
Date: Fri, 10 Jun 2022 11:30:55 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.23803.1654878227.111202.blinux-list@redhat.com>
References: <mailman.21931.1654440086.111204.blinux-list@redhat.com>
 <mailman.21900.1654458346.111208.blinux-list@redhat.com>
 <mailman.22357.1654606973.111201.blinux-list@redhat.com>
 <mailman.22758.1654693519.111210.blinux-list@redhat.com>
 <mailman.22854.1654697491.111205.blinux-list@redhat.com>
 <mailman.22995.1654713475.111210.blinux-list@redhat.com>
 <mailman.23313.1654723703.111209.blinux-list@redhat.com>
 <mailman.23580.1654785637.111202.blinux-list@redhat.com>
 <mailman.23849.1654860088.111201.blinux-list@redhat.com>
 <mailman.23803.1654878227.111202.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Spam-Flag: NO
Message-ID: <mailman.23164.1654878663.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I do love that app too. So nice, the reddit page is so cluttered.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Date: Fri, 10 Jun 2022 11:23:28 -0500
Subject: Re: nvda2speechd, let Windows programs talk through Speech dispatc=
her

> I wonder if Reddit For Blind works? That's be really nice.
Devin Prater
r.d.t.prater@gmail.com




On Fri, Jun 10, 2022 at 6:21 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> And as an updatte to that
>
>
> It now works after yesterday's Arch update on 99% of things I've tried,
> so I'm assuming something changed for the nrtter
>
> On 6/9/22 15:40, Linux for blind general discussion wrote:
> > Hi,
> >
> > great. So, this means the problem is on the side of the dll or Wine.
> >
> >
> > testclient is a Linux application purely connecting to and communicatin=
g
> > with the server, so it's not affected (in fact, not even related) to th=
e
> > SAPI presence.
> >
> >
> > Could you, perhaps, try out installing the sapi via:
> >
> > winetricks -q speechsdk
> >
> >
> > Or, if you'd better not mess up your Wine installation, if you share a
> > specific easy to try audiogame that doesn't work, I can test it out in =
a
> > VM with both present and not present SAPI, so we would see if this is
> > causing the issue.
> >
> >
> > Best regards
> >
> >
> > Rastislav
> >
> >
> > Dna 8. 6. 2022 o 23:27 Linux for blind general discussion nap=EDsal(a):
> >> That does, in fact, work fine yes. I've been poking and prodding at
> >> various games/apps with no luck however, unsure how the
> >> nvdaControllerClient32 or 64.dll interacts with the server or installe=
d
> >> programs though.
> >>
> >> I've been trying a variety of audiogames that ship with NVDA support t=
o
> >> no luck, however I did just find out that no, I do not need (at least
> >> for testclient) an installed SAPI setup though, obviously actual
> >> games/programs may be different, however
> >>
> >>
> >> So in short, testclient works, but nothing past that?
> >>
> >>
> >> On 6/8/22 19:37, Linux for blind general discussion wrote:
> >>> Hello,
> >>>
> >>> while I get this up and running, a part of the nvda2speechd is an
> >>> application called testclient.
> >>>
> >>> You can compile it using cargo build --release -q, or use this binary=
:
> >>>
> >>> https://drive.proton.me/urls/95MV5TEK7M#jyQXOaJvojkY
> >>>
> >>>
> >>> SHA256:
> 82fb866d000a05942d6109daf58e36ee6feaba8bf30644738277ba140b90ee40
> >>>
> >>>
> >>> this application works as a terminal client to the server. You launch
> >>> it, and type command "speakText some text".
> >>>
> >>> If you hear the server speak, the connection works.
> >>>
> >>> You can quit using the quit command.
> >>>
> >>>
> >>> This should tell you, whether nvda2speechd server is working correctl=
y.
> >>> If no, we need to search the problem there, if yes, there is a proble=
m
> >>> with the library or application.
> >>>
> >>>
> >>> Whether SAPI installation is needed or not depends largely on how is
> the
> >>> app programmed. Honestly, I didn't test out with a clear wine
> >>> installation, so I can't tell which variant is to be expected, it's
> also
> >>> possible that the app crashes exactly because of missing SAPI, since
> >>> usually programmers expect it to be at least present, even if not use=
d.
> >>>
> >>>
> >>> Best regards
> >>>
> >>>
> >>> Rastislav
> >>>
> >>>
> >>> Dna 8. 6. 2022 o 16:09 Linux for blind general discussion nap=EDsal(a=
):
> >>>> Boot the ISO and hit down once then enter, it should come up talking
> >>>>
> >>>>
> >>>> If not, systemctl enable --startnow espeakup
> >>>>
> >>>>
> >>>> I'm trying to work out why I'm getting a lot of things about SAPI, a=
nd
> >>>> if I need voices installed because I am going from a completely
> standard
> >>>> wine installation on a 64bit machine, yet it's flooding my terminal
> with
> >>>> a ton of voice list things about SAPI however so I'm unsure.
> >>>>
> >>>>
> >>>> Do I need to install under wine the speechsdk and things or should
> >>>> nvda2speechd take care of that. It's establishing a connection,
> but...no
> >>>> luck
> >>>>
> >>>> On 6/8/22 13:44, Linux for blind general discussion wrote:
> >>>>> Hi,
> >>>>>
> >>>>> I saw your issue on Github, will be getting to it soon.
> >>>>>
> >>>>> Right now, I'm trying to figure out how to boot up Archlinux into t=
he
> >>>>> accessible mode in quickemu, so I can get at least a similar
> environment.
> >>>>>
> >>>>>
> >>>>> Best regards
> >>>>>
> >>>>>
> >>>>> Rastislav
> >>>>>
> >>>>>
> >>>>> Dna 7. 6. 2022 o 15:02 Linux for blind general discussion nap=EDsal=
(a):
> >>>>>> As said on the Github page. I'm running this under Arch and get no
> >>>>>> output at all.
> >>>>>>
> >>>>>> what I do
> >>>>>>
> >>>>>> 1. Download Windows exe and extract it
> >>>>>>
> >>>>>> 2. Grab the server/client and rename/replace nvdaControllerxx.dll
> >>>>>> where xx is 32 or 64
> >>>>>>
> >>>>>> 3. start the server with ./nvda2speechd in its folder
> >>>>>>
> >>>>>> 4. wine windowsexe.exe
> >>>>>>
> >>>>>> I get a connection has been established on the tab with the
> >>>>>> nvda2speechd running, and no speech from the program at all howeve=
r,
> >>>>>> and a boatload of WINE Sapi errors, it seems* to me like it's
> looking
> >>>>>> for the SAPI stuff
> >>>>>>
> >>>>>> Am I missing someething super super obvious here or?
> >>>>>>
> >>>>>> On 05/06/2022, Linux for blind general discussion
> >>>>>> <blinux-list@redhat.com> wrote:
> >>>>>>> I avoid GUI apps in general and I think the last time I used Wine
> >>>>>>> might have been years before I went blind, but this still sounds
> like
> >>>>>>> a significant step forward for the accessibility of non-native
> >>>>>>> software, and surprisingly elegant to boot.
> >>>>>>>
> >>>>>>> _______________________________________________
> >>>>>>> Blinux-list mailing list
> >>>>>>> Blinux-list@redhat.com
> >>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>>>>
> >>>>>>>
> >>>>>> _______________________________________________
> >>>>>> Blinux-list mailing list
> >>>>>> Blinux-list@redhat.com
> >>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>>>
> >>>>> _______________________________________________
> >>>>> Blinux-list mailing list
> >>>>> Blinux-list@redhat.com
> >>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

