Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD604624F2
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 23:30:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638225014;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wUNaaUlyT+Dso8LjehxbCI0FsYKhl2/PZJQ4skF/wCo=;
	b=LCIJN10RwsKkzEn4P7dqhNKPdCQqkyLc70aSlsBfnWtN+XRHnPfqBw+h+IjQahybPAB41N
	MrO85Qwv4GjR5W52jfB8ca4wvShvY9W3gxXpezU3Q/6Bzf37y7+p6voRhHGi8YHykdK5Xx
	1VfKTear31dYz/iLYxwItNoTaE4qg/c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-xTEv-0aSPtm5wJDgHDVswQ-1; Mon, 29 Nov 2021 17:30:10 -0500
X-MC-Unique: xTEv-0aSPtm5wJDgHDVswQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E8BE84B9A4;
	Mon, 29 Nov 2021 22:30:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF9625D9C0;
	Mon, 29 Nov 2021 22:30:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6D6CF1809C89;
	Mon, 29 Nov 2021 22:30:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATMTwSx013532 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 17:29:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E2C0D40CFD11; Mon, 29 Nov 2021 22:29:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE05840CFD05
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 22:29:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C780F80A0AC
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 22:29:57 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-451-VsAxul26Ox2eZDHaXqVJQw-1; Mon, 29 Nov 2021 17:29:56 -0500
X-MC-Unique: VsAxul26Ox2eZDHaXqVJQw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J30Qq5NTGzLxZ
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 17:29:55 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J30Qq589Mzcbc; Mon, 29 Nov 2021 17:29:55 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J30Qq54vkzcbW
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 17:29:55 -0500 (EST)
Date: Mon, 29 Nov 2021 17:29:55 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What is the easiest and most accessible editor?
In-Reply-To: <1cdf07ee-291f-9616-915f-03f757ca649d@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111291729150.11659@panix1.panix.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<1cdf07ee-291f-9616-915f-03f757ca649d@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

For those into trying vimm, it has a vimmtutor program it's adviseable to
run first.


On Mon, 29 Nov 2021, Linux for blind general discussion wrote:

> Wow I didn't know about Micro. Just used it for about 30 seconds, and it's
> already far better than any other terminal editor I've ever tried. Just gotta
> get rid of the numbers it's chattering every time I move the cursor up or
> down. I'm definitely putting this one on my servers.
> ~Kyle
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

