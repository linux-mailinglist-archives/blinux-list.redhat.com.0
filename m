Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 72833494ED0
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 14:22:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642684961;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gmBhOK2dq4YZYUaJpPVJJH4bwNNW/VOQ2BvGI7J+POw=;
	b=BAO3B44GQ/Tk/9G+rUxqQeiZvbsVOFzfMWhS9ooF/5VspLlx/o5lwchhABjHkBxh6pwSFN
	QVm7dxOXkq+PtwPJlX1qokUjhiCGOm7i1HNXNUkCfnfbiPvzYoPpVCG/2mE64RB4CM9uK5
	+RdrTGAiRWZ1I8h9dbyncTU/Dr0Xdxg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-315-J6gkL0LEORe3Ccv-mIYN8Q-1; Thu, 20 Jan 2022 08:22:38 -0500
X-MC-Unique: J6gkL0LEORe3Ccv-mIYN8Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D904190D341;
	Thu, 20 Jan 2022 13:22:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FF977E126;
	Thu, 20 Jan 2022 13:22:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ED9754BB7C;
	Thu, 20 Jan 2022 13:22:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KDJjrx005462 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 08:19:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 32EAA2166B1A; Thu, 20 Jan 2022 13:19:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E2DA2166B13
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 13:19:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A8DD3C15C93
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 13:19:42 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-614-FVzgNDT4NoK_HVnbUPVxOQ-1; Thu, 20 Jan 2022 08:19:40 -0500
X-MC-Unique: FVzgNDT4NoK_HVnbUPVxOQ-1
Received: by mail-wm1-f52.google.com with SMTP id
	f202-20020a1c1fd3000000b0034dd403f4fbso10376974wmf.1
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 05:19:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=gb7HT8UIajEIeSiKgvvmLGoUWljccIwPzUYxJkQQUI4=;
	b=zVQkyh0nCxGAsui5ibqRze9MBWCgK0j64IvRZmjGeMoiiCYXx54751phYqkqnqC/Ez
	uO6rK8NbIp2qapcGIYPIj6Brll4Wv4UguPZVA5md7mbjjtdgpcU39WQQTCBCM3wqneRy
	yB23mvBHKLpjBAwTGDcrCng85YmlsaiAGyg6xKfx8BSYRpwF5VfZSau/e5dbsU8NumbW
	oAgDRfzRMANqjmrcMVpezBHsKznoSEg7E9pCD6/0N6khKrDYNsGHw6YVRO2XJc9dK/3F
	Dln4E5nmN0pKfnE9J3fs9Cr6ooN8EM85ehSBnIRkdqxhgX9a2pB387dz/VpiPzi0sF8C
	eEyg==
X-Gm-Message-State: AOAM533nFjxldUjOkGfRXMKjXbJLUMeAMKOs4UqPSwp7dSCa9h3CECFD
	a3Ek6Q3yZHQLUVCgTbY96LfFTfdqkMZw6Q==
X-Google-Smtp-Source: ABdhPJwLgWKd+afMvqSs3a+L6lOS2sLeBhGUh69JaN2F3AwYV5cfBANUOtuuEW8RdKtQnzsF0VTNog==
X-Received: by 2002:a1c:4e1a:: with SMTP id g26mr8708135wmh.146.1642684778829; 
	Thu, 20 Jan 2022 05:19:38 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	y13sm3330663wry.113.2022.01.20.05.19.38 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 20 Jan 2022 05:19:38 -0800 (PST)
Message-ID: <3971b8f5-27af-2f7e-d5c2-f88da04436f7@gmail.com>
Date: Thu, 20 Jan 2022 13:19:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.1
Subject: Re: Before I install Arch on bare metal...few questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4ab924de-d686-a301-1ea3-e38214aba35e@gmail.com>
	<20220120122837.ipmq2bz3lp227tmg@alex-pc>
	<2f8af423-72cd-57c5-4864-158969fd662a@gmail.com>
	<20220120130015.b5v46qpflxbntq5v@alex-pc>
In-Reply-To: <20220120130015.b5v46qpflxbntq5v@alex-pc>
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

So let me get this straight. I'm on a 64bit UEFI system. Solus, IIRC, 
comes with Grub.


You're saying I don't need GRUB to swap between OSes so I can have 
sdboot with Arch on /dev/sdb and Solus on /dev/sda?

So next logical question.

What's the best way to be able to access my Solus disk when I do install 
Arch, ensure it's the same file system and it should all work fine or?

On 1/20/22 13:00, Linux for blind general discussion wrote:
> On Thu, Jan 20, 2022 at 12:50:50PM +0000, Linux for blind general discussion wrote:
>> So more questions that I didn't get around to asking earlier and thought of
>> after sending that first message
>>
>>
>> 1. I've run into this (mostly) on a VM, but is there an advantage of grub
>> over system-d boot? I've never got a VM to boot using grub so I'm not sure
>> how it'd afect bare metal
> no. I am using sd-boot everywhere.
>
>> 2. From an A-A11y perspective. I'm noting down what I need. Here's my
>> current list
>>
>> alsa-utils espeakup orca speech-dispatcher
>>
>> Is that all I need for a working DE like Gnome or Mate, i.e. can I just
>> install those four packages, dependencies, and and end up with a working
>> system?
> I think yes.
>
>> I don't really want to nuke my Solus install until I know Arch is working,
>> but equally I don't want to overdo installing stuff and get swampd with a
>> hundred updates every day for an extreme example. I've managed to pare it
>> down to one or two with a lean, minimal system. Hopefully I can replicate
>> that on bare metal
>>
>>
>> So given I've Solus on /dev/sda, and I put Arch on /dev/sdb for example,
>> would I need to install Grub to be able to swap between the two installed
>> OSes as needed? I'm not 100% sure if installing Grub as part of the Arch
>> install will break being able to boot into Solus though
> if you hav efi - you don't need grub to switch between oses.
>
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

