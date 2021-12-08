Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFFF46C886
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 01:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638922179;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PnMtrpC6vDBDZVoMwGXIsrUFcmvqEm6DL9qkoKHguxo=;
	b=NOkUFVQBgZGjFZz1XJz8SjMBLs5CcVGhMCZ+x57g+JdL8TELC/fsCUhsFHt/Rsp5IueiSL
	svp34MrMtBg2WHJfLLIQHztcQmb4757gC86KQtLxIqdazjCCiLyboIxdPbLsx/CoAvRXs9
	2SZnCvY2onUCs5leZu53/Q/XyL9niG4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-441-39FNA8_lOHyoq-oORAF3lQ-1; Tue, 07 Dec 2021 19:09:35 -0500
X-MC-Unique: 39FNA8_lOHyoq-oORAF3lQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3348419253C0;
	Wed,  8 Dec 2021 00:09:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0B6A1346F;
	Wed,  8 Dec 2021 00:09:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CF7991809CBA;
	Wed,  8 Dec 2021 00:09:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B809Hsj019556 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 7 Dec 2021 19:09:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 739F02156601; Wed,  8 Dec 2021 00:09:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D8A521565E5
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 00:09:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 52E902A5954D
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 00:09:14 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-81-SE8kQhozOHihiEhhg4Yz-Q-1; Tue, 07 Dec 2021 19:09:12 -0500
X-MC-Unique: SE8kQhozOHihiEhhg4Yz-Q-1
Received: by mail-qk1-f175.google.com with SMTP id t6so567495qkg.1
	for <blinux-list@redhat.com>; Tue, 07 Dec 2021 16:09:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=V7wzWSFxlxH/TxD5tFzWAeQ+Mg+5vMPeTD/lyYISbZI=;
	b=q2mqcE3gnAkADapBL+RAALoVVWHqBJH5Cc0Rtk8hFzpOOCCgGqACbTukmhU8MCmj2N
	YOGeGOUmgxwBU8NDvcLJivt60w8xHAqR+X/1bobjVx2r0+L5UOIZuSUHI3iELlKtnbA1
	f7jPiD2q6PJX2bHVEhb8D6qZm/QQ1e7JvRPgz5TQKHvbJ5z9JpT2XacRad3rxJheiX9b
	nf3HcX2QU6bpHdXUf3iQk45rSY8FdFezzP3s9nl2Kim4rzsa6582nDd8LFHCWAECFwTi
	004syw+cvzWYb9AXqcbE+dkRE42OToFR6r0bcZoxgrQOnxv+IfLiTsl5O6juU7eKMlC9
	RiQw==
X-Gm-Message-State: AOAM5330Q4YNYxWNKF867+YLoqhie0CNeW1z3fgL/6QfjDEyDRodO4hP
	VqBYh2ePHsP/JIhUZjdTedt48HY1wfE=
X-Google-Smtp-Source: ABdhPJwSyVutySZ1t6SmQe32jHA/NZdwZcZBcVjw1vsiAQ2i2j0Ukg1IwNnjLnhHPqerO4ppRSwjPQ==
X-Received: by 2002:a05:620a:f92:: with SMTP id
	b18mr3035501qkn.436.1638922152015; 
	Tue, 07 Dec 2021 16:09:12 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id 73sm585934qkm.94.2021.12.07.16.09.11
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 07 Dec 2021 16:09:11 -0800 (PST)
Message-ID: <e0038ee9-9126-c895-454b-5f3437550a60@gmail.com>
Date: Tue, 7 Dec 2021 19:09:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Other lightweight WM?
To: blinux-list@redhat.com
References: <58c49814-4eb5-b4dc-85da-c6fb7d110d82@gmail.com>
	<CAO2sX30eL2BGnmLU2JqWS8epCwW+gTP2cG5nZ2YHM=0zJCXSkQ@mail.gmail.com>
	<e6a251f6-5a33-b88c-6bc4-b26dabcc4d9d@gmail.com>
	<CAO2sX32V3Qw88EgrBFWTTr7WaVkusPC6bfgYTqyfwk-jbw0ioQ@mail.gmail.com>
In-Reply-To: <CAO2sX32V3Qw88EgrBFWTTr7WaVkusPC6bfgYTqyfwk-jbw0ioQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I wish i had known about flwm when I was working on F123Light. It needed 
to be able to run on a Raspberry Pi 2, so every little teeny tiny bit of 
speed I could squeeze out of it helped. We had a nice little text-based 
menu system with startx scripts that would run things like Seamonkey for 
mail and web browsing, blueberry to set up bluetooth devices, and a few 
other things we did graphically. We were using jwm because it was the 
smallest in the Arch repositories that was available at that time, and 
at that point, it didn't need a terminal emulator as I recall.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

