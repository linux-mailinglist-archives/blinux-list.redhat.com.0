Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 926F32B3580
	for <lists+blinux-list@lfdr.de>; Sun, 15 Nov 2020 15:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605451915;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KmgLqJPzk+YgEqZqoYwLkk+epsFBdv9aczLTVXiShmE=;
	b=D7riAG4bNyRz5dip3wZvS6mjqZ6x2mMlxeqh4VainhTn/s0C/25a392MykpG0oDjOzyHmg
	u+LRnF7YdwjOw0pWnU3A/jvr04Jdk5zmTCy3+AZUmuyGrF13lMKFr/WrX+pnCwZ9TmMz/5
	OS8wmZPZ7qoebXUlzNhuyXzARHOpK3U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-LOgSggkxPhG5uln62qoAnQ-1; Sun, 15 Nov 2020 09:51:52 -0500
X-MC-Unique: LOgSggkxPhG5uln62qoAnQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 229681007487;
	Sun, 15 Nov 2020 14:51:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82AF851919;
	Sun, 15 Nov 2020 14:51:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B410C180B658;
	Sun, 15 Nov 2020 14:51:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AFEnXZd020508 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 15 Nov 2020 09:49:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E5EB02166BA0; Sun, 15 Nov 2020 14:49:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E10652166B44
	for <blinux-list@redhat.com>; Sun, 15 Nov 2020 14:49:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7203A185A790
	for <blinux-list@redhat.com>; Sun, 15 Nov 2020 14:49:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-344-mYGzGPfBNK-JQC9h50qB7A-1; Sun, 15 Nov 2020 09:49:27 -0500
X-MC-Unique: mYGzGPfBNK-JQC9h50qB7A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CYw8R2wWQzbqV
	for <blinux-list@redhat.com>; Sun, 15 Nov 2020 09:49:27 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CYw8R219Wzcbc; Sun, 15 Nov 2020 09:49:27 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CYw8R1fhFzcbW
	for <blinux-list@redhat.com>; Sun, 15 Nov 2020 09:49:27 -0500 (EST)
Date: Sun, 15 Nov 2020 09:49:27 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: latest iso of jenux?
In-Reply-To: <fea4d0e7-5caf-f5b7-cf0a-5f3b313acb3e@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2011150949060.18575@panix1.panix.com>
References: <fea4d0e7-5caf-f5b7-cf0a-5f3b313acb3e@gmail.com>
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Try
https://nashcentral.duckdns.org/projects/Jenux-2020.11.12-dual.iso
On Sat,
14 Nov 2020, Linux for blind general discussion wrote:

> Date: Sat, 14 Nov 2020 23:19:40
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: latest iso of jenux?
>
> Hello can I please get the iso to the latest jenux?
>
> Hank
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

-- 
United States has 633 Billionaires with only 10 doing any annual
significant giving.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

