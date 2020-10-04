Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8F955282B1B
	for <lists+blinux-list@lfdr.de>; Sun,  4 Oct 2020 16:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601820619;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fxa9sCEyefPJs9ue0yP406VtwkrWqoH4EMxZJ8aq/vM=;
	b=EoGHAQuA6FWrbW2JPZnr30O9fSBpOYdjEkE2XO0mRLbo5jNfW6LpC9S9iVYIZPb5UTcoI7
	7DcBoJbkTqplGXxCHXqWPvdOSSof4otpvDkWVS29d5ZaXWhB9i4oC2Vui+eS2qYUjpwM7k
	v38hc92WaOxt1BdEK++cfTjDF2DrG5U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-CxemOCrFPx6rLk0pZNcdmA-1; Sun, 04 Oct 2020 10:10:17 -0400
X-MC-Unique: CxemOCrFPx6rLk0pZNcdmA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 14AE51074661;
	Sun,  4 Oct 2020 14:10:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B92873699;
	Sun,  4 Oct 2020 14:10:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1AFCD44A58;
	Sun,  4 Oct 2020 14:10:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 094E3Wuw010106 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 10:03:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9EE07100205D; Sun,  4 Oct 2020 14:03:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9AC89110F0D9
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 14:03:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8DBE2185A78B
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 14:03:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-551-8LGGLzVZOW6nBAZvewCnfw-1; Sun, 04 Oct 2020 10:03:28 -0400
X-MC-Unique: 8LGGLzVZOW6nBAZvewCnfw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C456l6GNkz1kXP
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 10:03:27 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C456l5NfZzcbc; Sun,  4 Oct 2020 10:03:27 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C456l50TZzcbW
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 10:03:27 -0400 (EDT)
Date: Sun, 4 Oct 2020 10:03:27 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup and links browser
In-Reply-To: <alpine.DEB.2.21.2010041335290.9748@nkl.local>
Message-ID: <alpine.NEB.2.23.451.2010041002500.21407@panix1.panix.com>
References: <alpine.NEB.2.23.451.2010040553040.14816@panix1.panix.com>
	<alpine.DEB.2.21.2010041335290.9748@nkl.local>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I can do that, now if I can prevent links from crashing on me I'd be in
great shape.

On Sun, 4 Oct 2020, Linux for blind general discussion wrote:

> Date: Sun, 4 Oct 2020 06:39:27
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: speakup and links browser
>
> Hello
>
> Braille terminal at the settings makes the had cusor to follow the arrow keys
> so it is easier to find where the focus is. Tab also moves to the next link or
> field.  Try to enable the braille terminal to see if it hels.
>
>
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

