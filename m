Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8A34F298D5D
	for <lists+blinux-list@lfdr.de>; Mon, 26 Oct 2020 14:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603717227;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xIKSv529EvaRNOEU1ZVNqhREVt0NBYZmImLxOmKz/Mk=;
	b=i4F1KTZjxp6NFTVmzVbEOOgDgeaRsSD23fmxYxt3/9DPcX1jrG6IeDFRSLJxYreSPE+xPk
	xrpWnumdZ8Y0PAEO/gymYT1st0Pj/Lx6pQCMbkRIAh4bBeVHEf3sA1d/YEfiC62hTU8NBj
	fPkC12sP3V1wrPARBLhQX8M5G6b8qTM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-532-jZ_c5SMiND2dOaSjSxikug-1; Mon, 26 Oct 2020 09:00:24 -0400
X-MC-Unique: jZ_c5SMiND2dOaSjSxikug-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96ABC804B96;
	Mon, 26 Oct 2020 13:00:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2572755790;
	Mon, 26 Oct 2020 13:00:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B30159231F;
	Mon, 26 Oct 2020 13:00:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09QCnfc3028377 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Oct 2020 08:49:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AA3C92166B44; Mon, 26 Oct 2020 12:49:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4D5C2166B27
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 12:49:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B79F811E76
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 12:49:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-296-UMVITxCLPnGp2SBo-iTJvw-1; Mon, 26 Oct 2020 08:49:36 -0400
X-MC-Unique: UMVITxCLPnGp2SBo-iTJvw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CKZRN2Vmbz16lf
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 08:49:36 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CKZRN1cbYzcbc; Mon, 26 Oct 2020 08:49:36 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CKZRN1F87zcbV
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 08:49:36 -0400 (EDT)
Date: Mon, 26 Oct 2020 08:49:36 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: building kernel for ac97 sound card
In-Reply-To: <alpine.DEB.2.21.1.2010261426360.5078@willempc.meraka.csir.co.za>
Message-ID: <alpine.NEB.2.23.451.2010260847430.15848@panix1.panix.com>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
	<20201024180518.GB2013@rednote.net>
	<alpine.NEB.2.23.451.2010241438040.3794@panix1.panix.com>
	<20201026084445.GC2013@rednote.net>
	<alpine.NEB.2.23.451.2010260625330.593@panix1.panix.com>
	<alpine.NEB.2.23.451.2010260635110.593@panix1.panix.com>
	<alpine.DEB.2.21.1.2010261426360.5078@willempc.meraka.csir.co.za>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

It does if you understand I am using another version of Linux on this
machine that does speak and the only way I'm ever going to find out what
lsmod did or didn't load on gentoo is to actually get gentoo talking and
the sound card working first. On Mon, 26 Oct 2020, Linux for blind general
discussion wrote:

> Date: Mon, 26 Oct 2020 08:28:48
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: building kernel for ac97 sound card
>
> If you see an entry for your sound card in the output of lsmod, it means that
> your kernel successfully loaded the module for your sound card.
> So what you suggest to do does not make sens at all.
> Regards, Willem
>
>
> On Mon, 26 Oct 2020, Linux for blind general discussion wrote:
>
> > I found /usr/src/linux/.config which if I have this right is where make
> > menuconfig stores your choices as they're made.  So erasing that file gets
> > you a clean start when necessary.  Reading through lsmod output I find
> > several sound card elements on lines in that output.  What I'm going to
> > try next time is to enable each element starting at the end of each of
> > those lines and going to the beginning of those lines.  Sound card
> > elements are either in first position in lines or later positions and the
> > later positioned elements use the earlier positioned elements.  This is a
> > strictly proper order problem open the doors in the proper order and you
> > get to the treasure room.
> >
> >
> > --
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

