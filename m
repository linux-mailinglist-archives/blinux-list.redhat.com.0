Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E693E31DD43
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 17:25:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613579159;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KfsSO5g663QtrS82RrQk8/koJT5V8IsO7mgxagRlFpg=;
	b=WfVQRCnKKhPwXql4UHvJfuaxdeDWfTbf9R60PefCAMd7AsiPcQinid1nlN26/1Io599/ax
	FZwTuwSeGpTQKzsY0BscrE3kAjJ4EwgGKLsypgk8HFG0CLq/U8HOdl+7eHyc4OQ89IOo4d
	0swTQXSofIR2qZ+q5e7FEEpz3joTc1o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-567-7b8MrZ7hNE62RqI4EWIOZQ-1; Wed, 17 Feb 2021 11:25:55 -0500
X-MC-Unique: 7b8MrZ7hNE62RqI4EWIOZQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C9F1100CCC1;
	Wed, 17 Feb 2021 16:25:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14B7B60C5F;
	Wed, 17 Feb 2021 16:25:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC83818095CB;
	Wed, 17 Feb 2021 16:25:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HGPFpL027979 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 11:25:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2EA27206291A; Wed, 17 Feb 2021 16:25:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 293852062917
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:25:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EF347186E12C
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:25:12 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-424-pFvEr9X4N46d5PftKKVlWw-1; Wed, 17 Feb 2021 11:25:08 -0500
X-MC-Unique: pFvEr9X4N46d5PftKKVlWw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id D138E621C46; Wed, 17 Feb 2021 16:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id D04DB620222;
	Wed, 17 Feb 2021 11:25:06 -0500 (EST)
Date: Wed, 17 Feb 2021 11:25:06 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is this possible?
In-Reply-To: <alpine.NEB.2.23.451.2102171111070.5642@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2102171119510.1319856@server2.shellworld.net>
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102171111070.5642@panix1.panix.com>
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
Cc: Linux for blind general discussion <blinux-list@e1890.dsca.akamaiedge.net>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I am not talking about shellworld, as I am using it now.
In fact I  can ssh into shellworld from my DOS computer.
However, shellworld is a shell, not a graphical desktop  edition of 
Ubuntu.
same can be said for the shell dreamhost, who is the hosting service for 
my office, provides its clients.
My question is related to an entirely different issue, where a work 
associate  asked if one could do what I do, but into a strictly 
graphical  desktop of Ubuntu.



On Wed, 17 Feb 2021, Linux for blind general discussion wrote:

> shellworld.net is running ubuntu, so that ought to be possible unless 
> misconfigured.
>
>
> On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
>
>>  Hi folks,
>>  Is it possible to ssh into a graphical desktop edition of Linux, Ubuntu
>>  for example?
>>  Karen
>> 
>>
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@listman.redhat.com
>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

