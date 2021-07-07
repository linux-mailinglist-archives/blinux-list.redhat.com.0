Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 170F23BEC9F
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 18:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625676823;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=77cLIT4AxiT23vA99Bc73/0gvAdaVSWdUMV+IJmy8nM=;
	b=at5ZR6m5207SwS1cPx6sRvyMic/+4tZdMeZXjzjIHDhx/P+K8cASB+XjEb+Eys1FziKCTA
	HFgZMuls+kjG5h3V3VIZZSaT+A2Gah0jK9Rikih1M5MlCumRALQCeuEDp89NaTBIiW4F7K
	/WHWx1NnskoTyAmOaX3cLG2hf42S3BM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-525-5vAcHKQKNBSWmEtMbv75zA-1; Wed, 07 Jul 2021 12:53:41 -0400
X-MC-Unique: 5vAcHKQKNBSWmEtMbv75zA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 76517192AB6E;
	Wed,  7 Jul 2021 16:53:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4607560861;
	Wed,  7 Jul 2021 16:53:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 06BE81800FDD;
	Wed,  7 Jul 2021 16:53:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167GrP93018653 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 12:53:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BA154203CE33; Wed,  7 Jul 2021 16:53:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6084202B182
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 16:53:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CD161064E6C
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 16:53:22 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) by
	relay.mimecast.com with ESMTP id us-mta-58-e8ksd4hhOKairLZ7J3dZBQ-1;
	Wed, 07 Jul 2021 12:53:19 -0400
X-MC-Unique: e8ksd4hhOKairLZ7J3dZBQ-1
Received: from [192.168.1.140] (pc19f8990.dip0.t-ipconnect.de
	[193.159.137.144])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by mail.schoeppi.net (Postfix) with ESMTPSA id 5A6662AD924
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 18:53:18 +0200 (CEST)
Subject: Re: Starting linux again
To: blinux-list@redhat.com
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<f59d22b1-f0b6-207d-6c26-a83845de2a51@schoeppi.net>
	<alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
Message-ID: <372e8ea5-7c6f-b287-5907-5db16c2088df@schoeppi.net>
Date: Wed, 7 Jul 2021 18:53:13 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Sure, you have to know how to start braille or speech when using the 
Debian installer. Thats true and also well documented ;-). But then you 
can use a very clear and simple and guided installation process which 
was not that simple AFAIK with e.g.Slint. The last time I tried Slint I 
had to enter commands in a shell which is not the case and not necessary 
with Debian where a guided installer can be used.

But ofcourse I can be wrong, I tested Slint a few months ago and maybe I 
do not remember right.

And ofcourse Slint has all things included regarding accessebility and 
can be used very well with a braille device or speech, no matter, Slint 
is also a very good choice regarding accessebility.



Am 07.07.2021 um 17:33 schrieb Linux for blind general discussion:
> Actually, debian does not have the most accessible installer.  For that,
> it's either Slint or Jenux.
> In order to get debian screen reader accessibility going, you have to know
> about and use a boot parameter.  With slint and Jenux, no such boot
> parameter is necessary.
> 
> 
> On Wed, 7 Jul 2021, Linux for blind general discussion wrote:
> 
>> Debian has the most accessible installer AFAIK, all other distros I know are
>> not that easy to setup. So defenatly give Debian a try ;-).
>>
>> Cheers,
>>
>>    Schoep
>>
>>
>>
>> Am 07.07.2021 um 15:39 schrieb Linux for blind general discussion:
>>> That's great news! I had seen a comment somewhere about debian no longer
>>> having an accessible install but if it still does, I will definitely go to
>>> that first.
>>>
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

