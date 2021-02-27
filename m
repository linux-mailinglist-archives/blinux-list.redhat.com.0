Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7356B326EEF
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 21:28:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614457710;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lueol75cs8lH4CVCxL/GZ7u3SmBAM0N96QP/Ac6OQCo=;
	b=T3H2AoO2vw++YoijvYofOz8gFcIh0fSr9bBXVgElQGEPLmK3z7qNbhjNUUJqsk3LV5vqEa
	2hMKvxTFYto0QqZAZxAHE4Uh8HS2ZvWW3SUhVVgZ9C89TbA++uP0jLecCwp9Gw1C5MP425
	7vQ++wrq8EYdjnSlG2SpqCcNVqDegz0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-380-C5mXHLWwMp-8kii13kBN8Q-1; Sat, 27 Feb 2021 15:28:28 -0500
X-MC-Unique: C5mXHLWwMp-8kii13kBN8Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA63EC282;
	Sat, 27 Feb 2021 20:28:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3495BE156;
	Sat, 27 Feb 2021 20:28:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F369718095CB;
	Sat, 27 Feb 2021 20:28:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RKSIqF004467 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 15:28:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0949E6B5BA; Sat, 27 Feb 2021 20:28:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 020A76B5B8
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 20:28:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C492785A59D
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 20:28:15 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-513-IuMF1foJMHG_E2Eiv0szBQ-1; Sat, 27 Feb 2021 15:28:12 -0500
X-MC-Unique: IuMF1foJMHG_E2Eiv0szBQ-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.2] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id A5FF05DF18
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 20:18:33 +0000 (UTC)
In-Reply-To: <CAO2sX32_mf5G6-EJV_VunXrfZaMUyPh1xpyMkvmdOYh8tdqHdw@mail.gmail.com>
References: <161139635710.6.15346525701550806542.3266624@slmail.me>
	<CAO2sX32cNAg1c4RSf8GVq_hSMPNNre1Rpz8U6LAjd4ty6EMuFA@mail.gmail.com>
	<161145510571.6.16283696956580322170.3279435@slmail.me>
	<CAO2sX32_mf5G6-EJV_VunXrfZaMUyPh1xpyMkvmdOYh8tdqHdw@mail.gmail.com>
Subject: Re: Is there an easy to use Equalizer for Ubuntu based Distros?
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161445711353.8.4131173120594177621.4268350@slmail.me>
Date: Sat, 27 Feb 2021 20:18:33 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 4268350
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
Apologies for my very delayed reply. I havn't checked my inbox in quite a while. I just wanted to thank you so much for taking the time to reply to my question re text editors in such detail. I know I'm responding way late, but better late than never and I just wanted to thank you for sharing your experiences and for listing so many options.
I look forward to researching those that you listed. Its great that there are so many to choose from. Now it just comes down to me figuring out which one/s will be my preference.
Again just wanted to thank you for your time and effort in writing such a thorough reply, the info you shared is very much appreciated.
Sincerely,
SL


Jan 24, 2021, 03:40 by ra+dtubxdrrefuvknlzmxnknslhb@simplelogin.co:

> Regarding text editors, well quite frankly, the selection is kind of staggering.
>
> In the terminal, the big two are vi and emacs and their derivatives,
> but there's also ed, nano(what I use), and micro that I can name off
> top of my head. I like Nano because it's small, and I find it more
> straight forward to use than the bit I've messed around with vi or
> emacs, though coming from Windows, you might prefer micro, which is
> inspired by nano but might have a more familiar set of keybindings(I'm
> using nano instead of micro largely because I had already grown
> acustomed to nano's quirks by the time micro came along... in nano,
> some of the keybindings that might trip up someone coming from Windows
> include crtl+x for closing the open file, ctrl+o to save, ctrl+k to
> cut(and cutting the whole line at that), ctrl+u to paste(pasting all
> lines that were cut without a keystroke other than ctrl+K), ctrl+w to
> search forward, ctrl+Q to search backwards, just to name a few).
>
> On the graphical side, I think every desktop environment has its own
> text editor and then some. Gnome has gedit, KDE has Kate, LXDE has
> Leafpad, there's one in there called nedit, I think there's an editor
> written in Java called jedit, and I think I've used pretty much all of
> them at one point or another and found them more or less
> interchangeable... Granted, I haven't tried a graphical editor since
> going blind... and Kate probably isn't too accessible since, as a KDE
> app, it's built with the QT ttoolkit, which isn't as well supported by
> Orca as GTK.
>
> Not sure I've ever used Notepad++(I was still using a word processor
> for most of my document creation when I was using Windows regularly),
> but I suspect there's a lot of commonalities between it and the
> graphical editors I mentioned above.
>
> And Visual Studio is more of an integrated development environment
> than a stand alone editor... Though I generally prefer to code in a
> stand-alone editor and invoke a compiler from the command line when I
> program, though Eclipse is one IDE that runs under Linux... Eclipse is
> optimized for Java development, though I believe it can be used for
> C/C++ and perhaps other related languages.
>
> And for what it's worth, I'm pretty sure all of the editors I've
> mentioned offer syntax highlighting.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

