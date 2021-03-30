Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 978AB34EE36
	for <lists+blinux-list@lfdr.de>; Tue, 30 Mar 2021 18:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617122824;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2ZWLkh8B9E7Ifft0wRAcHqlwNyjvMZ3gSDg7Sh5Hy9U=;
	b=jIuaUGs8jDOO7/ab52Jr9GwbDJaw3b9jy/MxmkmkmzrWrAKVk/M1opCByMwIWhmMrPxCdC
	1GsN6vJD8wPY/EvgIz8mj2/hjm+4iuxpv5WR74q5xMy9MqORx1RVo6toAJ/OTIGOkZmTRz
	02p94R1jdnQCgxs89vaQWcMJ8ASsJAs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-2KFvMWK1MKiragAm6XwC1A-1; Tue, 30 Mar 2021 12:47:02 -0400
X-MC-Unique: 2KFvMWK1MKiragAm6XwC1A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F7FD8030A1;
	Tue, 30 Mar 2021 16:46:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F2955DDAD;
	Tue, 30 Mar 2021 16:46:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4F8D71809C83;
	Tue, 30 Mar 2021 16:46:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12UGY5bm009539 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Mar 2021 12:34:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A413E2026D13; Tue, 30 Mar 2021 16:34:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E8782026D6B
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 16:34:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 049FA802C19
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 16:34:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-104-R8AODwoWNq-CBI8IC7HaNA-1; Tue, 30 Mar 2021 12:34:00 -0400
X-MC-Unique: R8AODwoWNq-CBI8IC7HaNA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4F8w4m39Rbz1mJB
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 12:34:00 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4F8w4m2P23zcbc; Tue, 30 Mar 2021 12:34:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4F8w4m1zG6zcbW
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 12:34:00 -0400 (EDT)
Date: Tue, 30 Mar 2021 12:34:00 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: reddit clients
In-Reply-To: <20210330103455.3bcdde17@bigbox.attlocal.net>
Message-ID: <alpine.NEB.2.23.451.2103301230450.11821@panix1.panix.com>
References: <20210330.145206.677.2@[0.0.0.0]>
	<20210330103455.3bcdde17@bigbox.attlocal.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

git clone https://gitlab.com/ajak/tuir/pipelines?ref=master
Better than using pipi.
The README.md file you download is a real html mess so won't be that easy 
to read but once you get it built it does work.
It will be called tuir on the system.


On Tue, 30 Mar 2021, Linux for blind general discussion wrote:

> Tim here.  There are several CLI reddit clients.  The granddaddy of
> them was `rtv` but the maintainer stopped development.  They have a
> page listing some forks/alternatives:
>
> https://gist.github.com/michael-lazar/8c31b9f637c3b9d7fbdcbb0eebcf2b0a
>
> TUIR was one fork that I've heard of but it didn't make it; "TTRV"
> seems to be an active fork though this is the first I've heard of it;
> and they list `reddio` as such a viewer written in shell-script (not a
> fork).
>
> Last time I used `rtv` it required some OATH tokens passed around via
> the browser first to get the initial login that you handed off to
> `rtv` but after it had successfully connected once, it worked
> uneventfully from there out.
>
> Hope this helps,
>
> -Tim
>
>
> On March 30, 2021, Linux for blind general discussion wrote:
>> Do we have any accessible reddit clients for linux? Command line
>> preferable, but not necessary. Thanks.
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

