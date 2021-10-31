Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A488440F82
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 17:47:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635698839;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IN0i8oupipcmkrQ05xZquyBGr4dfNXbJzcPZe5T6AN4=;
	b=HFh/Mpwrp2nyTCHTKEmUhWVK9Y0jTM3S/9pRnZUTXVa3Ws6VOYm3wsJP6Hpqs4t3epB1I/
	ntayP7wmbM3+F/9OAD4fQpaFGstUkX4JaQ7cEXzmGvndtb2JB6AsErx5zBgYes65hflVZd
	SGBZ/cSp8MUO5YZMRiwW9JUfcONdHTI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-599-E8ZxkbDqPO-A2CPtS_kqwQ-1; Sun, 31 Oct 2021 12:47:15 -0400
X-MC-Unique: E8ZxkbDqPO-A2CPtS_kqwQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E19AD1808302;
	Sun, 31 Oct 2021 16:47:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D8E2E5C1C5;
	Sun, 31 Oct 2021 16:47:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 338154A704;
	Sun, 31 Oct 2021 16:47:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19VGl0bv011973 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 12:47:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 55E332026D5D; Sun, 31 Oct 2021 16:47:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FC012026D48
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 16:46:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 884E0800B26
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 16:46:57 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-137-DS2It2EhOoiBRf0vy7sk2w-1; Sun, 31 Oct 2021 12:46:54 -0400
X-MC-Unique: DS2It2EhOoiBRf0vy7sk2w-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 3E04F621C45; Sun, 31 Oct 2021 16:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 391D5620239
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 12:38:28 -0400 (EDT)
Date: Sun, 31 Oct 2021 12:38:28 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Beginner's Guide To The Linux Terminal
In-Reply-To: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
Message-ID: <Pine.LNX.4.64.2110311235300.25914@server2.shellworld.net>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

That may be a fine resource for those who can use YouTube.
what has always concerned me about Linux though is what seems to be a lack 
of external solid resources providing such content.
YouTube gets less inclusive for lower graphics users all the time.
And not everyone learns well from videos.



On Sun, 31 Oct 2021, Linux for blind general discussion wrote:

> Hi,
> For the new Linux users such as myself,
> I found this on Youtube.
> I learned that you can open the terminal with
> ctrl+alt+t
> Checkout this video.
> https://youtu.be/s3ii48qYBxA
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

