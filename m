Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 58ED2207E0D
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 23:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593032616;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OjYemdaRtKNysXKctSlVghPBNMoB9GkINf62EMiS8AQ=;
	b=D6Iy4L1KIFSX4QEjS8k+rekBaqQH+B7Ep3Ko8uBn8zOJeIS0BxkC8s2OtnQmp71yo1DgK5
	JF6KzmSTCx0rBJo5sFyHpcrE1XNRKXdCQ5xyTyCBWdjKX7EwPidzkSVW4SPTB2Qn3tPccM
	L4V9PEbbBnXKTs/SCUBQnbNjBxnf0Co=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-476-3y7h6PKmOw2xdoleZvzyGg-1; Wed, 24 Jun 2020 17:03:31 -0400
X-MC-Unique: 3y7h6PKmOw2xdoleZvzyGg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 493ED800FF2;
	Wed, 24 Jun 2020 21:03:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B34957FE8B;
	Wed, 24 Jun 2020 21:03:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D9BA2833D6;
	Wed, 24 Jun 2020 21:03:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OL3L3D031727 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 17:03:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3A14C2156A2D; Wed, 24 Jun 2020 21:03:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34787217B43C
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 21:03:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 339BF8007CE
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 21:03:19 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-461-cUxZEuqPNEmVB3pGpNiVRQ-1; Wed, 24 Jun 2020 17:03:16 -0400
X-MC-Unique: cUxZEuqPNEmVB3pGpNiVRQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 1CC68541DAC; Wed, 24 Jun 2020 21:03:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 1BDBA540303
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 17:03:15 -0400 (EDT)
Date: Wed, 24 Jun 2020 17:03:15 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: anonymity, threads, signatures, and confusion
In-Reply-To: <CAO2sX32BWM_Oxdme42Ok1_bG0Yok2hpAZDWSOoMM-tV3_bScBA@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2006241652280.28651@server2.shellworld.net>
References: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
	<Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
	<435D6EB7-70C3-4C70-AAED-11CE64B93241@cfcl.com>
	<Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
	<CAO2sX32BWM_Oxdme42Ok1_bG0Yok2hpAZDWSOoMM-tV3_bScBA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit




On Wed, 24 Jun 2020, Linux for blind general discussion wrote:
> I'm not sure who the list owner/administrator is or even if they're
> active, but I assume Rich would've already tried to figure out a way
> to conceal e-mail addresses without completely anonymizing the list if
> he had the access to do so.
If memory serves, it was the list manager who implemented the current 
environment, meaning choice and ability was involved.

>
> That said, asking for users to include some kind of  tag line in their
> posts to make it easier to keep straight who said what isn't an
> unreasonable request, and while I doubt I'll actually make a habit of
> it because I'm somewhat absent-minded and forming new habits is hard
> and pretty much anyone can just ignore the request, actually  getting
  hostile about it seems uncalled for.

If memory serves it takes less than 30 days to adopt a new habit.  Far 
from hard.
As for hostel, who?
Surely you are not projecting an interpretation of a posters emotional 
state from words on a screen?
Especially if  punctuation often associated with hostility is absence?

As stated, and agreed to, nothing currently prevents a person from 
providing details about themselves in posts.
If individuals are not choosing to do as much, while still learning here, 
well.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

