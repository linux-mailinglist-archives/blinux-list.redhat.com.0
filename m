Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 572474970DF
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 11:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642932649;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2Z8HntajqwIUZZAExA9Q6dys4GCcSHBJnFiJG5qNXCw=;
	b=hTjcTJGCEBzOp1dHwNTnjl3iZ67EBUA7vmyCy7o6iOTwwmmxOEr71eWyHtHm1ro9kWA73Z
	NYVyopc3KOT6kMqP3NUdOWhGrvyl8L3SxP7LwOBoVw88iGuQlfEAO8e84BI85KuJgKumtV
	u4yFCjZVsXWySr3igG+aKK+onGy9Iw4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-615-htIc8jBKPcaVCLr6BicS8Q-1; Sun, 23 Jan 2022 05:10:45 -0500
X-MC-Unique: htIc8jBKPcaVCLr6BicS8Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E09591853020;
	Sun, 23 Jan 2022 10:10:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBD45105958B;
	Sun, 23 Jan 2022 10:10:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 316544BB7C;
	Sun, 23 Jan 2022 10:10:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NAAZ5M025403 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 05:10:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DD6C22166B2F; Sun, 23 Jan 2022 10:10:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D985B2166B25
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 10:10:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF4A9805F4A
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 10:10:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-385-8zEwDV9PN0uyme5vlSsaVg-1; Sun, 23 Jan 2022 05:10:31 -0500
X-MC-Unique: 8zEwDV9PN0uyme5vlSsaVg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JhTQG4kCHzNWN
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 05:10:30 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JhTQG46bYzcbc; Sun, 23 Jan 2022 05:10:30 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JhTQG3PqbzcbC
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 05:10:30 -0500 (EST)
Date: Sun, 23 Jan 2022 05:10:30 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: web page problem
In-Reply-To: <alpine.DEB.2.21.2201231136070.9928@nkl.local>
Message-ID: <4dead0a9-a399-e99c-5796-af7cf8f9a5e4@panix.com>
References: <2ca4507f-ab68-76a0-8bdf-56502d49fa4d@panix.com>
	<alpine.DEB.2.21.2201231136070.9928@nkl.local>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks, that one I didn't know about and read the wget man page too.
I'm working on a small script for Jenux and if all of this works I'll
share with the list.


On Sun, 23 Jan 2022, Linux for blind general discussion wrote:

> Hi
>
> If the file is listed in some html file you can use wget with
> -A
> or
> --accept-regex
> parameters if there is certain pattern to recognize the file.
>
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

