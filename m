Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AC3468D1A
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 20:55:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638734114;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UdcYRZOIgwbYzVTToxq4OJ65TrdGBJwU7/kxF9/cFls=;
	b=JMn5rJcNTLI2UO1jDx9ScXvcXcgifziCERY/o09Xm4UlqgKjzFYJhClFWNkfVonyVJ3lhW
	BcDl8DawAXhMyqPuX05xuMc2qm4IrBODuHtHPAghuVcb6ih9c4IKPwHJsTuy59liOFZobz
	YKiH0hQYOVo1iU4igAI9MY5/1NrkYzI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-526-tlF-HtYGNXe1cU3vBGjEKw-1; Sun, 05 Dec 2021 14:55:11 -0500
X-MC-Unique: tlF-HtYGNXe1cU3vBGjEKw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88EE5801B10;
	Sun,  5 Dec 2021 19:55:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 548E65F4EA;
	Sun,  5 Dec 2021 19:55:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6BB274CA93;
	Sun,  5 Dec 2021 19:55:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5JssYU021395 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 14:54:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 967B8C15E73; Sun,  5 Dec 2021 19:54:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 916ABC15E72
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 19:54:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6E01A3C02B34
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 19:54:54 +0000 (UTC)
Received: from gateway1.unifiedlayer.com (gateway1.unifiedlayer.com
	[67.20.79.92]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-446-4D0Uzi-tM-i3nHOfI0LJcg-1; Sun, 05 Dec 2021 14:54:51 -0500
X-MC-Unique: 4D0Uzi-tM-i3nHOfI0LJcg-1
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway1.unifiedlayer.com (Postfix) with ESMTP id E9712200941BA
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 13:08:42 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id twsMmOqF6uhW2twsMm7586; Sun, 05 Dec 2021 13:08:42 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:25933 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mtwsM-000nJO-Kz
	for blinux-list@redhat.com; Sun, 05 Dec 2021 13:08:42 -0600
Date: Sun, 5 Dec 2021 13:08:41 -0600
To: blinux-list@redhat.com
Subject: Re: Useful aliases in .bashrc?
Message-ID: <20211205130841.61d4b8e1@bigbox.attlocal.net>
In-Reply-To: <16b79725-64b9-b768-5d88-08a9d76326c3@gmail.com>
References: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
	<20211205081607.1b8e272e@bigbox.attlocal.net>
	<16b79725-64b9-b768-5d88-08a9d76326c3@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1mtwsM-000nJO-Kz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:25933
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.

> Quick question, please ramble if you'd like

You're just inviting trouble here. (grins)

> managing podcasts, how?
> To expand on that a bit, what do you use for a pod catcher;

I use castget (scheduled from cron) to fetch my podcasts

> where do they go

In my case, each podcast gets dumped in its own sub-folder of my
choosing, renamed using its date and title (and classified as a
Podcast overriding whatever classification the provider used).  From
my ~/.castgetrc

  [*]
  id3contenttype=Podcast
  filename=%(date)_%(title).mp3

  [wayword]
  spool=/home/tim/Music/podcasts/queue/W_WayWord/
  id3leadartist="Way With Words"
  url=http://feeds.waywordradio.org/awwwpodcast

  # and 56 other podcast entries follow

I then have some wrapper shell-scripting that automates a bunch of
actions so I don't have to do them manually:

- deletes some known episodes I don't care about (things like reruns,
  certain keywords, some that are .m4v videos instead of .mp3 audio,
  etc)

- perform some automated advertisement-removal (chop the first or
  last N seconds off various podcasts using mp3splt; one particularly
  grievous one has some intro followed by adverts allowing me to lop
  7 minutes off the front and not miss much of anything)

- renames them to a convention that doesn't choke my podcast player
  (VLC on my phone doesn't like "#" characters and I do some other
  normalization with the rename(1) command)

- clears out my old "current/" directory

- moves/renames all the nested structure from my "queue" directory
  into a flat file-structure in my "current/" directory

With one big directory of the files, I can then easily send them over
to my phone. I happen to have termux (a terminal emulator) on my
phone and just scp them over the wifi network, but in the past I've
plugged my phone into the computer and used the file-browser to
copy/paste them from the directory into the Podcasts directory of my
phone.

I keep both the current/ directory and my queue/ directory around so
that in case something goes wrong on my MP3 player (over the 15
to 20 years I've been listening to podcasts, 3 of 'em have died), I
still have an archive of what it contained so I only have to load the
current/ directory onto a new player and resume where I left off.
Meanwhile the queue/ directory holds all the new stuff.

I also have a backlog/ directory as well.  Sometimes if I add a new
podcast feed, it has a lot of back episodes that I want to listen
through but don't want them all in one huge dose, so I'll download
them but mirror my queue/ directory in the backlog/ directory and
move the backlog of podcasts into there.  From time to time, when I'm
ready to reload my player and the queue seems a bit shallow, I'll
move in some of the items from the backlog.

However, in some cases I'll use castget's "catch-up" feature to load
a podcast feed and mark them all as already fetched without actually
downloading the episodes themselves (good for dropping in the middle
of a long podcast history). The history is stored in fairly readable
XML files in ~/.castget/ so when adding new feeds, sometimes I'll mark
the whole feed as caught up and then go delete the lines for
particular episodes, then run castget again where it will pull down
just the ones I deleted.

I reload roughly 3GB at a time which, at roughly 250% playback speed,
tends to last me 2 to 3 weeks worth of going for walks and chores.

One other trick I've learned is to limit the space available for my
podcasts.  I'm running FreeBSD so my ~/Music/podcasts/ a ZFS dataset
that has a limit/quota of ~15GB.  Occasionally a feed will change the
GUIDs or the filenames making the whole feed appear as new files, and
end up trying to download gigs of data.  By forcing it to download to
a size-restricted space, castget bails out before totally killing your
drivespace and bandwidth.

> I'd like to get most of them off of there, space and all.

If you want to get rid of them completely, they're just .mp3 files on
the drive, so you can delete them as you would any other file.  If
you want to archive them off to some external storage like a USB
drive, you can copy/move them just as I've copied them to my phone.
However, I don't usually find a need to archive them off unless
there's a particularly noteworthy episode.

Hopefully that gives you some ideas to work with.  And an adequate
ramble. (grins)

-tim




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

