Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 50A2A298DF7
	for <lists+blinux-list@lfdr.de>; Mon, 26 Oct 2020 14:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603719243;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VIzCY3MxxAreoE8XPY2bozNSUAUqBxvV7t0KXOJbhPg=;
	b=aNi35es6+pB/S0oHKwY6KJA0PY6Vtyit02pVmr8xLHK0OgNhlH/5Zw9vmA3COfiU6hz7/n
	f1RD5rLJcIj4oGAqmUgTOqoU+9sO5sX6TIJzEfCDORBhGR6391DW6A9kc7HDpGgtzMot7e
	vu+zw39KuF5UpZ6/2bWNHAJuDGcjZNg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-149-c1Bm3UIMOYWqO4vN022CCA-1; Mon, 26 Oct 2020 09:34:00 -0400
X-MC-Unique: c1Bm3UIMOYWqO4vN022CCA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 867298BAF41;
	Mon, 26 Oct 2020 13:33:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BBD460BF3;
	Mon, 26 Oct 2020 13:33:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34C96181A06B;
	Mon, 26 Oct 2020 13:33:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09QDXoAU000553 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Oct 2020 09:33:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 965DB2166BA2; Mon, 26 Oct 2020 13:33:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 911F42166B44
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 13:33:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B06018A04D2
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 13:33:48 +0000 (UTC)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-284-e8TtH6kVO4yrNUjwE9zUYA-1; Mon, 26 Oct 2020 09:33:45 -0400
X-MC-Unique: e8TtH6kVO4yrNUjwE9zUYA-1
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	A97E92978D06_F96D035B
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 13:33:41 +0000 (GMT)
Received: from pta-gwia2.csir.co.za (pta-gwia2.csir.co.za [146.64.54.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTPS id
	5F6C12976907_F96D035F
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 13:33:41 +0000 (GMT)
Received: from marge.meraka.csir.co.za ([146.64.28.1])
	by pta-gwia2.csir.co.za with ESMTP (NOT encrypted);
	Mon, 26 Oct 2020 15:33:39 +0200
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 7589420F73
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 15:33:39 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id QxJPICu7qY46 for <blinux-list@redhat.com>;
	Mon, 26 Oct 2020 15:33:39 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown
	[IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 15:33:39 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>) id 1kX2d1-0001UI-1J
	for blinux-list@redhat.com; Mon, 26 Oct 2020 15:33:39 +0200
Date: Mon, 26 Oct 2020 15:33:39 +0200 (SAST)
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: building kernel for ac97 sound card
In-Reply-To: <alpine.NEB.2.23.451.2010260847430.15848@panix1.panix.com>
Message-ID: <alpine.DEB.2.21.1.2010261532350.5700@willempc.meraka.csir.co.za>
References: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
	<alpine.DEB.2.21.1.2010231616570.26808@willempc.meraka.csir.co.za>
	<20201024180518.GB2013@rednote.net>
	<alpine.NEB.2.23.451.2010241438040.3794@panix1.panix.com>
	<20201026084445.GC2013@rednote.net>
	<alpine.NEB.2.23.451.2010260625330.593@panix1.panix.com>
	<alpine.NEB.2.23.451.2010260635110.593@panix1.panix.com>
	<alpine.DEB.2.21.1.2010261426360.5078@willempc.meraka.csir.co.za>
	<alpine.NEB.2.23.451.2010260847430.15848@panix1.panix.com>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-SASI-RCODE: 200
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Can't you ssh into your Gentoo box and do a lsmod there?

On Mon, 26 Oct 2020, Linux for blind general discussion wrote:

> It does if you understand I am using another version of Linux on this
> machine that does speak and the only way I'm ever going to find out what
> lsmod did or didn't load on gentoo is to actually get gentoo talking and
> the sound card working first. On Mon, 26 Oct 2020, Linux for blind general
> discussion wrote:
>
>> Date: Mon, 26 Oct 2020 08:28:48
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: building kernel for ac97 sound card
>>
>> If you see an entry for your sound card in the output of lsmod, it means that
>> your kernel successfully loaded the module for your sound card.
>> So what you suggest to do does not make sens at all.
>> Regards, Willem
>>
>>
>> On Mon, 26 Oct 2020, Linux for blind general discussion wrote:
>>
>>> I found /usr/src/linux/.config which if I have this right is where make
>>> menuconfig stores your choices as they're made.  So erasing that file gets
>>> you a clean start when necessary.  Reading through lsmod output I find
>>> several sound card elements on lines in that output.  What I'm going to
>>> try next time is to enable each element starting at the end of each of
>>> those lines and going to the beginning of those lines.  Sound card
>>> elements are either in first position in lines or later positions and the
>>> later positioned elements use the earlier positioned elements.  This is a
>>> strictly proper order problem open the doors in the proper order and you
>>> get to the treasure room.
>>>
>>>
>>> --
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>
>>
>
> -- 
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

