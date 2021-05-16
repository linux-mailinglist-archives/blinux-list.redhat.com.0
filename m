Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9B62D381D0C
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 07:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621143869;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yxDJMwd9/ZsIA2IpC/RgnBZ19ni/Vh2D+H1C+IQDe34=;
	b=PlqQNumxQG53lt+DWUExzBNhXRqNJwZiKzw0lsSnAnIS0PeeGIzt6NNc3xlFthzAMoJDwV
	04c9EJXPgoGXS1FbHX3KrkkRcynOgh1iZC/NP9XyitBli2K82JBRsBJJ36qMnJjgTNvZiZ
	jOlepC+lxgLf8PD9T57j5CASQnIbpIE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-215-0Dwd-qApOwu66tLZQrRvbg-1; Sun, 16 May 2021 01:44:27 -0400
X-MC-Unique: 0Dwd-qApOwu66tLZQrRvbg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CBCD801AED;
	Sun, 16 May 2021 05:44:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B593F6EF51;
	Sun, 16 May 2021 05:44:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C05E55344;
	Sun, 16 May 2021 05:44:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G5iEba003625 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 May 2021 01:44:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3BA0F47CDC; Sun, 16 May 2021 05:44:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3645A440C1
	for <blinux-list@redhat.com>; Sun, 16 May 2021 05:44:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3D27101A531
	for <blinux-list@redhat.com>; Sun, 16 May 2021 05:44:11 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-460-oaUYrkXIP-GWUTPV3MWPYg-1; Sun, 16 May 2021 01:44:09 -0400
X-MC-Unique: oaUYrkXIP-GWUTPV3MWPYg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FjWRF0dT5z2YLj
	for <blinux-list@redhat.com>; Sun, 16 May 2021 01:44:09 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FjWRD6X8Vzcbc; Sun, 16 May 2021 01:44:08 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FjWRD63HwzcbW
	for <blinux-list@redhat.com>; Sun, 16 May 2021 01:44:08 -0400 (EDT)
Date: Sun, 16 May 2021 01:44:08 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Vox.com: Why captchas are getting harder (fwd)
In-Reply-To: <20210516.053128.844.20@[0.0.0.0]>
Message-ID: <alpine.NEB.2.23.451.2105160141000.376@panix1.panix.com>
References: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
	<Pine.LNX.4.64.2105152115100.2849188@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152219530.27440@panix1.panix.com>
	<Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152327400.25128@panix1.panix.com>
	<82b5a1c7-993d-9683-2a5a-309c353a9069@gmail.com>
	<alpine.NEB.2.23.451.2105160111160.16763@panix1.panix.com>
	<20210516.053128.844.20@[0.0.0.0]>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You can put a file name inside the playlist variable.  If that file has
one youtube url in it, then only one url gets processed.  In a little bit
I'm going to check for youtube-dl and ffmpeg and have the script error out
if any or all of them are missing.  That should only need a for loop with
the names of the packages inside it to do that.


On Sun, 16 May 2021, Linux for blind general discussion wrote:

> Wouldn't that script be bbetter off as a function, so you can use it on the command line without editing the script and adding urls.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Cc: blindtlk@nfbnet.org
> Date: Sun, 16 May 2021 01:12:52 -0400
> Subject: Re: Vox.com: Why captchas are getting harder (fwd)
>
> > I did downloads and conversions you described using ypl.sh.  I did reading
> > of the youtube-dl man page then wrote that script.  I probably will
> > improve that in a little bit of time.
> >
> >
> >
> > On Sat, 15 May 2021, Linux for blind general discussion wrote:
> >
> > > I think youtube-dl can download audio files from Youtube and convert them to
> > > mp3. It uses ffmpeg to do it as I recall. It can even clean up the filenames
> > > for you based on the information on the youtube page for the video. Last I
> > > knew, Youtube has no captcha, and youtube-dl still works as of the past week.
> > >
> > > ~Kyle
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

