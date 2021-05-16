Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 75EA2381C28
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 04:55:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621133750;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LPs4OSBSfAoH1NfJqbbPUe5ff1p8n0Q7iFfFwkpgRj4=;
	b=TEbGR8defUUEzVxRu9P9aY1A+yvzqI8gH+waHr1FzESkJbV0/K6KNuNw4BlqGuFbSHGYHi
	fPFdycvyuGXjLb2H3H0caG1K0poiHMkOlZSjGWxn/Cu/oznFuIcZ5GvF5z8aernxEkQsYJ
	qXdQLJ+ReF6KsvB1YS7QQCCgCbLlYD4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-EODouma7PKWWk3yRPEQqSg-1; Sat, 15 May 2021 22:55:48 -0400
X-MC-Unique: EODouma7PKWWk3yRPEQqSg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79157107ACCA;
	Sun, 16 May 2021 02:55:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A5615D9C6;
	Sun, 16 May 2021 02:55:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5B6EE1801028;
	Sun, 16 May 2021 02:55:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G2tZ6n022755 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 May 2021 22:55:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6B6711102E16; Sun, 16 May 2021 02:55:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 634121102E0C
	for <blinux-list@redhat.com>; Sun, 16 May 2021 02:55:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7B421857F28
	for <blinux-list@redhat.com>; Sun, 16 May 2021 02:55:32 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-493-JtFs4VImOFygpRD2WiH7Uw-1; Sat, 15 May 2021 22:55:30 -0400
X-MC-Unique: JtFs4VImOFygpRD2WiH7Uw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id D0FD3621D7B; Sun, 16 May 2021 02:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id CF9C162022B;
	Sat, 15 May 2021 22:55:28 -0400 (EDT)
Date: Sat, 15 May 2021 22:55:28 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Vox.com: Why captchas are getting harder (fwd)
In-Reply-To: <alpine.NEB.2.23.451.2105152219530.27440@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
References: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
	<Pine.LNX.4.64.2105152115100.2849188@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152219530.27440@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Save that YouTube no longer works well in command line Linux.
Meaning many of those who need to understand the captcha barriers are not 
likely to get this information.



On Sat, 15 May 2021, Linux for blind general discussion wrote:

> With a youtube account, you could search for the vox.com channel or
> channels and subscribe to one of them.  I think this article is in the
> future perfect channel if such exists.  That way you bypass the captchas
> this time.
>
>
> On Sat, 15 May 2021, Linux for blind general discussion wrote:
>
>> Is there a transcript for those of us who cannot solve the captchas for
>> Youtube?
>>
>>
>>
>> On Sat, 15 May 2021, Linux for blind general discussion wrote:
>>
>>>
>>>
>>> ---------- Forwarded message ----------
>>> Date: Fri, 14 May 2021 23:56:57
>>> From: Jude DaShiell <dashielljude@gmail.com>
>>> To: Jude DaShiell <jdashiel@panix.com>
>>> Subject: Vox.com: Why captchas are getting harder
>>>
>>> Vox.com: Why captchas are getting harder.
>>> https://www.vox.com/22436832/captchas-getting-harder-ai-artificial-intelligence
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

