Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 394CD31E46E
	for <lists+blinux-list@lfdr.de>; Thu, 18 Feb 2021 04:06:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613617594;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NLO2Y+TgwvM4IAaa6rdFutGRzdn51duKcN0uTHbA7Fo=;
	b=Ge8zBrNOX3vqoNMiKupo2djeXPaINEjeztt5Wg8Y8ZOGH8HT0Stx+oKCXTpyq5MKIQdrfS
	mxZ80iB49wOjxa3ltpyt+wwCjdMp2UeYak7UBD6tIpRtrGI5WAMpXyvMMj00VFqJV3EPZ5
	0OEsBH4MJUobTXv1LcrKNYo+Z86VL+U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-291-XzFlPaNYMzK0kmV9aVUqng-1; Wed, 17 Feb 2021 22:06:31 -0500
X-MC-Unique: XzFlPaNYMzK0kmV9aVUqng-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CC57107ACC7;
	Thu, 18 Feb 2021 03:06:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F66272168;
	Thu, 18 Feb 2021 03:06:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E64FE4EE4D;
	Thu, 18 Feb 2021 03:06:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11I36BOW016491 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 22:06:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 295E2115D365; Thu, 18 Feb 2021 03:06:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 243D3115D363
	for <blinux-list@redhat.com>; Thu, 18 Feb 2021 03:06:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D9F03800B28
	for <blinux-list@redhat.com>; Thu, 18 Feb 2021 03:06:08 +0000 (UTC)
Received: from nntp.AegisInfoSys.com (nntp.AegisInfoSys.com [65.242.138.29])
	by relay.mimecast.com with ESMTP id us-mta-407-WjTjU8zAOWeDQ83RtyK0Zg-1;
	Wed, 17 Feb 2021 22:06:06 -0500
X-MC-Unique: WjTjU8zAOWeDQ83RtyK0Zg-1
Received: (from henry@localhost) by nntp.AegisInfoSys.com (8.6.9/8.6.9) id
	WAA14873; Wed, 17 Feb 2021 22:02:56 -0500
Date: Wed, 17 Feb 2021 22:02:55 -0500
To: Linux for blind general discussion <blinux-list@e1890.dsca.akamaiedge.net>
Subject: Re: Is this possible?
Message-ID: <20210218030254.GY21290@nntp.AegisInfoSys.com>
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
Mime-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
User-Agent: Mutt/1.4.2.3i
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
Cc: Linux for blind general discussion <blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

there have been a number of followups to your question, but not sure if
a basic misconception has been addressed:

linux is an operating system that does not require (for all intents and
purposes) any user interface at all, whether graphical or not. very generally
speaking, the various graphical interfaces for mainstream linux are all
optional; it's even theoretically possible to run more than one simultaneously.
linux itself doesn't really create a distinction between remote and local.

it is possible to remotely access a linux machine as a remote shell,
as remote graphically, or using a remote-as-local method such as vnc or rdp.
so the answer to your very broad question is "yes", but the real question
is what, more precisely, do you need to accomplish.

On Wed, Feb 17, 2021 at 01:50:01AM -0500, Linux for blind general discussion wrote:
> Hi folks,
> Is it possible to ssh into a graphical desktop edition of Linux, Ubuntu 
> for example?
> Karen

-- 
Henry Yen                                       Aegis Information Systems, Inc.
Senior Systems Programmer                       Hicksville, New York

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

