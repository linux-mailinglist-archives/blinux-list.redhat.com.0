Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id BA9E73BF606
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jul 2021 09:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625728190;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UW/Fd/Ha+nCTo1GZopASQPNW1/HT4KrRo8Y8sZC+4ac=;
	b=KPsnr+4Y7vzFcvLtBfvMJ6polkR2OREe/NDw5M/63yp3EhUYsN9bsL68v+3dC/go8uO9gk
	nu6/vNGR5kdfuP+d8B1i2VyUjU/Q67QMtDqlW15eAgY89k6PBhRzYwmyMbJxjiQOiHhXPx
	efbxMZKr9WRvPH2G6wFVQAe2m8h7Yy0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-JtHJgPPmPyKTzDAAqsqM3Q-1; Thu, 08 Jul 2021 03:09:48 -0400
X-MC-Unique: JtHJgPPmPyKTzDAAqsqM3Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3D8D50756;
	Thu,  8 Jul 2021 07:09:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1295E5D9D3;
	Thu,  8 Jul 2021 07:09:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BDE041809C99;
	Thu,  8 Jul 2021 07:09:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16879RAH007660 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 8 Jul 2021 03:09:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1D25810166DF; Thu,  8 Jul 2021 07:09:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18C23100B164
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 07:09:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DC10858286
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 07:09:24 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) by
	relay.mimecast.com with ESMTP id us-mta-240-qgt22YdkOoSTYEkILEnbGQ-1;
	Thu, 08 Jul 2021 03:09:21 -0400
X-MC-Unique: qgt22YdkOoSTYEkILEnbGQ-1
Received: from [192.168.1.140] (pc19f8990.dip0.t-ipconnect.de
	[193.159.137.144])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest
	SHA256) (Client did not present a certificate)
	by mail.schoeppi.net (Postfix) with ESMTPSA id 268252AD924
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 09:09:20 +0200 (CEST)
Subject: Re: Starting linux again
To: blinux-list@redhat.com
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<f59d22b1-f0b6-207d-6c26-a83845de2a51@schoeppi.net>
	<alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
	<BN0PR19MB52784AE6167BD0644630242DA2199@BN0PR19MB5278.namprd19.prod.outlook.com>
Message-ID: <3ebe9ac6-abf3-0e64-da99-ece53331838d@schoeppi.net>
Date: Thu, 8 Jul 2021 09:09:16 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <BN0PR19MB52784AE6167BD0644630242DA2199@BN0PR19MB5278.namprd19.prod.outlook.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You can use backports to get current software also in Debian systems.

Am 08.07.2021 um 02:06 schrieb Linux for blind general discussion:
> Also, isn't Debian a few versions behind on the software that is included? That is one reason I stay away from it.
> 
> Get Outlook for Android<https://aka.ms/AAb9ysg>
> 
> ________________________________
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> on behalf of Linux for blind general discussion <blinux-list@redhat.com>
> Sent: Wednesday, July 7, 2021 11:33:42 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Starting linux again
> 
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
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

