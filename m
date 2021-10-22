Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BA443764B
	for <lists+blinux-list@lfdr.de>; Fri, 22 Oct 2021 14:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634904106;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FK4I4xV9iVl6qE631V9tT6p9gfRAms5hEFlioar7x+c=;
	b=QPlsY2G97f15X5onpdUoSdhU9pkXPMB3ejFMF/RQV4CHavCLYF83q7TbXUkABCMRwUwrHR
	+wLiP3qZLHnIzSLsbyKHzZorQOykfa9JPg6MSDoTojE9O826+e5G4Z9gkIkYewS0vYThgs
	6Ik7D7pmGmKtQTVgbXbVtyhPsa5Zu7A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-VgQoeV2_MJu0y3MpzhKXWw-1; Fri, 22 Oct 2021 08:01:44 -0400
X-MC-Unique: VgQoeV2_MJu0y3MpzhKXWw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26B401018725;
	Fri, 22 Oct 2021 12:01:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40DA460D30;
	Fri, 22 Oct 2021 12:01:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4CDE04ED2A;
	Fri, 22 Oct 2021 12:01:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19MC1UEO007801 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Oct 2021 08:01:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 30A43D1BB0; Fri, 22 Oct 2021 12:01:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BC96D1BA4
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 12:01:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A295A106655A
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 12:01:25 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-405-oeJZUftZNEGMXxAVGqK3hQ-1; Fri, 22 Oct 2021 08:01:21 -0400
X-MC-Unique: oeJZUftZNEGMXxAVGqK3hQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4HbNH419jsz8vNV
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 12:01:20 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id tHOYfJGQGZ_l for <blinux-list@redhat.com>;
	Fri, 22 Oct 2021 12:01:19 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4HbNH33n9mz8tmn
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 12:01:19 +0000 (UTC)
Message-ID: <20211022.120138.060.28@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: youtube-dl: list videos in order
Date: Fri, 22 Oct 2021 07:01:38 -0500
MIME-Version: 1.0
In-Reply-To: <174fc529-33dd-5767-37da-98f727ffe63@hubert-humphrey.com>
References: <20211022.113332.040.27@[192.168.1.100]>
	<174fc529-33dd-5767-37da-98f727ffe63@hubert-humphrey.com>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19MC1UEO007801
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yeah that is interesting. Wonder what happened to it.
I'll try the youtube-vviewer, thanks.
----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Fri, 22 Oct 2021 04:40:17 -0700 (PDT)
Subject: Re: youtube-dl: list videos in order

> While I've only used youtube-dl for single urls, I would suggest trying 
> youtube-viewer  with a -u flag for user name. The videos would begin with most 
> recent. Its also interesting, when typing
> youtube-dl -U
> there hasn't been an update since June 06.
> Chime
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

