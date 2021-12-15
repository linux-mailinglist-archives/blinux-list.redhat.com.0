Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E21C4475541
	for <lists+blinux-list@lfdr.de>; Wed, 15 Dec 2021 10:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639560805;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/Oyph3so3wR3Q1q0JPBZ21Q+awAZ7XPGk0yc6jjoPAc=;
	b=ch1bj/t4g2axk8IdOhkYQFyI/9zuB6727c8DQn3zdXAiFJY/vmt3esMUl0pq7bjo7xIymk
	8mqzn3EbOA81D4towDUh6I5vD3tzCat9Uz/LBXvJ2fPC1VRXLp8EoJMdbGgSZjOnaPDGFM
	WOoXll9xuJqRxzHk2k0sbB5u4OqR9Gg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-649-dIJRPT2RNIugE77rWCxnrA-1; Wed, 15 Dec 2021 04:33:07 -0500
X-MC-Unique: dIJRPT2RNIugE77rWCxnrA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 54146802CBD;
	Wed, 15 Dec 2021 09:31:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF4DE7CAF2;
	Wed, 15 Dec 2021 09:31:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6C5024BB7C;
	Wed, 15 Dec 2021 09:30:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BF9UgQK021509 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 15 Dec 2021 04:30:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 351DE40149AF; Wed, 15 Dec 2021 09:30:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3136140149A6
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 09:30:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE8F23C13C8D
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 09:30:41 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-98-vTQC0UFKOVy7GeM6fjWXdg-1; Wed, 15 Dec 2021 04:30:35 -0500
X-MC-Unique: vTQC0UFKOVy7GeM6fjWXdg-1
Received: by mail-wm1-f45.google.com with SMTP id
	p3-20020a05600c1d8300b003334fab53afso18048599wms.3
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 01:30:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=EjXnK7Yc0G6dEjWfeTyxDmWfbKpTIb9Es+Pj+MgNaaE=;
	b=RAi2xS9fr/Wg2TMa4Corit1I1TwGC6E689X3hXCiSdGwx8s+5J1520wPDby6YLjX2e
	BlHZvDDpJUg88XdeipxcoWrGt6vyFwvEOp83srS/wN+Ro3rRyjnZ/Ad84VHDmaP6lgV1
	yCCV+Ja4LyR+t+zgxwaVuglx+0zLsEMezc2BAid602osUeW6Bo2EEgPqHf7qGon8aSz6
	ZIwqHJbMv3mXYVVr7O58DweOhE3cvd3RdnIrqlM43EFbs0cTwThIRNKQnBbhq0/872PU
	EzqfQAxG65VUxVTQCR88adB8Rgp+G/vxo4lM1f/gLs+YXatrkfzTInvzqVgLj/pUSQny
	OfBg==
X-Gm-Message-State: AOAM531p5n86EcDxzO/rJibPIpEtjqhbECbrYYRqEVkVAGhUHmsMg6hs
	fG8jgmdTW8RTfcHMb3xaIWglmtQtuvRifA==
X-Google-Smtp-Source: ABdhPJyh8JzSytZPZA5/4MpTth6WdXNTZhmahybCsgV8YhPV5DjCmU9ArpmZ78Azvtp6CfXGuAcm/w==
X-Received: by 2002:a05:600c:4fc3:: with SMTP id
	o3mr3844814wmq.74.1639560633621; 
	Wed, 15 Dec 2021 01:30:33 -0800 (PST)
Received: from [10.0.2.15] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id c7sm1695557wrq.81.2021.12.15.01.30.32
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 15 Dec 2021 01:30:33 -0800 (PST)
Subject: Re: Lightweight terminal with select all?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <083d5bb4-eaf1-878f-c2d2-364846172c9a@gmail.com>
	<20211214201311.67a9d06b@bigbox.attlocal.net>
Message-ID: <415916fe-9c0d-4f98-6f59-083ee5a6d5a5@gmail.com>
Date: Wed, 15 Dec 2021 09:30:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.9.1
MIME-Version: 1.0
In-Reply-To: <20211214201311.67a9d06b@bigbox.attlocal.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

That is interesting, unfortunately I'm more aftdr a standalone terminal 
emulator that I can launch from a WM however though

Linux for blind general discussion wrote:
> Tim here.  I usually run within tmux which gives me a scrollback
> "copy mode" I can navigate and copy portions.  So I might do
> (assuming control+b is my prefix-key)
>
>     control+b
>     space (starts the selection)
>     g  (goes to the top)
>     enter (ends/captures the selection)
>
> I can then use
>
>     tmux showb
>
> to dump that to standard out (or pipe it to a file or some other
> program if I need) such as
>
>     tmux showb > scrollback.txt
>
> or
>
>     tmux showb | grep -i "spatula"
>
> or even send it to a remote machine
>
>     tmux showb | ssh me@example.com "cat > scrollback_remote.txt"
>
> There might be terminal-specific was to do similar things, but tmux
> works in all of them.
>
> Here's hoping that gives you something to work with,
>
> -tim
>
> On December 14, 2021, Linux for blind general discussion wrote:
>> So quick question.
>>
>> What's a good, lightweight, Orca friendly terminal that I can
>> select all the text and copy with? Lxterminal doesn't, unless I
>> don't know the key combo, have a select all option?
>>
>> I'm looking for one where, much like the Mate one, I can select
>> all, copy, then paste into (say) a nano document on another tab.
>>
>> Basically after something with few dependancies that I can run as a
>> terminal emulator so things like Screen are sadly out unless I can
>> run that as its own emulator without launching LXterminal first?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

