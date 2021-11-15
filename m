Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B4E45105D
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 19:44:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637001858;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k8NIP9FWTtQYRhOKT0WgbmgLjkSB+LUidKBeUB5/5w0=;
	b=OI1EgZkM6gU3BHhTyJt1DBJBcAopckGwCPKcG1k43IcIfVYSmMaDNxRb+Csl0dQVu1SrcL
	R6dPE4ajM+2aUS7s5yV7qLlNKJ78X5N0ewiDDlREMzLfdNyg+P1LNRwDwzI9NCWaf+JJAG
	FGeJJsb5PsFfS1WxYCxXWGF7rxtNarY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-gNxXjKOvPxatM4_dxHzH5g-1; Mon, 15 Nov 2021 13:44:16 -0500
X-MC-Unique: gNxXjKOvPxatM4_dxHzH5g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 514921006AA2;
	Mon, 15 Nov 2021 18:44:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A225694B4;
	Mon, 15 Nov 2021 18:44:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A0FD94A703;
	Mon, 15 Nov 2021 18:44:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFIgP2c007179 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 13:42:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DD9141121315; Mon, 15 Nov 2021 18:42:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D71101121319
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:42:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CC66F185A7B2
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:42:21 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-58-uxlw90XUPACmFO0-HpvsgA-1;
	Mon, 15 Nov 2021 13:42:20 -0500
X-MC-Unique: uxlw90XUPACmFO0-HpvsgA-1
Received: from email.seznam.cz
	by email-smtpc26a.ng.seznam.cz (email-smtpc26a.ng.seznam.cz
	[10.23.18.36]) id 35804e6820181d32346abf74;
	Mon, 15 Nov 2021 19:42:18 +0100 (CET)
Received: from [192.168.1.174] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay28.ng.seznam.cz (Seznam SMTPD 1.3.128) with ESMTP;
	Mon, 15 Nov 2021 19:42:14 +0100 (CET)
Subject: Re: Gui vs. cli software
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
	<6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
	<CAM+Q2c7PzGGQ7rY_FUWtcxiSOxfGJH_bVbjtZ6DMRZpjF2_v3A@mail.gmail.com>
Message-ID: <a0539f37-ed62-2fa0-d3ad-3568f0936ac2@seznam.cz>
Date: Mon, 15 Nov 2021 19:42:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAM+Q2c7PzGGQ7rY_FUWtcxiSOxfGJH_bVbjtZ6DMRZpjF2_v3A@mail.gmail.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

if there will be more cli than gui apps, I am afraid of the end of Orca 
development. If all people will have cli only, gui can be less 
accessible. That's only my opinion, I am not saying I am 100% correct.

Vojta.

Dne 15. 11. 21 v 19:21 Linux for blind general discussion napsal(a):
> You ever heard the saying, "the command line makes difficult tasks
> easy and impossible tasks merely difficult"?" There is a lot of truth
> to that. Often I can, w/a few keystrokes, relatively speaking,
> accomplish in minutes what it would take hours for a GUI to
> accomplish, assuming it could do so at all, which is not always
> accurate.
> 
> Of course I'm saying there should be accessible GUI apps for those who
> wish to use them. But even in century 21, there are still many cases
> where the cli is more powerful. Yeah, there are exceptions, but for
> the most part it holds true.
> 
> On 11/15/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>> Hello,
>>
>> I prefer gui apps, because is 21st century, not time of first computers.
>> If we want linux will more popular, it must have more gui apps. I agree,
>> cli is better for older and slow computers or if you want work without
>> spinning computer ventilators, but learn with gui is in my oppinion
>> easier than cli.
>>
>> Take care.
>>
>> Best regards
>>
>> Vojta.
>>
>> Dne 15. 11. 21 v 18:59 Linux for blind general discussion napsal(a):
>>>
>>> The topic of using gui vs. cli came up recently.  My view is the cli
>>> allows much more individual control over software functions.  The gui is
>>> oftn limited to what the developer decides is best for you as to function
>>> and individual control.  The gui was originally sold as an easier
>>> way to use computers; which meant in practice the developer trying to
>>> guess how users might want to use it at the cost of greater individual
>>> control.
>>>
>>> Menu driven cli software is the obvious middle ground for ease of learning
>>> and using programs, which could easily use mouse input.  The
>>> developer could have a default setup for ease of beginner use.  But it was
>>> at the time not the new sexy flash bang eye candy which graphics
>>> allowed.
>>>
>>>
>>>    -- ent- XR
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> 
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

