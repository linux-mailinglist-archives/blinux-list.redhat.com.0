Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF4149D1B0
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 19:26:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643221562;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sXPgBV6VySE7sbyZNVLu0x5cgqn42Dr2PL8VuzXIWOk=;
	b=XMyeAhkL4ALewknqp3zIloxrblqEBfKUvYRrMZagY+H+bKLBfY/Kv1+3CmZK4zNR7V0l+U
	xLmZfO/FFFN/Av+I4h9q1RAmgarJ4NU1URbByj0VVq/HLKMiavUI9NzhEgYwuwjk2GbUqW
	utRqe08CghWJNPR6bPIsxs/n5UiT8qU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-618-wvUZVaT_NYGRfX7ySR_8HQ-1; Wed, 26 Jan 2022 13:26:01 -0500
X-MC-Unique: wvUZVaT_NYGRfX7ySR_8HQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 95218824F96;
	Wed, 26 Jan 2022 18:25:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75A807E915;
	Wed, 26 Jan 2022 18:25:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C1AD4CA93;
	Wed, 26 Jan 2022 18:25:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QHl8RX007600 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 12:47:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9188814582E2; Wed, 26 Jan 2022 17:47:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DADC14582E0
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 17:47:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 743133C01D81
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 17:47:08 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-250-MIJafbF_MMKKGDkgwQY4LA-1; Wed, 26 Jan 2022 12:47:06 -0500
X-MC-Unique: MIJafbF_MMKKGDkgwQY4LA-1
Received: from email.seznam.cz
	by email-smtpc2b.ko.seznam.cz (email-smtpc2b.ko.seznam.cz
	[10.53.13.45]) id 2e83b9553b1bea0f2f694849;
	Wed, 26 Jan 2022 18:47:05 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay14.ko.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
	Wed, 26 Jan 2022 18:47:00 +0100 (CET)
Message-ID: <d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
Date: Wed, 26 Jan 2022 18:46:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Converting text to mp3
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
In-Reply-To: <YfGDHwxeIwHdYMsg@panix.com>
X-szn-frgn: <402b089b-0eb4-44b3-8718-fed0ed0a78d4>
X-szn-frgc: <0>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

Hello,

OK, but my primary language isn't English, but Czech. And if I use this 
command, it will read Czech text in English. And what about dividing the 
mp3 file to more files with 10 minutes length?

Thanks a lot.

Best regards

Vojta.

Dne 26. 01. 22 v 18:21 Linux for blind general discussion napsal(a):
> # convert text file to wave
> espeak -f file.txt -w file.wav
> #then convert wave file to mp3
> lame -m s file.wav -o file.mp3
> 
> On Wed, Jan 26, 2022 at 05:49:18PM +0100, Linux for blind general discussion wrote:
>> Hello,
>>
>> is some way to convert text file to mp3 files and option length of them? In
>> Vinux I had Audiobook-converter. But it's not in repositories of Ubuntu.
>>
>> Thanks a lot and take care.
>>
>> Best regards
>>
>> Vojta.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

