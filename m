Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BE64BAD34
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 00:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645140166;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6kRcumm/e9+YxPOvGP4oRTMgRX0s8Pztjte50bzKb8c=;
	b=ImD3XP5MAMrpRUatxjZBQ3hu15bdtdRXyXHxhmfSenxu+v9p0N7M9sKgQszZMNJ45GJcF5
	3ZFLC6bIL+8KQrbdsCZgaPMgvgRVKB726ybY6MJqmS4Tgnn1iQrgFdHYrgcd/BnCTKHb1Y
	B9c1NuuLi/fJBQxVMnOJAlY8jNDbHuw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-122-oMCrYaXpN02Jo0ncZCuJlA-1; Thu, 17 Feb 2022 18:22:43 -0500
X-MC-Unique: oMCrYaXpN02Jo0ncZCuJlA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 262E5100CCC0;
	Thu, 17 Feb 2022 23:22:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 169064EC85;
	Thu, 17 Feb 2022 23:22:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 949EF4BB7B;
	Thu, 17 Feb 2022 23:22:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21HNLPX3005442 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 17 Feb 2022 18:21:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 065275361F9; Thu, 17 Feb 2022 23:21:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 023D45361EC
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 23:21:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD8D03C01C13
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 23:21:24 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-226-Mc7WmgfJNFuv731C7LEO6Q-1; Thu, 17 Feb 2022 18:21:23 -0500
X-MC-Unique: Mc7WmgfJNFuv731C7LEO6Q-1
Received: by mail-qk1-f177.google.com with SMTP id o10so6348111qkg.0
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 15:21:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gp1xyOJzP+Lnm7CqOkT6yoP2I2/oKfvKBuQkY1bEEgw=;
	b=ZS+KsfWaFx9gzvLx77D6HW89x/zesr1D5153vjOmcJxjd8rkPskRaMbdNufrp8rFbS
	2S0FwYi9qEYg3FA5HitoGHHkU+UfnLtI5tMZtMjVf3PfEvRXR3tNSq8MtMdACh8XDfN7
	nakpadeqRCR7UAc+qK8/X99X+9IzjhZk3d1VgNiy9m9zbfZcsZOnYzNN8EWIY1NaHaNM
	4bf+sPPH/Cqr0v9WtEtPjtnpigFqeGKdp4XpUU+IuT9CGHeXTOrfyfYu0Nv2FSwghp5n
	UpUdFI18JsoHdWkSRQkfJ3cJzPTad7lCSDpW5VWw8Mltlw2AQmjwbmmnCDB++GYe+dCv
	dHcQ==
X-Gm-Message-State: AOAM532rxOIA2H/ftLC55t2ysuoEekEsaXbRBvcOEUCsg0gmrwPZlPzF
	EgnFSQGTLiRjwTtDIFeHngXJ5NCFRQGk/L+PjBIPf5E5A0I=
X-Google-Smtp-Source: ABdhPJzN+XPFqhKWVYD0TOHnw/TN7CmWgF0sKTsGJVZQ93Qe2LZP3xCgTTvmRcyaiVD9L+z39ISM/uuZ8CJ+U9Sw8UY=
X-Received: by 2002:a37:b885:0:b0:606:f607:d820 with SMTP id
	i127-20020a37b885000000b00606f607d820mr3003475qkf.124.1645140082690;
	Thu, 17 Feb 2022 15:21:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:d06:0:0:0:0 with HTTP; Thu, 17 Feb 2022 15:21:22
	-0800 (PST)
Date: Thu, 17 Feb 2022 23:21:22 +0000
Message-ID: <CAO2sX33__rOyjd2u+J1jBnxgU9qZFz8V=y1AeP_+LYNz7y1iHQ@mail.gmail.com>
Subject: xvfb-run: Program executes, but I can't control it.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

Okay, so I recently came across xvfb, the X virtual framebuffer as a
potential solution for running graphical applications without the need
for a full desktop.

I used aptitude to install the version provided by Debian Testing.

As an initial test, I decided to try running a visual novel that has
built-in TTS for the parts without voice acting, and since the game
isn't in my path, I cd to where the game is stored and run

xvfb-run ./game.sh

I hear the game's startup sound followed by the title screen music, so
I know the game is running... but control is still at the command line
and all I can get out the TTY I ran xvfb from is the usual stuff that
happens when you press kees a terminal application doesn't register as
input and a message about not having a steamclient on my system. All I
can really do is ctrl+c to quit the inaccessible game and xvfb.

Knowing guis sometimes get ran on a TTY other than the one that
spawned them, I check all the available TTYs, but none of them are
connected to the game.

My initial test was performed on tty3 while I had my usual
Firefox+Orca on top of abarebones FLWM session launched by a script
that is a black box to me running on tty1, so I try shutting down
Firefox+Orca, rebooting my machine, and running the game before
launching anything else graphical... and got the same results.

Getting the game to run at all is a step forward, but it doesn't mean
much if I can't actually control it.

Also, it turns out I only have access to tty1-tty10 on my system, not
that that matters much, as it's not common I even get up to tty6.

So any ideas what went wrong or what I need to do to get my keyboard
talking to the game I launched with xvfb?

If it matters, my installed system is customized from an older version
of Knoppix, with all of the installed software that isn't Knoppix
specific upgraded to Debian Testing or Unstable(I was using Unstable
until a update a few days ago broke my xserver and forced me to
downgrade those packages to Testing and switching my active
sources.list entry to testing to prevent accidentially upgrading to
the broken versions again)... also, after getting the game working, my
next planned step is to get Orca+Firefox(trying to replace the script
I don't understand with something more flexible that should work even
if I switch to a vanilla Debian install) and then Orca+Seamonkey(since
I understand it to be the lightest, full-featured graphical web
browser for Linux and the best alternative to Firefox and chromium)
working with xvfb.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

