Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E0DAF40057B
	for <lists+blinux-list@lfdr.de>; Fri,  3 Sep 2021 21:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630695925;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=00YAHbN/J8moEvtuAdUmK49V9ZulYiRJCKK4G7KtBG4=;
	b=a8BFY4G9ZJ2sxayd3Gx5wS8vwFmwhPXeg4V9CFYJ/3DntedxBbjWVVcDLlkgnevZk7w2vX
	xdHPdWjj/V2HrBQbHU8qr312pGzR4S5feIs15PLiZyQBtS8cbbjcv8j98U1CAPR9p9z2Oe
	HzRTrt3XR8Xpyaq4TQTZlm2QgDxzLJA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-153-bty4a8PxME2RXp9OE7GIHw-1; Fri, 03 Sep 2021 15:05:23 -0400
X-MC-Unique: bty4a8PxME2RXp9OE7GIHw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E06A0107ACC7;
	Fri,  3 Sep 2021 19:05:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA6235D9FC;
	Fri,  3 Sep 2021 19:05:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BE5DB1809C81;
	Fri,  3 Sep 2021 19:05:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 183IvsYc019377 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Sep 2021 14:57:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7C911202867E; Fri,  3 Sep 2021 18:57:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 76F2B21677FA
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 18:57:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E94F800963
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 18:57:51 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-156-lzs1OMCIMvKU-NeyV5ZyxA-1; Fri, 03 Sep 2021 14:57:50 -0400
X-MC-Unique: lzs1OMCIMvKU-NeyV5ZyxA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4H1RrF2YcTzKvH
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 14:57:49 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4H1RrF1vFXzcbc; Fri,  3 Sep 2021 14:57:49 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4H1RrF1W6yzcbP
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 14:57:49 -0400 (EDT)
Date: Fri, 3 Sep 2021 14:57:49 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: https://blindcomputing.org/ status
In-Reply-To: <40F30BDE-AEE1-491B-8E8C-F8D958329702@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2109031453280.25910@panix1.panix.com>
References: <alpine.NEB.2.23.451.2109022351370.24726@panix1.panix.com>
	<75dd52ca-fee4-885d-8533-4eff739c47b8@gmx.net>
	<40F30BDE-AEE1-491B-8E8C-F8D958329702@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

status isn't part of that url, it's got a space in front of it and that
should have ended the url.
I ran sha512sum --tag on the iso and sent that to fail.txt.
Then I deleted the iso and downloaded it again and ran
sha512sum --tag iso >test.txt
Then I ran diff -s fail.txt test.txt and was told the two files were
identical.
So one of two things happened and I can't prove either.
Either I got a good download both times or a bad download both times.
Had those files been different, I might have tried installing with the
second iso.


On Fri, 3 Sep 2021, Linux for blind general discussion wrote:

> Might be something going on in that particular version of Firefox. I am on OS X here as my primary and the Safari web browser doesn?t report any issues so far. Also, the /status at the end of the link provided in the subject above leads to a 404 error. Btw, Firefox isn?t very blind user friendly on anything other than windows or Linux. On OS X, it?s a real PITA and not worth even dealing with.
>
> Btw, I use Firefox on SLINT here (I won?t go back to Ubuntu after they went with the inaccessible installer).
>
> -Eric
>
>
> > On Sep 3, 2021, at 1:45 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > For problems, suggestions etc. with blindcomputing.org you may contact the maintainer at github.
> > https://github.com/blind-computing
> >
> > HTH,
> > guenter
> >
> > Am 03.09.21 um 05:55 schrieb Linux for blind general discussion:
> >> A blog with no content,
> >> A comments section not possible to use,
> >> the comments management company is where you end up after giving that site
> >> an email address and that site is directed at getting more business for
> >> the comments manager site and you don't get back to the original website
> >> to leave any comments.
> >> All in all, a very dodgey operation so far as I can figure.
> >> This was after using firefox to log into the site and no it wasn't worth
> >> the firefox login or the extra time it took to find all of this out.
> >
> >
> > --
> > .
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

