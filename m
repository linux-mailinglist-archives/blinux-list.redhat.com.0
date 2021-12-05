Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4749D468D5F
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 21:55:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638737717;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FZrpi3L791MeONFo/jhKcQGyU5IRKAfKH3y+A47MVJk=;
	b=YmT0Dy5WTv8f4g8JzuFN1hfCa7V0IuiZraIbBQK/nt7eUoGAJ3K/GxGeylD92iPewblFqM
	6W436sIKqOOuNLMbg1OxY0ILa3iDefWVeQjyY0KCvJm7jlqP3Revfws5HzJcssZv+tYQSv
	D+H6dA4s4IXkoKaw02PGo/zjECjvU+A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-508-FOs7frUEPm6FLIbXVh0ZqA-1; Sun, 05 Dec 2021 15:55:14 -0500
X-MC-Unique: FOs7frUEPm6FLIbXVh0ZqA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2DDE91006AA0;
	Sun,  5 Dec 2021 20:55:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAC3B5F4E9;
	Sun,  5 Dec 2021 20:55:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0C4F04BB7C;
	Sun,  5 Dec 2021 20:54:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5KqwnF025024 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 15:52:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 09F0151E3; Sun,  5 Dec 2021 20:52:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0276351E2
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 20:52:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 31324811E76
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 20:52:55 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-574-6jWtGGScOb2o1dcVDIyjkw-1; Sun, 05 Dec 2021 15:52:53 -0500
X-MC-Unique: 6jWtGGScOb2o1dcVDIyjkw-1
Received: by mail-ed1-f45.google.com with SMTP id y12so34452759eda.12
	for <blinux-list@redhat.com>; Sun, 05 Dec 2021 12:52:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6lJ7F3cfX7diM49iOWnv2M4iX8wWsD/roSW9gJJt8Vc=;
	b=CCKDBJ2NA4K05IAW2VHvFWr2mWayZXRGy2sweSHzt5fsucIx7Q6ubM/N63BvuMnXgK
	bLsS5yfNkphN4n+usaBpLGYQ44onMAA7wf32gqn9FCvcTsdUmSfULjoUzfQ2oBOGPaps
	ffThaR44nUQJl3IDPHHlFK0QJDXX4FUo8aLmj7qDspkP4ewxtZ1HZQjkafgV7esW36ue
	MVC1aD5Bm6s23WcwMwH4PMf8lz0CwZsbG1BSVjPgqZXGvWTByvPfNcMmd91FSTvutn0A
	0EaRXZ/O/KRRMe+KpymZ8yBW+x08dlXYeQewAv7wa8dhOyTd8Qzq8vk3ORc9dCWPJTvA
	yvoA==
X-Gm-Message-State: AOAM533NSsiXENuivRLiGo90lKLUSYV7bPjnzbwgQDY7B9oGx2y5lkil
	CmhYzzwKZgO1PrBXDmnfyQ3gGAy+kdctBA==
X-Google-Smtp-Source: ABdhPJymgaPnWakHHm7cce1QlJ/pSWGeWAethCQC+c6CJe1RE6vopr9vAXlUAZ6aY1rW7ROjgNysyg==
X-Received: by 2002:a17:907:7213:: with SMTP id
	dr19mr40242588ejc.157.1638737571663; 
	Sun, 05 Dec 2021 12:52:51 -0800 (PST)
Received: from [192.168.8.130] ([197.184.178.46])
	by smtp.gmail.com with ESMTPSA id
	c11sm6903696ede.32.2021.12.05.12.52.50 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Dec 2021 12:52:51 -0800 (PST)
Subject: Re: Useful aliases in .bashrc?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
	<20211205081607.1b8e272e@bigbox.attlocal.net>
	<16b79725-64b9-b768-5d88-08a9d76326c3@gmail.com>
	<20211205130841.61d4b8e1@bigbox.attlocal.net>
Message-ID: <840119b3-3339-45d1-e6e6-b3482572d575@gmail.com>
Date: Sun, 5 Dec 2021 22:52:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20211205130841.61d4b8e1@bigbox.attlocal.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hey Tim,


Thanks for the ramble, really enjoyable if you ask me.


Regarding castget, I actually found it in the slack builds in slint 
after doing a sudo spi -u && sudo spi -i castget


(configured my system to allow installing stuff using sudo under Slint, 
not aloud by default)


Now have to work threw getting all my crap (Hum-hum, I ment, podcasts) 
in there.


Unfortunately, I am caught in the Apple ecosystem because I use a lot of 
stuff that's Mac and iOS only, so have to pick, either listen on the 
computer or keep the podcasts on the phone. I'll listen on the computer, 
since I'm in the study most of the day anyway.


Warm regards,

Brandt Steenkamp

Sent from Slint Linux using Thunderbird

On 2021/12/05 21:08, Linux for blind general discussion wrote:
> Tim here.
>
>> Quick question, please ramble if you'd like
> You're just inviting trouble here. (grins)
>
>> managing podcasts, how?
>> To expand on that a bit, what do you use for a pod catcher;
> I use castget (scheduled from cron) to fetch my podcasts
>
>> where do they go
> In my case, each podcast gets dumped in its own sub-folder of my
> choosing, renamed using its date and title (and classified as a
> Podcast overriding whatever classification the provider used).  From
> my ~/.castgetrc
>
>    [*]
>    id3contenttype=Podcast
>    filename=%(date)_%(title).mp3
>
>    [wayword]
>    spool=/home/tim/Music/podcasts/queue/W_WayWord/
>    id3leadartist="Way With Words"
>    url=http://feeds.waywordradio.org/awwwpodcast
>
>    # and 56 other podcast entries follow
>
> I then have some wrapper shell-scripting that automates a bunch of
> actions so I don't have to do them manually:
>
> - deletes some known episodes I don't care about (things like reruns,
>    certain keywords, some that are .m4v videos instead of .mp3 audio,
>    etc)
>
> - perform some automated advertisement-removal (chop the first or
>    last N seconds off various podcasts using mp3splt; one particularly
>    grievous one has some intro followed by adverts allowing me to lop
>    7 minutes off the front and not miss much of anything)
>
> - renames them to a convention that doesn't choke my podcast player
>    (VLC on my phone doesn't like "#" characters and I do some other
>    normalization with the rename(1) command)
>
> - clears out my old "current/" directory
>
> - moves/renames all the nested structure from my "queue" directory
>    into a flat file-structure in my "current/" directory
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
>> I'd like to get most of them off of there, space and all.
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

