Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F007A376B39
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 22:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620420089;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oqJ4Yux3gykuDmQESdrw77nFbU8zEfAJgT9fpIKUCVw=;
	b=UsYJ8pmT0bj4nYuqnx4l0wlDBxBV3LmlJa3yrRnoEZiGHqlHefxa88b5V4swwVhAaUs8f8
	1pd6febHuiXyCQhoU6eztUIhqChkxzLithn0CxrhRrP1vA0HKwMiUDZC+jTAw09ao8vNAE
	nG4Ea7VW1PSg2nySzpfQTJ2bhxMPCbQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-WW5-u1a5PJ2iIRlVRfkv9g-1; Fri, 07 May 2021 16:41:27 -0400
X-MC-Unique: WW5-u1a5PJ2iIRlVRfkv9g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C0A19127E;
	Fri,  7 May 2021 20:41:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7951836DE;
	Fri,  7 May 2021 20:41:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC76B55352;
	Fri,  7 May 2021 20:41:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 147KfDss023891 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 7 May 2021 16:41:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ADAE2153EDED; Fri,  7 May 2021 20:41:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA2F1153EE0C
	for <blinux-list@redhat.com>; Fri,  7 May 2021 20:41:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 84A03858F0D
	for <blinux-list@redhat.com>; Fri,  7 May 2021 20:41:10 +0000 (UTC)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com
	[216.252.162.32]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-29-hHndmL-ZONuA-pY72O_Mvg-1; Fri, 07 May 2021 16:41:07 -0400
X-MC-Unique: hHndmL-ZONuA-pY72O_Mvg-1
Received: from localhost (<unknown> [2602:3f:e0f9:dc00::2])
	by hurricane.the-brannons.com (OpenSMTPD) with ESMTPSA id 21c54f78
	(TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO) for <blinux-list@redhat.com>;
	Fri, 7 May 2021 13:34:25 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Introduction
References: <990fd5c6-8f5f-4813-3fb3-a3b849ab5ffe@protonmail.com>
Date: Fri, 07 May 2021 13:34:23 -0700
In-Reply-To: <990fd5c6-8f5f-4813-3fb3-a3b849ab5ffe@protonmail.com> (Linux for
	blind general discussion's message of "Thu, 06 May 2021 23:56:53
	+0000")
Message-ID: <87sg2y2shc.fsf@the-brannons.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux for blind general discussion <blinux-list@redhat.com> writes:

> Hello everyone,
>
> I have already sent a mail or two to this list some time ago, but until
> now, I did not introduce myself. And before I'll continue posting, I
> thought it'd be good to fix this.

Hello Rastislav,
It's ok, because everyone on the list is anonymous now.  If you sent
mail previously, you just blended in with the crowd.  And yeah, I
hate it.  I consider this list busted.  We don't even have pseudonyms to
distinguish ourselves one from another.

FWIW I'm Chris Brannon, and I've been a Linux user since mid 2000.  I
hail from the state of Oregon in the US.  There's a bit more about me in
my signature at the end of the message.

Welcome to the blind Linux community!

-- 
Chris Brannon
Founder: Blind and Low Vision Unix Users Group (https://blvuug.org/).
Personal website: (https://the-brannons.com/)
Chat: IRC: teiresias on freenode, XMPP: chris@chat.number89.net

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

