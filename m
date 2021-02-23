Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id AD64A3231EF
	for <lists+blinux-list@lfdr.de>; Tue, 23 Feb 2021 21:15:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614111329;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ht8XiO7avIxA5Ch0B4Ch1kYFVnLnGRcDhTOhuKZALFE=;
	b=PDnjz5TnEvY2quvVvIUcq/MQuIjCzNnVrFUsM46o68/yBdSY+zF+T8iGQrIF+yP77I9YKr
	3ktqa4K5xgosWikgnG7Zm5J+ntVixL+fZrVta+0bRewfhVUFWFT5+8JnVzPqJw9KWcyJl6
	MmeV+Oh3SqISj2hLRD1GBAQ09s184U8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-508-O-mtfxsFPbqghvpRyAhdtQ-1; Tue, 23 Feb 2021 15:15:27 -0500
X-MC-Unique: O-mtfxsFPbqghvpRyAhdtQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D95CF84E242;
	Tue, 23 Feb 2021 20:15:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEC071001281;
	Tue, 23 Feb 2021 20:15:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C397358074;
	Tue, 23 Feb 2021 20:15:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11NKFC25028210 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Feb 2021 15:15:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 53CDD9E80; Tue, 23 Feb 2021 20:15:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4DCF09E8C
	for <blinux-list@redhat.com>; Tue, 23 Feb 2021 20:15:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B252F805B72
	for <blinux-list@redhat.com>; Tue, 23 Feb 2021 20:15:07 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-166-Dbfboy6UOw2KZWVcXZ8ESg-1; Tue, 23 Feb 2021 15:15:05 -0500
X-MC-Unique: Dbfboy6UOw2KZWVcXZ8ESg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DlVf101QPzLXy
	for <blinux-list@redhat.com>; Tue, 23 Feb 2021 15:15:04 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DlVf06Cfhzcbc; Tue, 23 Feb 2021 15:15:04 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DlVf05pL4zcbV
	for <blinux-list@redhat.com>; Tue, 23 Feb 2021 15:15:04 -0500 (EST)
Date: Tue, 23 Feb 2021 15:15:04 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Recently mentioned cheap Braille display?
In-Reply-To: <20210223130829.6fec2676@bigbox.attlocal.net>
Message-ID: <alpine.NEB.2.23.451.2102231507220.8499@panix1.panix.com>
References: <20210223130829.6fec2676@bigbox.attlocal.net>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Barry Scheur may be able to help.
He had advertised orbit braille displays with executive case for $250.00.
6179697500 bscheur@scheur.com.  He likes to get to know people first so he 
can sell them the right stuff.



On Tue, 23 Feb 2021, Linux for blind general discussion wrote:

> I was pretty certain that someone on this list had recently mentioned
> a notably cheaper Braille display that had recently come on the
> market.  Does this sound familiar to anybody here?  However, I can't
> find any such message in my folder of Blinux mailing-list messages.
> One of the OpenBSD developers was asking about picking up a cheap
> Braille display for testing accessibility but didn't have a lot of
> cash to drop on it.  So I wanted to share that info with them.
>
> Thanks!
>
> -Tim
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

