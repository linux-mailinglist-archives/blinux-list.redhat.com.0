Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id E0C1B2F9D48
	for <lists+blinux-list@lfdr.de>; Mon, 18 Jan 2021 11:56:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610967412;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3IIVWOquW111WYU8u/Cm/g54GMhAKmHxci3whTPFSsk=;
	b=ZpIrtQwCG9H5zHApUhs7t5afbmrciSiQhUeeYGlXrIzUKeL+ZsjEyl/lzBIN2OrdxOxiEv
	hYHH7Z3PDTEfqgwLaBU5Nz6mASG2+oVDGoLjPSDfdOkHoCmfR+AWaMt3SdHxA+JuLPUfw2
	kR6V2asPrhxSakZEOOySoBadhT2L+pU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-95eO3_RkOM-SxTA2j0wgMA-1; Mon, 18 Jan 2021 05:56:50 -0500
X-MC-Unique: 95eO3_RkOM-SxTA2j0wgMA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05019802B42;
	Mon, 18 Jan 2021 10:56:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8DF3B10023B0;
	Mon, 18 Jan 2021 10:56:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0BFB0180954D;
	Mon, 18 Jan 2021 10:56:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10IAuOJA004958 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 18 Jan 2021 05:56:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1AF112166B28; Mon, 18 Jan 2021 10:56:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 154A52166B29
	for <blinux-list@redhat.com>; Mon, 18 Jan 2021 10:56:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB2BE800889
	for <blinux-list@redhat.com>; Mon, 18 Jan 2021 10:56:21 +0000 (UTC)
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com
	[192.185.60.19]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-435-y3SIDSl8Pc2vyK2EB5EwUQ-1; Mon, 18 Jan 2021 05:56:06 -0500
X-MC-Unique: y3SIDSl8Pc2vyK2EB5EwUQ-1
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id B8CBA400D7096
	for <blinux-list@redhat.com>; Mon, 18 Jan 2021 04:00:46 -0600 (CST)
Received: from box2167.bluehost.com ([50.87.253.68]) by cmsmtp with SMTP
	id 1RRAl5U8Wsvw91RRAlMHq1; Mon, 18 Jan 2021 04:07:04 -0600
X-Authority-Reason: nr=8
Received: from [104.60.194.40] (port=57322 helo=BREWCREW)
	by box2167.bluehost.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <kelly@kellford.com>) id 1l1RR9-003nBc-VK
	for blinux-list@redhat.com; Mon, 18 Jan 2021 03:07:04 -0700
To: <blinux-list@redhat.com>
References: <02c701d6da1f$fdf1c550$f9d54ff0$@kellford.com>	<alpine.NEB.2.23.451.2012241448310.21263@panix1.panix.com>	<9c34ebe2-14fa-d2b1-360b-e5a8e1205347@kellford.com>	<a35cd07a-9e1f-97bf-c7a7-d8f06c9a778f@gmail.com>	<C4F90F85-AD5C-476C-9AE2-B77B968E52CA@gmail.com>
	<alpine.NEB.2.23.451.2012301055490.1227@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2012301055490.1227@panix1.panix.com>
Subject: RE: No Monitor Environment
Date: Mon, 18 Jan 2021 04:07:02 -0600
Message-ID: <022f01d6ed81$aba3a140$02eae3c0$@kellford.com>
MIME-Version: 1.0
Thread-Index: AQIuwEpBpbScyL4W60ouPygyNbCYawDbPCbnA19B/MkBQQcY7gJavS3aAeZC3L6pL5y9IA==
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2167.bluehost.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kellford.com
X-BWhitelist: no
X-Source-IP: 104.60.194.40
X-Source-L: No
X-Exim-ID: 1l1RR9-003nBc-VK
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (BREWCREW) [104.60.194.40]:57322
X-Source-Auth: kelly@kellford.com
X-Email-Count: 1
X-Source-Cap: a2VsbHlmb3I7a2VsbHlmb3I7Ym94MjE2Ny5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
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
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Originally I was trying this on an older PC where I used to run Windows.  I
ran into this same issue when setting up a Raspberry Pi.

On the Pi I was able to resolve it by connecting over SSH and running the
raspi-config program.  Under display I changed to composite video and then
all worked just fine for the desktop environment for Orca speech.

BTW, maybe others already know this but when I first was working with the Pi
I couldn't connect over SSH.  I've learned that it is disabled by default
but if you put a file named SSH on the SD card, it will enable SSH for you
automatically.

Kelly


-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Wednesday, December 30, 2020 9:59 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No Monitor Environment

--monitor=dummy on linux command line of grub.cfg may help.  RedHat in the
past needed a mouse attached to start, I don't know if Fedora continued that
sorry tradition but I remember the first time I tried installing Redhat 5.0
with sighted assistance we ran into that road block.



On Wed, 30 Dec 2020, Linux for blind general discussion wrote:

> I have found that Ubuntu and Fedora seem to need a monitor, while arch
linux and also slint seem not to need one.
>
>
>> On Dec 29, 2020, at 2:54 PM, Linux for blind general discussion
<blinux-list@redhat.com> wrote:
>>
>> Best I've been able to find is a monitor dummy plug. I can't seem to 
>> find a single plug for some reason, but I did find a pack of 3 for 
>> $11. Amazon sells such plugs, but I'm sure they can be found elsewhere as
well. Best may be to look in your favorite computer/tech site for monitor
dummy plug They say they do exactly what you need, making a monitor appear
on the system where one is not normally connected. Hope it helps.
>> ~Kyle
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

