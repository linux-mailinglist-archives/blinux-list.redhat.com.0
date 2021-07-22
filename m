Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2D4A13D2FE9
	for <lists+blinux-list@lfdr.de>; Fri, 23 Jul 2021 00:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626993572;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V2oZB4n29JuQYUvm0+mxJSe18OEGiwOvIpAKdOZKcG4=;
	b=BYQ85x30XWYTdzOxdfGtlhGyEKAerGMkUJSEsKZ4rDAh8dy2LIiOc0eBh4nEx4OtXap0dd
	BbPJtct/ZgVm6iXd6Cc233g6jWNDqKjWrTq3/jLe13PfslC4KdgrjDIwUi27f6ZCZV/Ap8
	Wl75qevLwnXlZoPBubZHvuPHFEgCkfU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-434-9L6pYSFrNmWCREPfzfxjGw-1; Thu, 22 Jul 2021 18:39:30 -0400
X-MC-Unique: 9L6pYSFrNmWCREPfzfxjGw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 90E701084F54;
	Thu, 22 Jul 2021 22:39:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B0B310016F2;
	Thu, 22 Jul 2021 22:39:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F332D180BAB1;
	Thu, 22 Jul 2021 22:39:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MMdHPf026741 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 18:39:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C114F20A8C20; Thu, 22 Jul 2021 22:39:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCA8C20A8C1F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 22:39:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79DEA8007B1
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 22:39:14 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-20-9Pyq3gndP5m3jyclFUOT6w-1; Thu, 22 Jul 2021 18:39:11 -0400
X-MC-Unique: 9Pyq3gndP5m3jyclFUOT6w-1
Received: by mail-qk1-f175.google.com with SMTP id s193so7017533qke.4
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:39:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=tFzd1EAv8trauxPSNNnLvfVPFbtIv/NZzyZNQVkcqM4=;
	b=tsGQpXPggw/O/8yJRqNUhXfl8azW/FEDMWDVHfFajW1Ud3SA53ap9xvwYvoGO7g436
	gc9dinWDuU5iNIiH90Tn0huKBhRZYFEQVawSsQoRtdljveo8L6+ULA6ByhN2HajRKm3X
	t2B1loSsGZtgVuPc5gF2E+Ax5eOMd+84v/9QbKJtCLcsmBgG9TusSpTFwwZKMKqQAiuU
	2HRSERuZ7o9PncxY4KT7HyPuWDRV+iwld0rAs4TTd/YMyaaP755WND8PbY3NR0bgZetk
	NGFVf6zrTeAOu+LqfzQk99sk4ILsYaPjtjWvkoA03xT+CjHEfVJ61Zg5PNdHw4F/79PQ
	1DXA==
X-Gm-Message-State: AOAM533CePl4L2tPtv0w6abCdPFPrftXSbZcY46tLOHo+yFKbVOSY4tM
	3BbYLewM8/LsZ8yHt7WAzNgAv+kLXJI=
X-Google-Smtp-Source: ABdhPJzrpd9HvpqbV/wyuJgXGLWO31mOlJ80HrEMVficc7HYHAwTpDlqNWJ0gU6+J7xtL/4zm2vXhg==
X-Received: by 2002:a37:d47:: with SMTP id 68mr2021547qkn.405.1626993550572;
	Thu, 22 Jul 2021 15:39:10 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	197sm13765950qkn.64.2021.07.22.15.39.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 15:39:10 -0700 (PDT)
Subject: Re: Did FF90 broke Orca and speech?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <ca53e68f-2567-9c5f-42c4-179e5e9f9e89@gmail.com>
Message-ID: <4b3e149b-172d-2b64-5927-ad7258c42d7a@gmail.com>
Date: Thu, 22 Jul 2021 18:39:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <ca53e68f-2567-9c5f-42c4-179e5e9f9e89@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I have everything working using Arch. So maybe a problem with some of 
the settings or something not quite matching up right in Solus. I can't 
be sure, but it doesn't seem to be a Firefox or Orca issue, unless it's 
specific to 40, as I run git master here, although it's a week or two 
old. I did just get the Firefox 90 update, and I don't see the problem. 
So you may try cloning git master if you can do that and see whether or 
not that solves your problem.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

