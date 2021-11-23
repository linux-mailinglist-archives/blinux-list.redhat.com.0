Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CB845B058
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 00:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637710640;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fYY6P1Y9x/OTdsC+qiPQQDvmNSo1HFgRlhZfPs9A+mM=;
	b=YSUNwOgpfTDKG4R2NZFlSg+YH/jF8g59+GCsFgY3CMrWj/8hr1PmkatE7iWXe3ssRQjIwa
	YbwYEW7U4n+EOkYokiVra7GWzMPyjG671Y5ONUTEDi4af+HbsJig0r3IQSCX/OjIBEoz1f
	+FDokqEZRLdeqP3TKXp4zVpTaSeHciA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-190-V2oSkdsANHi29Gn8EPeEDw-1; Tue, 23 Nov 2021 18:37:16 -0500
X-MC-Unique: V2oSkdsANHi29Gn8EPeEDw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8225102C7E4;
	Tue, 23 Nov 2021 23:37:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D1E457CB9;
	Tue, 23 Nov 2021 23:37:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A06D61832E7F;
	Tue, 23 Nov 2021 23:37:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANNW8N4028175 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 18:32:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8F3E840CFD0D; Tue, 23 Nov 2021 23:32:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89A4C40CFD04
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 23:32:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71479811E78
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 23:32:08 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-412-6BMPTsfaOqC5LjAt0eX93g-1;
	Tue, 23 Nov 2021 18:32:06 -0500
X-MC-Unique: 6BMPTsfaOqC5LjAt0eX93g-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6A654A402E
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:31:25 +0100 (CET)
Subject: Re: In the mood for something new
To: blinux-list@redhat.com
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
	<52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
	<062dbe93-602f-b972-6de1-f9a00ac1aa9b@gmail.com>
	<091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
Message-ID: <b2d6ddcd-2ef7-1425-de0e-78a0c8d5697c@slint.fr>
Date: Wed, 24 Nov 2021 00:32:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Brandt,

When you will have used it long enough to answer, please say what you
prefer in Fedora 35 Mate Compiz than in Slint, and what you get in
Fedora but not in Slint. This could help find what we should add or do
better.

Best,
Didier



On 23/11/2021 20:10, Linux for blind general discussion wrote:
> Hey Kyle,
> 
> 
> Ok, at the moment I am on fedora 35, the Mate Compiz spin, which is not 
> giving me issues at this time.
> 
> 
> I may give an upgrade to rawhide a go at some point, hopefully without 
> breaking the install, but, whatever, if you break it, fix the darn thing.
> 
> 
> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent from my Fedora Install using Thunderbird
> 
> On 2021/11/23 21:03, Linux for blind general discussion wrote:
>> For the most part, even Debian testing isn't that great for desktop 
>> users. Much of it is still older than Ubuntu, except maybe at the end 
>> of the release cycle, and it tends to mix desktop component versions, 
>> meaning for example that you could have some parts of GNOME 40 and 
>> other parts of GNOME 3.38 at the same time. I found this phenomenon 
>> occurring even in Debian experimental, which is supposed to be more 
>> up-to-date even than unstable.
>>
>> I've had the best luck using Fedora, as even the 6-month release cycle 
>> has newer packages than Ubuntu, and many times software gets updated 
>> to upstream current versions during the release cycle, which I haven't 
>> seen with Ubuntu, and certainly not Debian. Of course you can always 
>> either upgrade a stable Fedora release to Rawhide, which is the 
>> rolling release version that never needs to go through the upgrade 
>> process once you're there, or you could install the Rawhide iso, which 
>> you just install and keep updated. This is not for everyone though, so 
>> most people may feel more comfortable with the release cycle. But 
>> either is a good choice for keeping your system updated with close to 
>> the latest software and getting access to a wide variety of available 
>> packages without having to do tons of manual setup work.
>>
>> Solus is another option on some hardware, but I found that its version 
>> of espeak made a rather odd growling sound when I tried it. Strangely, 
>> I found this problem both on my bare metal and on a virtual machine, 
>> and never was able to diagnose the problem. But you may have better 
>> luck. I definitely liked how easy it was to go through the 
>> installation process and get a system running.
>>
>> I know some people who are using Void Linux, and it is said to be very 
>> good, though I'm not familiar enough with it to give you any pointers 
>> on how to set it up. Looks from what I've read like it will be 
>> something closer to an Arch setup, although an xfce version is said to 
>> be available. Not sure whether it has a full installer or if it needs 
>> to be set up manually, although there is said to be an xfce version 
>> available. If this version ships with Orca, you could possibly get an 
>> install going fairly easily.
>>
>> Over the years, I have had fairly long-term experience with Slackware, 
>> Red Hat, which later became Fedora Core, Debian, Ubuntu, Arch and the 
>> latest Fedora release and Rawhide, as well as short-term experience 
>> with Mint, an Ubuntu derivative, Manjaro, an Arch hard fork, and 
>> Solus, which stands apart because it is not derived from any other 
>> distro, and my experiences with recent Fedora have been the best, with 
>> the possible exception of Arch, which does work pretty well once you 
>> get past the setup process.
>> ~Kyle
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

