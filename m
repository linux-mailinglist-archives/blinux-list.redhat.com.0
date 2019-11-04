Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id E4F19EE007
	for <lists+blinux-list@lfdr.de>; Mon,  4 Nov 2019 13:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1572871054;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=D6mxLAAlC0DfumIqoMhZC9HtGJ9nQRktaNbzW6ZFOjU=;
	b=AOk9DIZumzLQ1ibv0ZuD4ZNz9+dP0zpN0hFutCyxZL0GxHh8kGrmCGwt3O0XukDLJl++tp
	yyXac0iB3qM45h0byUmEa/NRdJig7OkuOZE9bLp/nNvdUSp5mu2s/SVgstwI/CVlAoE30m
	+6VbaGbXAzPqnZJ8jdMk8raW/PqcK5U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-245-oLo6glIYNkGJZnH4XneZjA-1; Mon, 04 Nov 2019 07:37:32 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CE998017DD;
	Mon,  4 Nov 2019 12:37:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 971CD600CC;
	Mon,  4 Nov 2019 12:37:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C3F9A18095FF;
	Mon,  4 Nov 2019 12:37:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xA4CZ0Q8009718 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 4 Nov 2019 07:35:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 88FBF1001B34; Mon,  4 Nov 2019 12:35:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx15.extmail.prod.ext.phx2.redhat.com
	[10.5.110.44])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80E721001B23
	for <blinux-list@redhat.com>; Mon,  4 Nov 2019 12:34:57 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id F16043083363
	for <blinux-list@redhat.com>; Mon,  4 Nov 2019 12:34:56 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id c22so15886111wmd.1
	for <blinux-list@redhat.com>; Mon, 04 Nov 2019 04:34:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=IKO4//+/Khzntdppc6PPRWntmfwXIVd0sHUc+0xAp3Q=;
	b=ZssYIKCy0LZlMVeNl2oHgeMUKEdc8Ae5shVg5l6XeTUWoJUummqBOIT1mPvGq39VXj
	OgeYmJpVbeX3nHFp7aHUGYAnaNrqkk+PexfwO6i2PbU91bpsDbh3T/FMb2zIS1T0H6kU
	l8p2FFLsrNskE4FU52DKWgtDf5zyYbH8P0ffWYW8O21sgZspxVYsPZqVQNGiJmI3PPGQ
	u7Jx5zaBfwhBBCPhEn9M9/rO0Q97g7UxmZavu4e5zfJg5EnLTmBEwW6Tkyh0QEGWRHhO
	SmkhYaiK79vzLM9HLczi+QJH/8snT9fNfXLCYaeEDUBL1DLQ6TXmV5QCgWLZCEPnPouX
	mY/g==
X-Gm-Message-State: APjAAAVhk2T9Cpg4xd7SkI5ODGy2zYJxdG+hvfYnI3Zdl/vBrJA8vm4x
	L1Ay0s2/mDYkF/PUVC2UPIFWSvCn
X-Google-Smtp-Source: APXvYqzDTlm0YV6Sjf6uk2lMLQS4ToB/MNEk/DoLmahLpp0CkTC0CtyjDzmR74JA1jG+Ky1EIMVdzA==
X-Received: by 2002:a1c:8086:: with SMTP id
	b128mr22364220wmd.104.1572870895370; 
	Mon, 04 Nov 2019 04:34:55 -0800 (PST)
Received: from ?IPv6:2a04:b2c2:1832:3b00:1980:c5b2:c141:50da?
	([2a04:b2c2:1832:3b00:1980:c5b2:c141:50da])
	by smtp.gmail.com with ESMTPSA id
	y128sm16920996wmg.10.2019.11.04.04.34.54 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Nov 2019 04:34:54 -0800 (PST)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: Ubuntu, UEFI and hard disks
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9fcc4efe-6f6b-0629-9d3b-5d178f690969@gmail.com>
	<07efbaf7bb6160fb186d50a201106a80@ijn2.net>
	<aeecd4b9-4f4b-01b8-5066-65a52900052e@GMAIL.COM>
	<a68ba38593f76546f0ada88d79932c2a@ijn2.net>
Message-ID: <9c96b3bc-9ed8-987e-8212-db1fbd244190@GMAIL.COM>
Date: Mon, 4 Nov 2019 12:34:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a68ba38593f76546f0ada88d79932c2a@ijn2.net>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.44]);
	Mon, 04 Nov 2019 12:34:57 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]);
	Mon, 04 Nov 2019 12:34:57 +0000 (UTC) for IP:'209.85.128.51'
	DOMAIN:'mail-wm1-f51.google.com' HELO:'mail-wm1-f51.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.15  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.128.51 mail-wm1-f51.google.com 209.85.128.51
	mail-wm1-f51.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.44
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: oLo6glIYNkGJZnH4XneZjA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Didier, I would if I could get that far. For some inane reason...my Dell 
Insprion 5482 seems to think anything with secure boot off = legacy 
mode, despite everything being set up with EUFI no matter what.

Birdie, how exactly would I check what I got in Windows as I got told 
many, many ways to check

On 03/11/2019 20:56, Linux for blind general discussion wrote:
> Hello, Birdie here!
>
> On 2019-11-03 21:45, Linux for blind general discussion wrote:
>> I do have Windows installed, yes. I'm using Ubuntu 18.04.3 Mate,
>> mostly since I've had zero issues installing it on other systems even
>> with SSDs in (my desktop has SSDs in it for example). Everything I've
>> read and been told by Canonical is to keep UEFI on but remove secure
>> boot to avoid problems, so that's what I did. I went through and made
>> the bootable USB with Rufus in Windows, and yes it boots. But...
>
> Before NVMe existed SSDs were connected using either SATA or SAS.
> Those looked interface wise the same as all other SATA or SAS disks.
> If your desktop SSD is connected using SATA it looks essentially
> same as whatever SATA drive be it spinning platters or whatnot.
>
>> Having checked it, it's a SSD, 256GB (which is fine for my laptop),
>> so....is there anything in particular I need to gett Ubuntu Mate
>> 18.04.3 and the Ubiquity installer to detect the SSD and NVME
>> connections?
>
> It appears different Ubuntu 18 distributions have had problems with
> different NVMe SSD drives.
>
> What is the computer make and model? Please be as specific as possible.
> Same models come in different configurations so it's extremely
> important to know the exact type. Alternatively you could use the
> existing Windows and use it to tell your SSD exact make and model.
> They come in different interfaces. You should tell the exact model.
> Also your computer processor, chipset, and so on might come in handy.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

