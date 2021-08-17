Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 503C53EECD2
	for <lists+blinux-list@lfdr.de>; Tue, 17 Aug 2021 14:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629204680;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dI+nDA7exiz8D/plPCFlqYrMW9PaeAhlX6CSzyAZCuA=;
	b=IBNfLRKe3py5Tg2kO3tNj9zPSarRcTqoJfbENGzWllBBzY+/7R8H2u5FwkSkc1OGOr5aSk
	SrZI076iZaLnGPq0IwJFcZelJppMojAYPRyd3Q4pREyNDM4Sba8KzSe9nnw3Ss57xxRP/8
	WNbbhUq40Imje0aRneO1cKCU2ASYj30=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-374-wM-fX7YMM--I8L8XUKk_DA-1; Tue, 17 Aug 2021 08:51:18 -0400
X-MC-Unique: wM-fX7YMM--I8L8XUKk_DA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6F57D1008064;
	Tue, 17 Aug 2021 12:51:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5044018970;
	Tue, 17 Aug 2021 12:51:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 782704BB7C;
	Tue, 17 Aug 2021 12:51:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17HCovWH022872 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Aug 2021 08:50:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DFE9420341D8; Tue, 17 Aug 2021 12:50:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB47720341D7
	for <blinux-list@redhat.com>; Tue, 17 Aug 2021 12:50:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 533D8800260
	for <blinux-list@redhat.com>; Tue, 17 Aug 2021 12:50:54 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-60-NJrvkdllNP2i9Ov97BA2wA-1; Tue, 17 Aug 2021 08:50:52 -0400
X-MC-Unique: NJrvkdllNP2i9Ov97BA2wA-1
Received: by mail-ed1-f42.google.com with SMTP id b7so31466954edu.3
	for <blinux-list@redhat.com>; Tue, 17 Aug 2021 05:50:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=muEeDYmOhYyca8E/LIaM06rnwv+j/xf4AjqQYYVph00=;
	b=jqfUrk3DLliVMwugyaH67aXoReiuuckWbThGF2rui6rlp1Fv+pAdWenuA2w42vf75p
	xVLvRiEsCH2MVpxEXCMO+byh+YvhVM2gsNmZIdQga0YTugdAWG5HAojWRJB8N4+Kkx1m
	iBwVnQxv+8iQDs3CIi5RTD3oGuBPngfblt1N7Im5+lowFLCeZDlzRigcyXuhJnco/wL4
	acXIbESzm2zirgi7c2IRssdSj4t3H1QOQkWkJl3wgV97YMOkA3EIPL2b2a1HO2vdtASI
	Sn18XNCtDLhnoRVyStfjPB8QmRMM2JW3lyeumtCY97bxfbeOVhJCAHiC00PFYxasOjWD
	ea5g==
X-Gm-Message-State: AOAM532ckHKUqtXNT5AebW6Fo/Wt1nYsgCDkFIIepP12ij7iixfqwTic
	R2zGYIgCEuCBrWTRuwmAZhYMFk9ifWhjDA==
X-Google-Smtp-Source: ABdhPJzSin+Cqy8gjC9QpbkLQW+zURKj4YbejEfun6sxv1xX3vtPW2wKyqIqoPfIIkFCgTMH8OysBQ==
X-Received: by 2002:a05:6402:d73:: with SMTP id
	ec51mr3940534edb.286.1629204650635; 
	Tue, 17 Aug 2021 05:50:50 -0700 (PDT)
Received: from [10.0.0.29] ([165.255.54.79])
	by smtp.gmail.com with ESMTPSA id u2sm737519ejc.61.2021.08.17.05.50.49
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 17 Aug 2021 05:50:50 -0700 (PDT)
Subject: Re: How to make brltty start at boot?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0c95938c-58d5-68c8-13e8-46188a282fba@gmail.com>
	<20210816173855.kgq7yge4lfv2eik2@alex-pc>
Message-ID: <6ed3a3be-bc0e-53c6-cac9-0cc3bc9eb089@gmail.com>
Date: Tue, 17 Aug 2021 14:50:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210816173855.kgq7yge4lfv2eik2@alex-pc>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


To the curious individual who wonders why I'd want to start brltty at 
boot without a connected display, the answer is simple. The script I use 
to start my Windows VM looks for brltty, and if not found will not start 
Windows. Yes, I know it's a pain, but rather that then not be able to do 
my job.


Warm regards,

Brandt Steenkamp

Sent from my arch powered ice cream toaster

On 8/16/21 7:38 PM, Linux for blind general discussion wrote:
> On Sun, Aug 15, 2021 at 04:53:57PM +0200, Linux for blind general discussion wrote:
>> Hi all,
>>
>> I find that my BRLTTY does not start at system boot, is there anything I can
>> do to make it do so? I know that if you have a display connected, it will do
>> so, however, I don't always have the display connected to the Linux machine,
>> mainly because I also have a MacBook, and only one display.
> I'm curious, why would you want to run brltty without a connected display?
>
>> If anyone can help, thanks so long.
> you need to do several things.
> 1. if you don't wante to start brltty  at desplay connection.
>    you need to mask[1] brltty@.service
> 2. you need to enable your desplay in etc/brltty.conf
> 3. and then enable and start brltty.path unit.
>
> [1]: https://wiki.archlinux.org/title/Systemd#Using_units
>
>> --
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from my arch powered ice cream toaster
> --
> Sincerely, Alexander
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

