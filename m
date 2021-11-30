Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEDC463196
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 11:54:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638269668;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=swrUlZB2bQ4rvens3ceBLdtF/oRMp1ZsAGw1gY86jFA=;
	b=E6JTN6mhTHdyO9sDb0xiBh7rdobXQPqkjsV/yAm6VCkPVGhANK7lKotYrQ/a+LRGLWQ/y5
	8bq0En3Vkekn2djkXsCesU4gZgLU22REAA6hoXy6k10YJCRamYXLBwo8byRMdJh3KYRRZs
	W/XePMFM9TVsnwffAE8KLbNLV8E38PM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-225-Dqhbib4sOW-jV3v7FKXjjQ-1; Tue, 30 Nov 2021 05:54:25 -0500
X-MC-Unique: Dqhbib4sOW-jV3v7FKXjjQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5766183DD25;
	Tue, 30 Nov 2021 10:54:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7959960C13;
	Tue, 30 Nov 2021 10:54:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3905F1809C8A;
	Tue, 30 Nov 2021 10:54:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUAsB7m003982 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 05:54:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9C6B951E1; Tue, 30 Nov 2021 10:54:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9747C51DC
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 10:54:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8F2A8011A5
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 10:54:08 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-583-rrA9bICpO5iNvy3UUTPnvw-1; Tue, 30 Nov 2021 05:54:06 -0500
X-MC-Unique: rrA9bICpO5iNvy3UUTPnvw-1
Received: from email.seznam.cz
	by email-smtpc4b.ko.seznam.cz (email-smtpc4b.ko.seznam.cz
	[10.53.13.105]) id 3a6418522ffc4b083b8ee94e;
	Tue, 30 Nov 2021 11:54:05 +0100 (CET)
Received: from [192.168.1.171] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay6.ko.seznam.cz (Seznam SMTPD 1.3.131) with ESMTP;
	Tue, 30 Nov 2021 11:54:00 +0100 (CET)
Subject: Re: How to copy output from a terminal?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c46122c2-cd84-f852-d4e8-0d9018caf644@gmail.com>
	<alpine.NEB.2.23.451.2111300440330.5394@panix1.panix.com>
	<745bf6e8-8267-1064-ecbf-fa53a36f2019@seznam.cz>
	<alpine.NEB.2.23.451.2111300524140.12284@panix1.panix.com>
Message-ID: <77bd08c8-a47c-8526-28c9-d5145ebea123@seznam.cz>
Date: Tue, 30 Nov 2021 11:53:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111300524140.12284@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

OK and where can I find that log? If I write startx to login to Mate, I 
have long bug.

Vojta.

Dne 30. 11. 21 v 11:26 Linux for blind general discussion napsal(a):
> Your problem is that errors go to stderr and normal output goes to stdout,
> but never fear Linux has you covered.
> $ ./command 2>&1 | tee -a command.log
> That sends those errors to stdout and tee writes all of that into
> command.log
> 
> 
> On Tue, 30 Nov 2021, Linux for blind general discussion wrote:
> 
>> Hello,
>>
>> and what about copying errors? I can't boot to Stormux in Mate desktop and I
>> have long bug. How can I save it, when I am in console? is some way to share
>> it with Storm and others? If I write them I have some bug, they cannot help
>> me, because some bug is really large termine.
>>
>> Thanks.
>>
>> Best regards
>>
>> Vojta.
>>
>> Dne 30. 11. 21 v 10:42 Linux for blind general discussion napsal(a):
>>> $ ./startwin.sh|tee startwin.log does it destructively.
>>> $ ./startwin.sh | tee -a startwin.log does it non-destructively and
>>> appends onto an existing file with the same name.
>>>
>>>
>>> On Tue, 30 Nov 2021, Linux for blind general discussion wrote:
>>>
>>>> Hi all,
>>>>
>>>>
>>>> I still have a few things I need to fix, but as the subject states, I don't
>>>> know how to copy the output from a terminal so I can ask for help from the
>>>> relevant mailing lists/forums.
>>>>
>>>>
>>>> I am using Mate-Terminal with Orca in Fedora Mate Compiz 35. I know you can
>>>> copy text off a console using speakup, but I am not in a console, now am I?
>>>>
>>>>
>>>> If anyone has any advice, I'd be appreciative. If there is a way, for
>>>> example
>>>> to pype the output from a command to a text file, for example if I type
>>>>
>>>>
>>>> $ ./startwin.sh
>>>>
>>>> Which is how I would start my qemu Windows VM, can I pype the output to a
>>>> text
>>>> file in '~/'?
>>>>
>>>>
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
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

