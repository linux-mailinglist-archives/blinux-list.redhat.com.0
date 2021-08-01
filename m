Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B97F03DCDB0
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 22:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627849633;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wkxCV55ekSZ+7tfEvuOOOE0K4n8sBUNc0IR7pA0Meok=;
	b=HlfHSYko3QbatjHifcs0JmteZ/URzgKwKzX4i2LMzFbFFXtnA2xAo3cf1r0Ia0jsH/fE6W
	n7+WIBxaKvxd17QuqSibUlcYjpe9cXmzY35ldJvr22ddcoCJoMaxVw03PefQe676qJiZRN
	Q/wAWaDPVQww3kgToxyAzdvv8NxbaJQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-553-9aL9de0EO9Gy29RzomeHNA-1; Sun, 01 Aug 2021 16:27:12 -0400
X-MC-Unique: 9aL9de0EO9Gy29RzomeHNA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6AA31853027;
	Sun,  1 Aug 2021 20:27:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BED360C5A;
	Sun,  1 Aug 2021 20:27:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ADDA44BB7C;
	Sun,  1 Aug 2021 20:27:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 171KQpP2020804 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Aug 2021 16:26:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7543021677F2; Sun,  1 Aug 2021 20:26:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 704B021677F1
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 20:26:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06784185A794
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 20:26:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-421-f4D0kndIO-OiYxLYeBIdig-1; Sun, 01 Aug 2021 16:26:46 -0400
X-MC-Unique: f4D0kndIO-OiYxLYeBIdig-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GdCN536Nqz3q0s
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 16:26:45 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GdCN52RM0zcbc; Sun,  1 Aug 2021 16:26:45 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GdCN522g7zcbP
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 16:26:45 -0400 (EDT)
Date: Sun, 1 Aug 2021 16:26:45 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Solus DE observations
In-Reply-To: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108011625330.18729@panix1.panix.com>
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If nmtui isn't available, you may need to use netctl but make sure dialog
is pre-installed or netctl won't work.


On Sun, 1 Aug 2021, Linux for blind general discussion wrote:

> Since Solus came up again, I'll share my observations of the three DEs I've
> used. I'm leaving Plasma out since it doesn't work too well for me, but yMMV
> on that
>
>
> Budgie:
> It's, boiling it down. Gnome with a fancy coat of paint and is the Solus
> flagship one. It works well enough given it's Gnome 40 based and is very much
> useable. Now if I could assign keyboard shortcuts, that'd be handy. Maybe I
> can and haven't found it yet, I dunno. One note I do have is that LightDM is
> the login manager and is insanely /loud/ on startup once you enable Orca with
> the usual shortcut. So just have a long, long keyboard cable, and Budgie/Gnome
> have a nice startup sound when you log in, which is always a nice touch. The
> Solus team have put a lot of care into the DE from what I've found.
>
> Gnome:
>
> It's Gnome. It's Gnome 40. Need I say more? One note is I couldn't get speech
> at a login manager on my system. It does have a nice startup sound to a la
> Budgie.
>
>
> Mate:
>
> Oh this is going to be disappointing. There's a few issues with Mate as far as
> Solus goes.
>
>
> 1. The Orca shortcut isn't set. Which isn't a big deal since alt+f2 and orca
> sorts that then when you get the system installed it's two seconds work to set
> the shortcut and set Orca to autostart.
>
>
> 2. THe much, much, MUCH bigger issue is the desktop loses focus and requires a
> GTK dialog to be loaded. Quit Chromium? Yeah Orca+H, F2, and then keep going.
> Now. If there's a compyz setting I've overlooked to fix this...then sure, I'll
> give it another shot. Don't get me wrong. Mate is fantastic when it works.
> It's just....when it breaks on Solus and needs workarounds, it's kind of a
> bugbear for me, as well as the bottom panel being unlabeled, but you can get
> around most of that As with Budgie it uses LightDM so you get Orca working on
> the login screen, again, stupidly loud. If the focus loss issue can be fixed,
> then I'm liable to switch back to Mate full time instead of Budgie.
>
> And, there's no startup sound either which, really, disappointing given the
> other two have one and I don't know bout Plasma, but it feels to me like the
> Mate one isn't fully finished up vs the other DE.
>
>
> And related note, I'm hunting down an nmtui which doesn't seem to be shipped
> with Solus. I may just request it or ask on their forums if one's in and I'm
> using the wrong name.
>
>
> Related note #2:
>
> Somehow it's more stable for me than Ubuntu, which I didn't think possible.
>
>
> For installed things?
>
> Mate didn't come with a mail client and came with Firefox which I've replaced
> with Brave, and installed Thunderbird. Each distro ships with Orca 40.0, but
> I've not tried building Orca from git yet, I'm wary of installing the build
> deps on an already working system
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

