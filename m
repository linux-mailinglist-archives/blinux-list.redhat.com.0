Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FB74623A1
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638222376;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZthKMpyfSBuSL6k6GkIUwQ8xWPYEiioa1E+6sqdB0WA=;
	b=dc4KwuqUw2ivOL5Mg7rb6uIcJsbaz1rSB8b9y/DoqMvoxWY2EesYJep9XSlQu7YHUXGHJj
	GDLkGY2pmCHwVZqYzVnln2Kq0q8Jf03eoM4CaOzJKHMEZDdECceKxiiAQZmkiJVjQkHIKZ
	T27wjW9oEEDqtPu1+J1kZfeCAHupQy8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-439-8UXjIFqwOhuZP9DJYJ9EQA-1; Mon, 29 Nov 2021 16:46:12 -0500
X-MC-Unique: 8UXjIFqwOhuZP9DJYJ9EQA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82BF8102CB29;
	Mon, 29 Nov 2021 21:46:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D7ED860BF4;
	Mon, 29 Nov 2021 21:46:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 680B64BB7B;
	Mon, 29 Nov 2021 21:46:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATLk0Fq011021 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:46:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AC8F751DC; Mon, 29 Nov 2021 21:46:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A7ECD51E1
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:45:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AFF6E80A0B2
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:45:57 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-603-PuBA1OjuPE-8PFkFdNW_8A-1; Mon, 29 Nov 2021 16:45:55 -0500
X-MC-Unique: PuBA1OjuPE-8PFkFdNW_8A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J2zS32C7jzFw5
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 16:45:55 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J2zS32Y5bzcbc; Mon, 29 Nov 2021 16:45:55 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J2zS328HdzcbP
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 16:45:55 -0500 (EST)
Date: Mon, 29 Nov 2021 16:45:55 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What is the easiest and most accessible editor?
In-Reply-To: <dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111291643140.22277@panix1.panix.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Anybody that tries to do anything with emacs without doing the tutorial
probably has no business using a computer since all they're guarranteed to
do is get themselves into trouble.  For the slint case, both command line
and g.u.i. are available by default and one can start in either
environment which they select during install.


On Mon, 29 Nov 2021, Linux for blind general discussion wrote:

> Unless you are running a text-only installation, installing from scratch,
> editing configs before you have a desktop environment installed or working
> remotely, your best bet is going to be whatever editor comes with your desktop
> environment. Usually that will be either pluma on the MATE desktop, gedit on
> the GNOME desktop, or you may have leafpad or mousepad installed. Any of these
> give you very easy cut/copy/paste functionality, easy to use find/replace
> pop-up windows and a fully accessible menu system for doing other things. All
> these editors are fully accessible to Orca and are found in your accessories
> menu or its equivalent depending on your desktop.
>
> If you are looking for a terminal-based text editor, usually for installing a
> system manually or working remotely via ssh, the best and easiest to use by
> far is nano, although I usually like to use pluma even over ssh, since sshfs
> mounts my servers as if they are on the local disk, so I get access to every
> file on my servers just as if they are right on the computer I'm using to
> access them. I have edited server configs and even websites in this way.
>
> Forget EMACS. I gave up on that crap after 5 minutes of mucking about in it,
> and emacspeak didn't make it any better. A text editor should make it as easy
> as possible to edit text, and that is all. It shouldn't require a computer
> science degree, nor should it try to be a complete desktop that tries to turn
> every application into an editor. The editors I mention here are mostly
> straight-forward, with the possible exception of nano, which is mostly
> consistent with pico, but not so consistent with any other desktop editor, and
> they all do what they should and nothing extra or overly complicated. If you
> want complicated text handling and word processing, LibreOffice Writer is the
> way to go, as it's a sophisticated word processor, not a text editor.
> ~Kyle
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

