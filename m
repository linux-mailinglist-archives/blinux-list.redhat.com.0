Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 9480A207BE7
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 21:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593025285;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R++LCgObbD4ZkUMYEZpRymYCvfrLxu9hH4iNhWrjoTo=;
	b=h6vOXu9853Byl4bKaFKNBqXswMfJEt8rGgZGF1NJ+XKS3io8rN4jfNBYdjW3GfTG5E61iH
	qpPpU8GpENMz0Xe3sVSbbDmIDwIcknfhGEOsz5SUMT9pxNmuJTxgxR0S9vUSXVcNUT9CDY
	NkO4uNr+/Bhb/EmBlNvdKBXEm+EDdzc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-505-Qq18VRBePBikoFR5DUZDUw-1; Wed, 24 Jun 2020 15:01:23 -0400
X-MC-Unique: Qq18VRBePBikoFR5DUZDUw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A01618A822D;
	Wed, 24 Jun 2020 19:01:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33F292B4A7;
	Wed, 24 Jun 2020 19:01:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 460A41809547;
	Wed, 24 Jun 2020 19:01:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OJ1DND019720 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 15:01:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2866C10C6EAD; Wed, 24 Jun 2020 19:01:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 244C910C6EA8
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 19:01:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B6BA108C270
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 19:01:11 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-480-4JY5DdgLNSyL86BVahx7pg-1; Wed, 24 Jun 2020 15:01:07 -0400
X-MC-Unique: 4JY5DdgLNSyL86BVahx7pg-1
Received: from spot.local (spot.local [IPv6:fe80::187a:b534:6313:c269])
	by cfcl.com (Postfix) with ESMTP id 6E808103D192
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 12:01:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: anonymity, threads, signatures, and confusion
Date: Wed, 24 Jun 2020 12:01:04 -0700
References: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
	<Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
	<435D6EB7-70C3-4C70-AAED-11CE64B93241@cfcl.com>
	<Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
Message-Id: <879D2191-148A-4886-983D-FF51D37B3C25@cfcl.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05OJ1DND019720
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Jun 24, 2020, at 11:24, (someone) wrote:
> 
> On Wed, 24 Jun 2020, (someone else; actually me) wrote:
>> Yes, I'm aware of that unfortunate history.  However, there's no reason to make the list less useful, just to protect email addresses.
> I suppose you are the list owner making this unilateral decision for everyone?

Nope; just making a plea for folks to voluntarily put in signatures of some sort.

> If not, more useful out weighing email address protection, for whom exactly?
> I am unsure what allows you to make these decisions, define these issues for others, when the current decision was discussed and the choice made.

I'm allowed to have my opinions, as is (I presume) anyone on the list.  My opinion, in this case, is that a way should be found to include some form of identification, without revealing the sender's email address.  That said, I'm not the list administrator, so I don't have (or want) any control in this matter.

> Nothing presently prevents individuals from placing anything they wish into the body of their posts.

Indeed.

-r




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

