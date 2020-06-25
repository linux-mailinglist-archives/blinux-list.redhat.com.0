Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id AB08820979C
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 02:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593044712;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=thkhQRKlYemc4I6880pCNLhU13/oY2tAzh+P3nXJ3u4=;
	b=BaqP7ZTBRioYeXzCnIM+2A319DeUo0kxdBgA0kl0RVO03cXJsUv6/etJdNtQfJOz4imdkp
	Evh8DAoj4ajQAcwEeeqdZy8wXrUJSD7FE/GFuvyBjq4BJa+cIylrReZE7WowYMRQwfJw+8
	yZhu01Fyf2HFu4jWvI6y46qGCwjxY0M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-506-Tvr4y3JtOTW6WIAd5vYO8w-1; Wed, 24 Jun 2020 20:25:10 -0400
X-MC-Unique: Tvr4y3JtOTW6WIAd5vYO8w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 880CA800C64;
	Thu, 25 Jun 2020 00:25:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89A747CCD1;
	Thu, 25 Jun 2020 00:25:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E0BA1833D3;
	Thu, 25 Jun 2020 00:24:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05P0OhJf020421 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 20:24:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 567B72144B35; Thu, 25 Jun 2020 00:24:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 510B92144B34
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 00:24:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A0488007A4
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 00:24:37 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-44-DOxUaikxNrKkJXazz2IGxA-1; Wed, 24 Jun 2020 20:24:35 -0400
X-MC-Unique: DOxUaikxNrKkJXazz2IGxA-1
Received: by mail-qv1-f46.google.com with SMTP id fc4so1996815qvb.1
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 17:24:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=4FzjLMRb2AIRt97ZaNWSG8BnWg0yXthFrid0zpMWOuQ=;
	b=WY20RgdiEUhfb6cbp7+ebsHHrC9CVZhOoB6zz8L0b5yh3wh6cfFdohHPUY22vEqJ4q
	cJx4qpXMDn8CvpH6BM3iQt0c4hb+veoTpB7GookadYOe/DLD7DTnIF62ivpEdiecCXFH
	7YcV2XZ1bDhrrO2rceQCWOPC664WcUo6Glh5cE+q0gOvo0i2qNWVBnVlwSowUmnaq2pG
	Hu4Hm0c7fFMWF94KSXDzUcisybg+m5qa+fmriHBASa3tE60jlGutflZjVGMfVUqzqE3G
	/9+SHWPWZL3RvkwXTYem6lefwGDIpnobaOKxfX54bLtz2yqtMyExN6NqNPWvHZfHeXYB
	GuOA==
X-Gm-Message-State: AOAM532Qz5xpc189BZPwHM14q9bUrqro5wGG+rVZQ6WUAy/hPkL0lIfM
	U1pP3ZsZutvlkKG6SmTw5ICI4cr47ys=
X-Google-Smtp-Source: ABdhPJzrYWcV+t8z7Pywv5+K2oURnzOsHfTRgKS69RWBxo2Ay/NqqM6VSVUBLx+mBZIs08ZH6rnbcw==
X-Received: by 2002:a05:6214:9c8:: with SMTP id
	dp8mr5395963qvb.127.1593044674290; 
	Wed, 24 Jun 2020 17:24:34 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433]) by smtp.gmail.com with ESMTPSA id
	r188sm4612181qkf.128.2020.06.24.17.24.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Jun 2020 17:24:33 -0700 (PDT)
Subject: Re: anonymity, threads, signatures, and confusion
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
	<Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
	<435D6EB7-70C3-4C70-AAED-11CE64B93241@cfcl.com>
	<Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
	<CAO2sX32BWM_Oxdme42Ok1_bG0Yok2hpAZDWSOoMM-tV3_bScBA@mail.gmail.com>
Message-ID: <b57cf3a3-4587-197f-5026-342f6447a649@gmail.com>
Date: Wed, 24 Jun 2020 20:24:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX32BWM_Oxdme42Ok1_bG0Yok2hpAZDWSOoMM-tV3_bScBA@mail.gmail.com>
Content-Language: en-US
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Lol Jeffery, what's wrong with MicroSD? I'm in total agreement with most 
of the hardware stuff you mentioned, but I have no problem with MicroSD, 
and in fact end up with too many full SD adapters I can't use. For those 
things that do need full size SD, I can take a MicroSD and stick it into 
the full size adapter. For what I do though, eMMC is usually better, at 
least for internal OS's on the computers I build.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

