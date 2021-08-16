Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D4B7F3EDD43
	for <lists+blinux-list@lfdr.de>; Mon, 16 Aug 2021 20:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629139362;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r1m3iU6av3x0Y1ffOAy6KPPm9BkiGWcyB4ccC8LJAXI=;
	b=Z7bfCgH7ZqKHF+uRKz2eUtmZ4Ymy2OduX/64If21ZyuwM+VigT29K+Tty+ApH+griPGe7W
	KRV/iQdECsXDJwWUmTEzR0hKJyYAvgNh9Z5T5rYn3mw87N5EAY81SfAZbX/GombUsivVoM
	DnEINzozTrJVnvzCJA+ScJuIA/+JBcM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-47-IXvFQd-yNSW6O2_iMRhD3w-1; Mon, 16 Aug 2021 14:42:40 -0400
X-MC-Unique: IXvFQd-yNSW6O2_iMRhD3w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 31648801AC0;
	Mon, 16 Aug 2021 18:42:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4968610013D7;
	Mon, 16 Aug 2021 18:42:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA071181AC06;
	Mon, 16 Aug 2021 18:42:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17GIgMcu011136 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 16 Aug 2021 14:42:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C1B50AEC90; Mon, 16 Aug 2021 18:42:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCC2B2D467
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 18:42:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 104AF89C7DD
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 18:42:19 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-296-HeB02aNlMvSDSVkCxSibVA-1; Mon, 16 Aug 2021 14:42:17 -0400
X-MC-Unique: HeB02aNlMvSDSVkCxSibVA-1
Received: by mail-qk1-f172.google.com with SMTP id y144so7117741qkb.6
	for <blinux-list@redhat.com>; Mon, 16 Aug 2021 11:42:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=22ZDef/F5ZLYDXHcnBZOlW0qwMxZ2pV+MHj9Osf2jAE=;
	b=WrIJOaF3uQFJOZLR8VZWmTdqJiPl9B3jMVwCwseSHQ4LpxJH5NFys1XubopSVrb8WJ
	R74EWkul2wNdA84VsWPk35aVsOHRmHYFebceZYz3JCATbfqJ/WLsmSDdltsfej0k+b9M
	SXoSKdQwxSlprWOMN4fwVcO+R0Lkg1P7bJNxisG883JaaMOkkd4QotxFXr6HbCuJ++Tg
	WjGCsQv28MdidDfX8d+EXz5bZj5TmiAXBi9sfX3CNif7M9Ye6vi2pBY+8YjHo2fwLoNR
	uKrl72dx88fnwZodAV4v4oSyAMc08re9PKFhb0YGPOqf17hRF/GLFf9fCwBJmNGMxVeP
	VfNQ==
X-Gm-Message-State: AOAM532+444m3lcIS5RWntraOVx5jDinlTr4RsOCKhZHzTw3lcHsw2WQ
	BsF0+lwhdnRQcLCeXnZJDYsh3rAE2gI=
X-Google-Smtp-Source: ABdhPJzHqG2ztUUFspRrheq9dOFgmYjnZqgdzU9mDRNACk3tP3ONrtKGcD2Gi+nD3IEoDrGcu6Ka7A==
X-Received: by 2002:ae9:e112:: with SMTP id g18mr365008qkm.140.1629139336532; 
	Mon, 16 Aug 2021 11:42:16 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	x9sm3061793qko.125.2021.08.16.11.42.15 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 16 Aug 2021 11:42:16 -0700 (PDT)
Subject: Re: Anyone else experiencing Firefox 91 crashes?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <17f6f79e-2927-3ad4-7915-42053461d773@protonmail.com>
	<20210816172548.7pw3tmt57aqoc2ng@alex-pc>
Message-ID: <bf4a2c02-dd28-8a0f-12b9-b45a47652810@gmail.com>
Date: Mon, 16 Aug 2021 14:42:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210816172548.7pw3tmt57aqoc2ng@alex-pc>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

I have 91 on ArchLinuxARM. Just got it about 2 days ago as I recall. 
Using it right now without any crashes. Sounds like it may be a library 
issue, some sort of incompatibility with the specific versions of 
libraries used in your version of Ubuntu-MATE. Can't say for sure 
though. I do know that when it happens here, it usually comes from an 
incompatibility with a specific library that has a new version that 
hasn't yet been built. Usually the problem goes away in a couple of days 
when the library is rebuilt. Try running firefox from a terminal. That 
will tell you if you have undefined symbols, missing .so files or links 
or something else similar crashing it.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

