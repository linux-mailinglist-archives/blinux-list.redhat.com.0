Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A8FB2381C40
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 05:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621136286;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RYxjFnCU6XwW3JlgYMcPU5y8mM9RD7uj+9gxrzqwF6M=;
	b=DXPZqrBIGxb+7ey+MyAnyKwsaM38iZrf/HZp8N5oPADeo087OaMYj/ao5V9KXMtvOjOuEc
	ELAdmp3pmsPuwcyM0z7mGrBo+5cOlFmd7CoxgaqQkXfrymQ4qLhbZUcH37ywGnqCUn5HW0
	jdiuSHAShhs+ZIrrGUSt5wi8DOKeLhw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-327-wrWW_aoBO7yUXL2xDa75Xg-1; Sat, 15 May 2021 23:38:04 -0400
X-MC-Unique: wrWW_aoBO7yUXL2xDa75Xg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CEC89800FF0;
	Sun, 16 May 2021 03:38:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4742419D9B;
	Sun, 16 May 2021 03:38:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F396D55344;
	Sun, 16 May 2021 03:37:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G3btmB024600 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 May 2021 23:37:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2948D2034256; Sun, 16 May 2021 03:37:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24C87203424D
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:37:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD368101A531
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:37:52 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-536-2Q6r_KMNMQm4_ET49p4fuA-1; Sat, 15 May 2021 23:37:50 -0400
X-MC-Unique: 2Q6r_KMNMQm4_ET49p4fuA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 04275621D7B; Sun, 16 May 2021 03:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id F33D7620219;
	Sat, 15 May 2021 23:37:47 -0400 (EDT)
Date: Sat, 15 May 2021 23:37:47 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Vox.com: Why captchas are getting harder (fwd)
In-Reply-To: <alpine.NEB.2.23.451.2105152322030.25128@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2105152336590.2852249@server2.shellworld.net>
References: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
	<Pine.LNX.4.64.2105152115100.2849188@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152219530.27440@panix1.panix.com>
	<Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
	<ae4b711d-2c14-1bb3-f751-4ca4171277e@hubert-humphrey.com>
	<alpine.NEB.2.23.451.2105152322030.25128@panix1.panix.com>
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
Cc: blindtlk@nfbnet.org
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Which is why nothing beats a good old fashioned transcript.
Little privacy trade off required smiles.



On Sat, 15 May 2021, Linux for blind general discussion wrote:

> I don't know what happened to straw-viewer it may still be supported but
> pipe-viewer seems to have replaced it on archlinux.  There's mention of
> straw-viewer but no package so far as I can tell.
>
>
> On Sat, 15 May 2021, Linux for blind general discussion wrote:
>
>> Well, youtube-viewer works well to play, search, or download items from
>> youtube, also, youtube-dl which is updated rather frequently.
>> Chime
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
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

