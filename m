Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 3A6DE207B74
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 20:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593023088;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p4ICg6x7yLSfRMRwCQ62VoIWFP0jbAzOHIOeoSLLceg=;
	b=O1h/j8+Exd1xU/Ss2LjTEqGnqFhAcOuQQQfj0gSHxdiCllpMH/bGoAGz5p7mhY0IJ0W6VV
	2i3h2A+DEWYd0EsbTOmaRRBnww6gPW4yvBWxbDm9ZUAcW0Uvohi6eFLRcq2fOriXuOmEKR
	f/6+Vu4iw9EEOdwaLiUf1rQvoJU5uIA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-AR3Dn0gSPqWxg0SQm4YvaA-1; Wed, 24 Jun 2020 14:24:45 -0400
X-MC-Unique: AR3Dn0gSPqWxg0SQm4YvaA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EEACB19057A8;
	Wed, 24 Jun 2020 18:24:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8BBF8926C;
	Wed, 24 Jun 2020 18:24:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 523B1833D3;
	Wed, 24 Jun 2020 18:24:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OIOawu016428 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 14:24:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C63832156A2D; Wed, 24 Jun 2020 18:24:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF54F217B43D
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 18:24:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C3EA8007D0
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 18:24:32 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-63-ZX8ngXCnP2itYcM9oBSEmQ-1; Wed, 24 Jun 2020 14:24:29 -0400
X-MC-Unique: ZX8ngXCnP2itYcM9oBSEmQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 62B685419CD; Wed, 24 Jun 2020 18:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 5A3B65410E7
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 14:24:28 -0400 (EDT)
Date: Wed, 24 Jun 2020 14:24:28 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: anonymity, threads, signatures, and confusion
In-Reply-To: <435D6EB7-70C3-4C70-AAED-11CE64B93241@cfcl.com>
Message-ID: <Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
References: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
	<Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
	<435D6EB7-70C3-4C70-AAED-11CE64B93241@cfcl.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit




On Wed, 24 Jun 2020, Linux for blind general discussion wrote:
> Yes, I'm aware of that unfortunate history.  However, there's no reason to make the list less useful, just to protect email addresses.
I suppose you are the list owner making this unilateral decision for 
everyone?
If not, more useful out weighing email address protection, for whom 
exactly?
I am unsure what  allows you  to make these decisions, define these issues 
for others, when the current decision was discussed and  the choice made.
Nothing presently prevents individuals from placing  anything they wish 
into the body of their posts.

>
> Adding an identifying signature (however obscure) lets folks follow conversations more easily.  If I know that the "FredQ" who posted one message posted another one earlier, it gives me useful context.
>
> - Rich Morin (rdm@cfcl.com)
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

