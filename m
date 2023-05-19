Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9106670A2E8
	for <lists+blinux-list@lfdr.de>; Sat, 20 May 2023 00:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1684536714;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OxLiTvH6Wn9gm2YC9vIwcVYQIrmpr3svqelbulq4HIs=;
	b=Cf/w0fqIbHIXrrzkbj2rKrTR3A2yPgyfHmeRjq3g2xF4ycpoUsIsfKRcLayVw6SWPruRP3
	aMHzHaA2Kox1SrVMwUIFkW3HG2GxqSQsmij+pv91IcpWSiPFDnWJf2D3CRxb0gj2SGoWIy
	yXHMy2Up5k/0BGO+tSSdH6B+XMm0txI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-260-3O_mhEMmMCGnRYKj-UixVg-1; Fri, 19 May 2023 18:51:52 -0400
X-MC-Unique: 3O_mhEMmMCGnRYKj-UixVg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5D6480013A;
	Fri, 19 May 2023 22:51:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 28D37140E954;
	Fri, 19 May 2023 22:51:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 613CB19465BA;
	Fri, 19 May 2023 22:51:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Useful aliases in .bashrc?
Date: Fri, 19 May 2023 17:52:03 -0500
MIME-Version: 1.0
In-Reply-To: <20211205130841.61d4b8e1@bigbox.attlocal.net>
References: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
 <20211205081607.1b8e272e@bigbox.attlocal.net>
 <16b79725-64b9-b768-5d88-08a9d76326c3@gmail.com>
 <20211205130841.61d4b8e1@bigbox.attlocal.net>
User-Agent: POP Peeper Pro (5.4.5.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:X0z7JJDfqfQ=;4Khfmg1OWAfO1KHB2QzSTmjrND5
 DwjOBv8kwAFxu1xgFMhS4p7FQlGc2RyLS927H9I9PJ4m1z/Uk7JkJ8RiWRzhnQueADuDg6sgT
 q9HId4gI9mWFZxtEznSuv2gnTpGn+xq73LZON2JzqHC8z3qZIBq+iFe0tE+4gN078nE8q+cHi
 Q52fQXTuU1FkzSCfk1bt0yX/pX/jjGlkBDpvfIP7u0yO9rvL9yyjN0R27OZDIpsH2hmx2GYE2
 gora30h0vfps/MnJ+CR1xJRh6TZmnWWY3Ica5BEMK8/XN3uwfzm3VwMi6eflmnOg7lPSuypoq
 rHbmRVse3ZAve1l5p1p4Bodx/Cvd5z40ckuTWPM5+67DQx3eGHlNqAiLI2gzkqhhvCJdOqkGM
 CfbK5TPr00jcfakluO3e+HYJpBCqqQKREp8I2m2Fra77TK9B26XPpxSAfiS26ooUBgMHH0Ki1
 d60E2NKrQHYsBl4P1EBbQhTV9V/YEmKTYnW6qkwquXG1abNL8gCTgIolDzcc/2kyhGMA3NEPI
 Aq3Bo0TsdSG3C4ag1RUhjvF3/FAnggmwdOOPzQBfl1sucoZi7Uv9FuypWDKoIKy1e89kZMKw0
 UO/tZxGTT9o3kCyhTu8ytETSW1EoPi+E/JrRDfLlq8t537fu41kFxiVwqFM8rpAGvAlGGVhaO
 7RjQUEan7F79A5PAsGKU2pDdIbazjNScA4A2Fq+jti0u4WFa5+4DpLa+D/gte/G3KzAaVLWmp
 7Inn7kC2pOIDABPJ4QlhyI0PMh8tkrpQyzA90pGxUNapAeWLKUIZEvngP9WjjdNEiZycysvJq
 zZ2CJFRloLc8sVukcik/tTRHmFfeZRNGO4/Hk7lEsjVqeDBySjonkjXWmuiwiUIqtZPO99j/J
 ObWGK8hg/og3s1BIdARGPMnGUXx2L50ffRDpONc/pod6wogX1+CmzD6BQZYhF67zInwFURUSv
 Dyx80LukK/szVl4gurT/9Mp8PV8=
Message-ID: <mailman.1709.1684536700.1505529.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> I then have some wrapper shell-scripting that automates a bunch of
> actions so I don't have to do them manually:

Would you mind sharing some of those scripts? If you'd rather do so off list you can do that at:
captinlogic@gmail.com

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sun, 5 Dec 2021 13:08:41 -0600
Subject: Re: Useful aliases in .bashrc?

> Tim here.
>
> > Quick question, please ramble if you'd like
>
> You're just inviting trouble here. (grins)
>
> > managing podcasts, how?
> > To expand on that a bit, what do you use for a pod catcher;
>
> I use castget (scheduled from cron) to fetch my podcasts
>
> > where do they go
>
> In my case, each podcast gets dumped in its own sub-folder of my
> choosing, renamed using its date and title (and classified as a
> Podcast overriding whatever classification the provider used).  From
> my ~/.castgetrc
>
>   [*]
>   id3contenttype=Podcast
>   filename=%(date)_%(title).mp3
>
>   [wayword]
>   spool=/home/tim/Music/podcasts/queue/W_WayWord/
>   id3leadartist="Way With Words"
>   url=http://feeds.waywordradio.org/awwwpodcast
>
>   # and 56 other podcast entries follow
>
> I then have some wrapper shell-scripting that automates a bunch of
> actions so I don't have to do them manually:
>
> - deletes some known episodes I don't care about (things like reruns,
>   certain keywords, some that are .m4v videos instead of .mp3 audio,
>   etc)
>
> - perform some automated advertisement-removal (chop the first or
>   last N seconds off various podcasts using mp3splt; one particularly
>   grievous one has some intro followed by adverts allowing me to lop
>   7 minutes off the front and not miss much of anything)
>
> - renames them to a convention that doesn't choke my podcast player
>   (VLC on my phone doesn't like "#" characters and I do some other
>   normalization with the rename(1) command)
>
> - clears out my old "current/" directory
>
> - moves/renames all the nested structure from my "queue" directory
>   into a flat file-structure in my "current/" directory
>
> With one big directory of the files, I can then easily send them over
> to my phone. I happen to have termux (a terminal emulator) on my
> phone and just scp them over the wifi network, but in the past I've
> plugged my phone into the computer and used the file-browser to
> copy/paste them from the directory into the Podcasts directory of my
> phone.
>
> I keep both the current/ directory and my queue/ directory around so
> that in case something goes wrong on my MP3 player (over the 15
> to 20 years I've been listening to podcasts, 3 of 'em have died), I
> still have an archive of what it contained so I only have to load the
> current/ directory onto a new player and resume where I left off.
> Meanwhile the queue/ directory holds all the new stuff.
>
> I also have a backlog/ directory as well.  Sometimes if I add a new
> podcast feed, it has a lot of back episodes that I want to listen
> through but don't want them all in one huge dose, so I'll download
> them but mirror my queue/ directory in the backlog/ directory and
> move the backlog of podcasts into there.  From time to time, when I'm
> ready to reload my player and the queue seems a bit shallow, I'll
> move in some of the items from the backlog.
>
> However, in some cases I'll use castget's "catch-up" feature to load
> a podcast feed and mark them all as already fetched without actually
> downloading the episodes themselves (good for dropping in the middle
> of a long podcast history). The history is stored in fairly readable
> XML files in ~/.castget/ so when adding new feeds, sometimes I'll mark
> the whole feed as caught up and then go delete the lines for
> particular episodes, then run castget again where it will pull down
> just the ones I deleted.
>
> I reload roughly 3GB at a time which, at roughly 250% playback speed,
> tends to last me 2 to 3 weeks worth of going for walks and chores.
>
> One other trick I've learned is to limit the space available for my
> podcasts.  I'm running FreeBSD so my ~/Music/podcasts/ a ZFS dataset
> that has a limit/quota of ~15GB.  Occasionally a feed will change the
> GUIDs or the filenames making the whole feed appear as new files, and
> end up trying to download gigs of data.  By forcing it to download to
> a size-restricted space, castget bails out before totally killing your
> drivespace and bandwidth.
>
> > I'd like to get most of them off of there, space and all.
>
> If you want to get rid of them completely, they're just .mp3 files on
> the drive, so you can delete them as you would any other file.  If
> you want to archive them off to some external storage like a USB
> drive, you can copy/move them just as I've copied them to my phone.
> However, I don't usually find a need to archive them off unless
> there's a particularly noteworthy episode.
>
> Hopefully that gives you some ideas to work with.  And an adequate
> ramble. (grins)
>
> -tim
>
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

