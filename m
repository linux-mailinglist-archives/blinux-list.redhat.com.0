Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6F1053BEABA
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 17:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625672045;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ggyn2rZUJxgvnIZgAZU/Xbkz0Jqv9+mGscH3i49aMGw=;
	b=W35WBqcxB564D2j8SyacbZxG951j438NsotOGgE5HHM5L2c++/JAo6kTqNijkjm+DzRvYf
	ZWhlpT4zjLneo+VMcGcADU9rGnEhzkt8CDQCXmTYiOvEAsFnNbbLtrQurSC1Rh8MHsECHI
	AUoq9uf0TwZcsM+XmUTcZC83bcGW1QI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-496-N4NmOCcWMGG1hHsmqnlxvQ-1; Wed, 07 Jul 2021 11:34:03 -0400
X-MC-Unique: N4NmOCcWMGG1hHsmqnlxvQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75329804142;
	Wed,  7 Jul 2021 15:33:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2EE255D6AB;
	Wed,  7 Jul 2021 15:33:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C8F9D4A712;
	Wed,  7 Jul 2021 15:33:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167FXrv6005406 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 11:33:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AF6AADBF14; Wed,  7 Jul 2021 15:33:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A7E6ADAF33
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 15:33:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 29BA8108C0A0
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 15:33:45 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-160-82yyBu6HMqaxZBdMGL_ENw-1; Wed, 07 Jul 2021 11:33:43 -0400
X-MC-Unique: 82yyBu6HMqaxZBdMGL_ENw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GKk3V5M4Gz3wsl
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 11:33:42 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GKk3V4hhzzcbc; Wed,  7 Jul 2021 11:33:42 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GKk3V4Kp7zcbP
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 11:33:42 -0400 (EDT)
Date: Wed, 7 Jul 2021 11:33:42 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting linux again
In-Reply-To: <f59d22b1-f0b6-207d-6c26-a83845de2a51@schoeppi.net>
Message-ID: <alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<f59d22b1-f0b6-207d-6c26-a83845de2a51@schoeppi.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Actually, debian does not have the most accessible installer.  For that,
it's either Slint or Jenux.
In order to get debian screen reader accessibility going, you have to know
about and use a boot parameter.  With slint and Jenux, no such boot
parameter is necessary.


On Wed, 7 Jul 2021, Linux for blind general discussion wrote:

> Debian has the most accessible installer AFAIK, all other distros I know are
> not that easy to setup. So defenatly give Debian a try ;-).
>
> Cheers,
>
>   Schoep
>
>
>
> Am 07.07.2021 um 15:39 schrieb Linux for blind general discussion:
> > That's great news! I had seen a comment somewhere about debian no longer
> > having an accessible install but if it still does, I will definitely go to
> > that first.
> >
> >
> >
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

