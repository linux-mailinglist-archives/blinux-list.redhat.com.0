Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7E349AFDD
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jan 2022 10:36:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643103368;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PgQraE7KSw5eBTPq4alxKS3yEhRpjIZTf44w5mzUbqE=;
	b=ivM3fOVXiNlfoPijXhyMB/aDAopT6xiyuylCnb2uK/PMNtas3v9QpH7LM3MyZDoVfwazsk
	1L2PpwhcDWPp6FejhQGyxDWdGwYPNkq+Wc7tBVptdYRLkxYX/qkMVTFe0d+i6NJfStdvnt
	LCLb1osmfAZswZK6i1f45OJ3Q9oi8f4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-175-TGK3-7ULNhKPrHELQSRvpg-1; Tue, 25 Jan 2022 04:36:04 -0500
X-MC-Unique: TGK3-7ULNhKPrHELQSRvpg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 79FFB1B2C99E;
	Tue, 25 Jan 2022 09:35:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 545367B9DC;
	Tue, 25 Jan 2022 09:35:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 17C6C1809CB9;
	Tue, 25 Jan 2022 09:35:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20P9ZaED002981 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Jan 2022 04:35:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8A6DF492D1D; Tue, 25 Jan 2022 09:35:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8607B492C3B
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 09:35:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B6143802ADD
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 09:35:36 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-553-kuOlHA54PGK8jOw1kgzqqQ-1; Tue, 25 Jan 2022 04:35:28 -0500
X-MC-Unique: kuOlHA54PGK8jOw1kgzqqQ-1
Received: by mail-wm1-f48.google.com with SMTP id n8so24815669wmk.3
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 01:35:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=MQt++3g8L7J8njAG8Uq7NnQWFnFFqsRQfoYwhsw5TqI=;
	b=RLWmAL7faZzYDhvtvvkkZE8Du2aT2PcfaXBxyk1kcD0nSNP+CsgUI2ANfyZld6twsP
	IzWhHFjcsO7aDKQvGjWlzezlxxVei8NrXMOMwOjO2h2j6cpq42QYbW87CRSkE/XmHgsb
	dLPOgOpaERefr0cNu/FA1nZeE3Blm2+PI+liR+sYB31ClSqZOpoHNK5p0oYmmK6q3Pb/
	HxvuAARrR88sPWkApMbb4Dv6QqTVfkvdF+Mq8BZ4n3iGkW7ZjAZeIFK5xYptYgl+wFKa
	mN5TwfnZyVskLFR4HNDhfmxZ4PfdZDnVC/OQmO2f0N6o1UzgRKD2hGvrh2LmNEM9Yx6Q
	YDsw==
X-Gm-Message-State: AOAM53365n18acqlLtte3Juptso9UGonv0XruPkGLswCc1Epfe7Zt3ro
	w/Ti8zrusGC0SjbkZ3zkciTjZKtlu/B5nQ==
X-Google-Smtp-Source: ABdhPJw2m0mvi8sFrQMukGdIIJDFmosA4XNneZ/GXOLcaHpEIk1swzsOqIjHkABsx4CE9vBIjMzq2Q==
X-Received: by 2002:a05:600c:19d3:: with SMTP id
	u19mr2064636wmq.103.1643103326976; 
	Tue, 25 Jan 2022 01:35:26 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id m14sm8965457wrp.4.2022.01.25.01.35.26
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 25 Jan 2022 01:35:26 -0800 (PST)
Subject: Re: Applications menu missing in Ratpoison
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2aac53e8-ef6b-62e2-0539-0db8ab234818@gmail.com>
	<CAO2sX32o1VFUNCT9U--rnyN5x0b7KgJE8Uv6XR3jOkz2tkC60g@mail.gmail.com>
Message-ID: <147eecb5-462c-2058-4307-40f6e04b2704@gmail.com>
Date: Tue, 25 Jan 2022 09:35:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <CAO2sX32o1VFUNCT9U--rnyN5x0b7KgJE8Uv6XR3jOkz2tkC60g@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

FOr me on Arch and Ratpoison, did you try presing alt F1?

In my Ratpoison setup on Arch that brings up a menu of apps you can 
search by typing

Linux for blind general discussion wrote:
> I'm on a Debian-based system, not Slint, but pulling Ratpoison up in
> Aptitude and consulting its dependencies and recommendations, it would
> seem you need a separate package in order to have an applications menu
> as ratpoison only does window management. The version of Ratpoison
> recommends 9menu and menu, the former of which is designed for the 9wm
> window manager and the latter of which might be specific to Debian and
> its derivatives.
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

