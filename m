Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 78A4B381C39
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 05:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621135845;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Em6//CZOYmjuGAjU/YXUC0NgO7OxIMvGDKJ9MDh678E=;
	b=Pus30N8moccbGyDyAbuksWmM8koAB4E6sD/Z7+VVrWykwbTnko3bDTkcam1OsDEWHXVPbL
	fb7OfBAnoxEKK012OBz+E1Z5TMks7n/K91EjANJRcOgNnEQgy82waV9dS5cUWY3sZlqqT8
	JqYMpI86vn7x+rxmXKWXqbyyFFbtt2A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-592-53t-YpFjP1uxm4Q-ly09yw-1; Sat, 15 May 2021 23:30:43 -0400
X-MC-Unique: 53t-YpFjP1uxm4Q-ly09yw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9CB5800FF0;
	Sun, 16 May 2021 03:30:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 873D32C161;
	Sun, 16 May 2021 03:30:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A33F61801029;
	Sun, 16 May 2021 03:30:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G3UZQW024287 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 May 2021 23:30:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 525B11134CA5; Sun, 16 May 2021 03:30:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4DF1D1134CA2
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:30:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 532EC101A531
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:30:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-63-B0HL6gdROKCYEwWc3NNBIg-1; Sat, 15 May 2021 23:30:29 -0400
X-MC-Unique: B0HL6gdROKCYEwWc3NNBIg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FjST04KwYz2WJJ;
	Sat, 15 May 2021 23:30:28 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FjST03fHKzcbc; Sat, 15 May 2021 23:30:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FjST039DvzcbV;
	Sat, 15 May 2021 23:30:28 -0400 (EDT)
Date: Sat, 15 May 2021 23:30:28 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Vox.com: Why captchas are getting harder (fwd)
In-Reply-To: <Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
Message-ID: <alpine.NEB.2.23.451.2105152327400.25128@panix1.panix.com>
References: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
	<Pine.LNX.4.64.2105152115100.2849188@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152219530.27440@panix1.panix.com>
	<Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
Cc: blindtlk@nfbnet.org
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a script if I can find it that takes a youtube download and cleans
the file name up and converts it to an mp3 file.  It uses youtube-dl with
a bunch of command line parameters and a variable which has to be
populated.  Now if that variable is a filename and several youtube urls
are in that file, the script does batch mode and cleans them all up and
converts them to mp3.


On Sat, 15 May 2021, Linux for blind general discussion wrote:

> Save that YouTube no longer works well in command line Linux.
> Meaning many of those who need to understand the captcha barriers are not
> likely to get this information.
>
>
>
> On Sat, 15 May 2021, Linux for blind general discussion wrote:
>
> > With a youtube account, you could search for the vox.com channel or
> > channels and subscribe to one of them.  I think this article is in the
> > future perfect channel if such exists.  That way you bypass the captchas
> > this time.
> >
> >
> > On Sat, 15 May 2021, Linux for blind general discussion wrote:
> >
> >> Is there a transcript for those of us who cannot solve the captchas for
> >> Youtube?
> >>
> >>
> >>
> >> On Sat, 15 May 2021, Linux for blind general discussion wrote:
> >>
> >>>
> >>>
> >>> ---------- Forwarded message ----------
> >>> Date: Fri, 14 May 2021 23:56:57
> >>> From: Jude DaShiell <dashielljude@gmail.com>
> >>> To: Jude DaShiell <jdashiel@panix.com>
> >>> Subject: Vox.com: Why captchas are getting harder
> >>>
> >>> Vox.com: Why captchas are getting harder.
> >>> https://www.vox.com/22436832/captchas-getting-harder-ai-artificial-intelligence
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

