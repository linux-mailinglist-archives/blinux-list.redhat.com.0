Return-Path: <blinux-list+bncBDYPVTOXSQEBB2XJ7CXAMGQEQSARZUY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC5E869FF7
	for <lists+blinux-list@lfdr.de>; Tue, 27 Feb 2024 20:15:55 +0100 (CET)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3c1a5031bb7sf1869450b6e.1
        for <lists+blinux-list@lfdr.de>; Tue, 27 Feb 2024 11:15:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709061354; cv=pass;
        d=google.com; s=arc-20160816;
        b=LAvVoMSi7+r6J4AgQI+Kbwnt5HOaU+AjVrahcC+/zfX4hSkktThVUD212aT5UQatsl
         GxVF+MT7WEuTCzfkQLhppqIO+GrUSqowxyCTisMv0E8m8uSA0yhS3PS2ip9B4RmWqcOo
         GZy/AJzPiwiK5+NNf7XkCP+bW+nYZGmE+gCEjE4CDGtaK9zTmSwvLONdsdUytXuRiQvS
         sWESDrm0jWCx7KsT3hGMc1FMVufQ+eubpIyJGCOgxAcUguCAX+ygK2xzcelYhQaxAWUg
         SMlsZCjR+GjdTUfXDLbW8JQbG8tpMKrtW/lb/r8FiZ6sIYqweEnhhU8IKf8AQM5XVTpL
         Xohg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=lz0ZSSuFP+rtnkJrjRWcI1rLtDpv9LLT9r0scUk6+WU=;
        fh=y3/Sh5X9k0PTlcXk6iEphUebV7Fw5/ryHOxFvx06PO4=;
        b=eDs+pZwkb/PAC14PRLqiMntbm5YIc6+ADh7duXQYkiy0Cuq7SOXYTaYbNywAoG5A3Z
         Rk33fCzrl0G+QQ84HptmIFcSrc2aFd03Bipn/li1mTm/dhRg1fhWYc3IWvPj16I8yekQ
         KqgegceajGbUo2Mb4sKSg7evZBFJEHErB/RqTPtcQj4mrSv2xgavlKrjC+iRAFfW6GHU
         aU3fJ5VNny+Iwnhp5FqeTyLBiFdjsUpRGyIFPlfXG64rg+liZcfU6t4ZtyJ7/AQyok19
         DCbvjsSQdfZMNXKx1D7TGfoi08cOfnzYg63gQH71cnUY3hZoYijJC1AJ1PUrlVwSmnY7
         f8qw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709061354; x=1709666154;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lz0ZSSuFP+rtnkJrjRWcI1rLtDpv9LLT9r0scUk6+WU=;
        b=iDM4kuXd1cH9LbVw5hfm5FMGneTXtetTZLft9ch4WGVQqBCCk1Z/puhTHF+/hSztpo
         0fLHezkTI2/elK7cv92wk8EtRHPaUXics6qn6lK3S0qIP6Wv9ag8pgGWYzjiKB3humdF
         +I2gu4pysxKzHdf8XN97EUI5hoVCKKnVJEB7YfX1z8vnHRSgHu9M+kEc+7C2C0tKl936
         rjK5ZQb6ZoZipqex3zoLtDBuoQyXzThn9tjejh4klks4E5A/1wMOXMRN7Vl2WGaR7mQm
         uF5oVDxoZoJs351qljXY5nNDKcsdJE9rYcUYUUMI6EVIptJ7MBBfMuH+cfdwtC0R8ePs
         c4Wg==
X-Forwarded-Encrypted: i=2; AJvYcCWPSOc0zFLFkkNnE8hRspZSqmK6bCzoGHLlbgIhqXe7yvvhX+nSDg07od2py1RM0Fcplt+Ey8iqE6PpjBdMbxA7MLhILG4I3d+2
X-Gm-Message-State: AOJu0YyTiyzBdhopR/iHJW3ufmHwSYwYQCuNd27kdNKQpQjUAFuBixKM
	lCOvzsZCcP3wlptVQyzADetY/92KzjErjrGA5P0HeHkXrwtvj9NDweJdBoMpFwc=
X-Google-Smtp-Source: AGHT+IH5WRZWvxXecC47tiYLpBcW3s1G6d3ynExGG4ov35reVhwIiu3TmUtXu1h3McyCWyzI6GrBqA==
X-Received: by 2002:a05:6871:a68d:b0:21e:77bd:b7e0 with SMTP id wh13-20020a056871a68d00b0021e77bdb7e0mr10261018oab.39.1709061354332;
        Tue, 27 Feb 2024 11:15:54 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:230d:b0:220:4300:c4ef with SMTP id
 w13-20020a056870230d00b002204300c4efls1066783oao.2.-pod-prod-06-us; Tue, 27
 Feb 2024 11:15:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWy3sg8D7xPNDer42jmQrKFmSB/mUzyQgKjuoEsPUSH5UMfGpXtZC93+vYC7DUtLawU0pNnQP+0nYMBJ2R/TPxD4iRssS/DpXQrhefd
X-Received: by 2002:a05:6870:659e:b0:21f:4534:8977 with SMTP id fp30-20020a056870659e00b0021f45348977mr10729278oab.31.1709061353459;
        Tue, 27 Feb 2024 11:15:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709061352; cv=none;
        d=google.com; s=arc-20160816;
        b=l4z/QCFGMgptYqc+IujM4SJBGxVF9VZ8dVTyKwsKmfcxkVmJNKO1uzfb2DAdn4jfSD
         vQou4oFqTUUuPGHMv1RqIyPWUahB+102NarBvqFBJ3sizaFUqZ8CCvbExLBr3yueS966
         tK204PzlCeoBkOznQMoQ5VUbmLzx5uDtMwiK51t52pz6cK9IbCo0lPNFDjAk25UK69DS
         yricHL9OpuI4H5EVCEMIs2wgiDG3Q0v10FQgD3ujzoV1V7Z4Qz5qA2vBd6cqyJ13asaO
         dpAg99B8G7xVzAl4qLPXKDF82Pjo7+Jx8KmeMI5xCdkrmoQ93zBk983Lry7c3f6bYZu9
         PSFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=7xTr1lI2vbI3WgiE8dieku7tgSdYs9LAKj1nhhOruMA=;
        fh=xjr+nr5u++CU8k7N6XBcrDU/Vwd1Ngx6NopgaRunhU8=;
        b=0T3xujIbF0v1Hsc36iCe0V+C9O50zGvSGvtgHl7zt21OGKSLBp2tuWABjsMXw119Fk
         QaSYZL3VWcZTqlywo7qKwzkB8uasaylrwpolvpKbj+nZ3y/W48vRHnUouYyQh6ORlLGG
         SbdUfyjJh6tIH7AZX08mSDOwFGfO6duxkf+IAREX3bCGsZKjLXL0WMLYJuzowhOK5KRF
         Y4ulntcNGOnmXL7eCDxwwfl1oXOwDoqtKf9lBrZDrIvTMMBOdGordsXdkMkxqc90SS5P
         1VNKHQ+r7oGOg8xpID39J5GOO/Y3vBmeXGHJpFZz5XZqffPzp/xKEn7TPOVdfNMyk9ia
         TPKA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id v24-20020a05620a091800b00785d5fb869asi8088917qkv.208.2024.02.27.11.15.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 11:15:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-401-BDsrYCl0OsSLHdvEE8gZNw-1; Tue, 27 Feb 2024 14:15:50 -0500
X-MC-Unique: BDsrYCl0OsSLHdvEE8gZNw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7390D868A00
	for <blinux-list@gapps.redhat.com>; Tue, 27 Feb 2024 19:15:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 708C5492BE3; Tue, 27 Feb 2024 19:15:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9ED4E492BD7
	for <blinux-list@redhat.com>; Tue, 27 Feb 2024 19:15:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48E9E3869145
	for <blinux-list@redhat.com>; Tue, 27 Feb 2024 19:15:49 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-259-b5WnOK2SOcWm5649hS1MHg-1; Tue,
 27 Feb 2024 14:15:47 -0500
X-MC-Unique: b5WnOK2SOcWm5649hS1MHg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TknJM1d1fz18Hk;
	Tue, 27 Feb 2024 14:15:47 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TknJM1Qx6zcbc; Tue, 27 Feb 2024 14:15:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TknJM1MhCzcbC;
	Tue, 27 Feb 2024 14:15:47 -0500 (EST)
Date: Tue, 27 Feb 2024 14:15:47 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Martin McCormick <martin.m@suddenlink.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Keeping Orca Talking
In-Reply-To: <E1rf21P-00085h-Q5@wb5agz>
Message-ID: <f0af8fd9-8801-3e60-93dd-d49cad1e6662@panix.com>
References: <E1reg56-0002ET-Pr@wb5agz> <fc7ed743-6f4e-40d8-b41c-d95a3f8b06bc@gmx.it> <E1rf21P-00085h-Q5@wb5agz>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Speech synthesis was in use in 1964 but you would have had to be flying a
fighter plane to hear it.  Pilots needed the speech sounding inhuman so
they could tell it apart from their radio and intercom traffic.
Electronics is more of an open field these days than it was earlier since
colorimeters are available on the iphone and inexpensive at  that.  Also
soldering is no problem if done correctly.  Wrapping solder around a joint
when cold then placing the loop on the joint and then applying power for a
few seconds gets the joint soldered with no burnt fingers.  I think solder
starts smelling when it melts so clear sinuses can be helpful.  This is a
summary of an article in New Beacon Magazine written in the 1970's by
blind hams who were responsible for running the radio network in the chain
home network England used to defeat the Germans during World War II.
Those hams were responsible for use of radios and repair of radios so had
to know how to solder after a bomb may have damaged some radio equipment.



--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 27 Feb 2024, Martin McCormick wrote:

> Your take on the terminal or command-line is very similar to
> mine.  I began programming the Apple II back in 1979 and then
> went to MSDOS in the eighties and did 6502 assembler on the Apple
> and 8086 assembler on the IBM PC and clones during the eighties
> and finally got a job in network operations for the last 25 years
> before I retired and that job was my first encounter with unix,
> shell scripting and C.  The unix command line was every wish I
> had ever had about the command line being granted.  Try setting
> the system's time, for instance, in a DOS bat file.
>
> 	At the age of 72, I have been using the graphical user
> interface on Macs since voiceover came out in the first decade of
> the 2000's and Windows with nvda since 2019 and I still like the
> command-line best since it is like having a conversation and more
> easily scripted and automated.
>
> 	As someone who was born blind, I sort of straddle the
> days before personal computers and the days after their
> introduction around 1980 and I did not even think of majoring in
> computer science in college which started for me in the Fall of
> 1970.  Being interested in in electronics and amateur radio since I
> was 5 years old ruled my life choices and I made a major mistake
> as a freshman when I listened to an advisor who was a nice enough
> fellow but a total ignoramus when it came to electronics and
> engineering.  He talked me out of majoring in that and I had an
> interesting 4 years and graduated but by the time I did so, I
> realized that I didn't like the broadcasting industry much and
> the traditional jobs for blind folks were totally unappealing to
> me so I worked for our state's Library for the blind as a
> technical person and saved up enough to go back to school.
>
> 	What does this have to do with Linux and blind people?
> Not much but my hobbies were what got me in to computing kind of
> by accident, unsuccessful job searching for something interesting
> and my nack for graduating college just as the economy would tank.
> It happened twice for crying out loud.
>
> 	While in Graduate school, I saw my first microcomputer
> during a lecture and demonstration.  This would have been in 1977
> and was a 6800-based PDP8 with 8 or 16  big toggle switches
> across the front panel and a LED readout of a few characters.
>
> 	What it did not have is just as important as what it had.
>
> 	I don't remember how much RAM it had and it probably had
> enough ROM to accept input from those toggle switches and also a
> paper tape reperf machine (program storage) and the LED's were
> one's output.  You had to decode the output depending on what you
> were doing.  Did it talk?  Heck no!  In 1977, that would have
> been science fiction.  Actually, it could have spoken individual
> characters with a Telesensory Systems speech board but one was on
> their own when it came to stuff like that back then.
>
> 	The lecture and presentation was given by a professor
> from the University of Houston, Clear Lake City campus and he was
> one of those guys who knew everything and was patient when you
> asked him dumb questions like one I asked after the talk when I
> came up to examine the computer.
>
> 	I asked him if it was connected to our university main
> frame and he did not laugh but said that "no, this is a whole
> computer."
>
> 	He also said that it could be connected to a main frame
> with a modem, the first time I ever heard that acronym.  The
> amateur radio hobby came in handy right then because I knew from
> the world of amateur radio about what is called a TU or Terminal
> Unit which is used for radio teletype and is just a modem by
> another name.
>
> 	There may have even been elementary forms of basic on
> rolls of paper tape that one could load in to that 6800 system.
>
> 	My memory is hazy from 45 years ago but the LED readouts
> may have shown the address bus interspersed with data because one
> frequently single-stepped through a running program in machine
> language to study it.
>
> 	To make the long story shorter and to provide food for
> thought for those at the beginning of their search for gainful
> employment in something they can stand, I will just say that in
> 1989, I got layed off from a job as a repair technician but had
> contacts with our university's computer center and had learned
> enough about digital technology to be useful to them so I started
> as a part-timer for a year and ended up there until I retired in
> 2015.
>
> 	It was the best full-time job I ever had.
>
> 	If you really enjoy technology but are blind, you've just
> got to get your ducks in a row and know how to do something
> useful and not take no for an answer.  Enough of the motivational
> stuff and no, I don't "live in a van by the river."
>
> 	For those not familiar with American TV comedy shows,
> that is a reference  to a skit that was once on a satirical
> Saturday-night comedy show about a ne'er-do-well who, wait for
> it, lives in a van by the river, has a gravelly voice and who
> gives motivational speeches and describes where he lives.
>
> Martin
> "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com> writes:
> > I generally just use the sound settings available from my system
> > preferences menu. But I'm running MATE on Fedora here, so your mileage
> > with this may vary somewhat, or possibly quite a lot. These days I
> > usually try to stay out of a terminal, as most things work as expected
> > from the graphical desktop interface. Still, I do find some things are a
> > little faster in a terminal since I still know my way around a shell
> > just a bit. Sound though is not one of those things, at least not for
> > me, as it is quite a lot less complicated now than it was 20 years or so
> > ago when I started using Linux primarily, though not exclusively as I do
> > now. Those were the days before Orca, even before Gnopernicus, when the
> > Linux terminal brought me back to the days of DOS, but put it on
> > steroids and made it much nicer than DOS ever dreamed of.
> >
> > ~Kyle
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

