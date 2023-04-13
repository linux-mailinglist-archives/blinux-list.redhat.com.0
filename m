Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DD46E172E
	for <lists+blinux-list@lfdr.de>; Fri, 14 Apr 2023 00:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1681423757;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G3V6ablXGjWLToHY53EqaHYFoMUUDCaCB/MPyTztJWg=;
	b=hdtHLd4wSNyJQUpXu2Gehuh2pf7eAh8zP240DuOYGi63ww4f9v1r+mtfzvgaf90EyRPIch
	RO88wLevQJ8VUZjCHdvps8FXpSfefzJNKxSE9cZ91QWFCSfIvSHvcaZgNP4yNXlgLgCbtd
	fEnYLRrewjJSyM+Z/bUsjY2Z/WSy4D0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-136-ZFgNKTlcNAWJ0jSfzLn3jw-1; Thu, 13 Apr 2023 18:09:15 -0400
X-MC-Unique: ZFgNKTlcNAWJ0jSfzLn3jw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E18C185A792;
	Thu, 13 Apr 2023 22:09:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0D298492C13;
	Thu, 13 Apr 2023 22:09:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 53C3E1946A75;
	Thu, 13 Apr 2023 22:09:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.1964.1681420441.2632807.blinux-list@redhat.com>
References: <mailman.1841.1681419307.2632801.blinux-list@redhat.com>
 <mailman.2007.1681419804.2632806.blinux-list@redhat.com>
 <mailman.1964.1681420441.2632807.blinux-list@redhat.com>
Date: Thu, 13 Apr 2023 18:09:04 -0400
Subject: Re: In the market for a new Desktop.
To: blinux-list@redhat.com
Message-ID: <mailman.2300.1681423749.2632804.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, the system drive on the old Desktop is a 320 GB HDD I salvaged
from an old netbook, so I at least want to upgrade to SSD for the OS
even if I wait another cycle or two of capacities going up and prices
coming down before investing in a 4TB SSD so all of my data is on
flash instead of spinning platters.

As for doing a custom build, had I a reliable daily runner and money
to burn or access to someone knowledgeable enough to help troubleshoot
issues in person, I might consider it as a side project, but I've
never built a PC before, the most I'm comfortable with doing inside a
tower is installing/removing SATA drives, I live in a small, middle of
nowhere town that can't really support a computer repair shop and I'm
the most tech savvy person I know in meatspace by a wide margin, and
this old dell I'm using as a stop gap until I get a new PC is running
worse on bare metal than the dead HP ran a LiveDVD(and I think the
Dell also has a dead CMOS battery as its boot order seems to reset to
HDD first everytime its unplugged, forcing sighted assistence every
time I need to boot install media or a Live DVD to do rescue
operations, so I'm afraid to even try customizing the Install of
Debian I managed to put on it since I can't willy nilly boot into a
Live environment to make/restore backups of my root partition.

In short, I don't have the experience to build a custom rig and be
certain everything will work first try, don't have anyone with said
experience I can turn to, and my stopgap is too fragile to put up with
delays if I don't get the custom build right on the first try. And I
was dealing with software issues on the old HP for about a week before
its death knell, so I'm pretty much at the end of my patience for
dealing with tech issues.

On 4/13/23, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> I thought about the custom build myself, but from what I see at the
> moment, the CPU and motherboard bundles are running close to $500 now,
> and that's not even taking into account the RAM. The good thing is that
> you won't be saddled with an OS that you have to get rid of, because
> there is no OS on a custom build other than the one you put on it or
> hire a builder to put on it, and the boot firmware should just boot up
> from the optical drive or USB you plug into it before you transplant the
> hard drives. That said, you shouldn't even have to worry about
> installing a new OS from scratch unless your SSD is damaged. This is
> because Linux is very easy to transfer from one PC to the next just by
> taking the OS drive out of one and putting it into the other. Since in
> that case you wouldn't really need to worry about hard drives sucking up
> your funds, your CPU, motherboard, RAM, case and optical drive should
> most likely stay under $700, and definitely under the $1,000 high side
> of your budget without making your life needlessly difficult or making
> you get help just to boot it up for the first time.
>
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

