Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F29745C895
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 16:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637767537;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Hj+g8VHshRW/+M//0bNSCEKvj5csSpBgk8gQfui9AcY=;
	b=W3q5JksJ0HiLgHMmxs8+2ZFfYWNw3HyldgEzJz+uR2gSjulH3sd7RCfZoEM0i3I7IHzWU0
	T+5o7QNRgNiMiS7/CiUF/pyzo10yX1o5eCKJTJM4bMUeAZ1dqnH9+0rVG5d5NjM75kYwzw
	nKttFF/FN3b7JvZGEzNEtvuhpz34RxE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-239-J-Al5kPyN8WiWdnLUwRdFg-1; Wed, 24 Nov 2021 10:25:36 -0500
X-MC-Unique: J-Al5kPyN8WiWdnLUwRdFg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08991DF8A3;
	Wed, 24 Nov 2021 15:25:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6694F5D9C0;
	Wed, 24 Nov 2021 15:25:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E5B4A4BB7C;
	Wed, 24 Nov 2021 15:25:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOFP5nq025573 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 10:25:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 683A340CFD11; Wed, 24 Nov 2021 15:25:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6314E40CFD0E
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 15:25:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 420DD85A5B5
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 15:25:05 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-112-PzKi2W8SPr6HP1caGnIWlQ-1; Wed, 24 Nov 2021 10:25:03 -0500
X-MC-Unique: PzKi2W8SPr6HP1caGnIWlQ-1
Received: by mail-wm1-f49.google.com with SMTP id
	p27-20020a05600c1d9b00b0033bf8532855so2379529wms.3
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 07:25:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=CnNKq0Q4NM44wnXrM7VfCeMdJFlB6ix0C7cwLLyXZ0U=;
	b=clVGTjhMkM7p/6kgzFtHeWMIU/06LQuJ8ZvLYoBVnVNFbOpS0FW0d5iU6SByCsC7gy
	VemhXVixW/dngZJBevBlxE2dSldtLQsPZUXRKs9l5yzOqH0u0WsfNkx9NxKj6hbaopBr
	XPz6+itsW3+rfVLhEWk+bH2E11BS/04RKcp8uWmQG2V0JMHu00mIvKohmkBqWeR20GWS
	9c3/VffaSYMie378d3yIzEkIppoyxY/kavQfC9GZRB5bnB0x/qZem6/P34VJww8K/8Re
	SdlP9jec5cuOlzTBrValBWifH2ZYz5w/1vZtjaCBWgIOqC28HrgE/0oe8Sr9/Pw/bn/V
	SZtA==
X-Gm-Message-State: AOAM533b86ezCv+nvqMp8arxlU2IaxAVhtpZbzgPWDRM7eqveUryTkls
	Fz0FvbyseYUuIh4AtIF1IgKFvbk03vFEVA==
X-Google-Smtp-Source: ABdhPJxxcNHaDMmsHaMpMW5qPy9QJH6Mz0wD9bcpT27hA8Jb4BPFo7qVqtI5UzxiHBY3h2G45idzzA==
X-Received: by 2002:a05:600c:354b:: with SMTP id
	i11mr16711952wmq.61.1637767501762; 
	Wed, 24 Nov 2021 07:25:01 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id t1sm185196wre.32.2021.11.24.07.25.00
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 07:25:01 -0800 (PST)
Message-ID: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
Date: Wed, 24 Nov 2021 15:25:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Fedora and virtual machines not starting
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So...decided to give Fedora a shot in a VM.

I'm using the quickemu/qemu setup and got the Mate spin.

My issue? It starts up fine, but doesn't bring Orca up at all.

Alt+F2 and typing orca doesn't work
Alt+super+S doesn't work

So, did I misconfig the qemu settiings somehow or?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

