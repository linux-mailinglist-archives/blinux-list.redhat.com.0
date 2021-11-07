Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDB84473DC
	for <lists+blinux-list@lfdr.de>; Sun,  7 Nov 2021 17:36:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636302983;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/YbDVRKFa+kY4ty2UhlDVlSPqI5tGNIiM576nFNMv9A=;
	b=iyGXcibuux7qT9h1j8LPg/2afIBNBIoyQvDIUXoTsvovQw0PCH+UpM9M7NZKSkyHx50SWS
	za1rHycXGgW8SD6OZ9uBatFsWpFTMcZZA+whC+VaTvNd8A2ToiAEis0LEmKeqC8J5unyZT
	+Zm+P6I0HYFyhB0LnpXPGDbebY24P0g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-121-82bAe5xuPQqbDYK5Euu3VA-1; Sun, 07 Nov 2021 11:36:20 -0500
X-MC-Unique: 82bAe5xuPQqbDYK5Euu3VA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A968802C88;
	Sun,  7 Nov 2021 16:36:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 032AE60CA1;
	Sun,  7 Nov 2021 16:36:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 05B20181A1D1;
	Sun,  7 Nov 2021 16:36:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A7Ga3tf019379 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Nov 2021 11:36:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 817F12026D48; Sun,  7 Nov 2021 16:36:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C8BE2026D46
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 16:36:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2E8BB8011A5
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 16:36:00 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-68-PP8O4odQOt6IYnWtJgC1og-1; Sun, 07 Nov 2021 11:35:58 -0500
X-MC-Unique: PP8O4odQOt6IYnWtJgC1og-1
Received: by mail-qk1-f178.google.com with SMTP id p17so12395424qkj.0
	for <blinux-list@redhat.com>; Sun, 07 Nov 2021 08:35:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=BfARMRLHaLonQjTeplkKgA+tniFaVBK785O8Z3hvxuw=;
	b=z+dmyG6f0UP0/bLL3mLgxuFj4IAk6v/mSc8O7RFPOwZQJhmyIyWxlSm4+XDo6CVSUG
	2+yzFdBKEG+mhfG3IbkLSp/ZQIyt5eX5q4t7ZcZTOJx5N9aDYPSgWqqV6m8c2ynqlM4K
	3kVtfSWVsQYNJy44BOElpH/xPt5Av7YvdZTPNKpEJmL8MGapz76HNaZrbrIP9MjseRM0
	mA6RtBVVtMKxoPVvbZHwO7BFIX8JR4ws+7BUhYgoBt8axr8XuhxmMFeu8CCtysJCKl/J
	7xyH/aKesr4Bk/uru+OqSu8ML83e03CXQxYJHSbv0ZdsboLYHcZTPRG/gb31C2h2YUdb
	go6g==
X-Gm-Message-State: AOAM5327AADinPU1bJKieqUPTNnMUv4DysiDJl1ySSy+WiPyt3UDf7va
	W8EnuKvDTgzxA7lValcVKih/x3Mpz8/r4A==
X-Google-Smtp-Source: ABdhPJzk+inEetH4sKV1qcAtIwA4hvKe+Gjx7d1Prriwo9XojXcLndXKDaPEqccBFYjoFriT7DgJLw==
X-Received: by 2002:a05:620a:460a:: with SMTP id
	br10mr11472686qkb.314.1636302957713; 
	Sun, 07 Nov 2021 08:35:57 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:73c2:b0e7:c4eb:79ca?
	([2601:192:4c80:1420:73c2:b0e7:c4eb:79ca])
	by smtp.gmail.com with ESMTPSA id
	h11sm9091350qkp.46.2021.11.07.08.35.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 07 Nov 2021 08:35:57 -0800 (PST)
Subject: Re: Slint
To: blinux-list@redhat.com
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
	<CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
	<66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
	<CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
	<Pine.LNX.4.64.2111062234340.1006457@server2.shellworld.net>
	<20211107153903.j3obqxnmww7xcijn@begin>
	<d7ed8f37-ab31-2175-2693-a6da83082d90@gmail.com>
Message-ID: <c7c4fb63-cdc5-fd62-9bcf-c981cbf599c3@gmail.com>
Date: Sun, 7 Nov 2021 11:35:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.13.0
MIME-Version: 1.0
In-Reply-To: <d7ed8f37-ab31-2175-2693-a6da83082d90@gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUgaXMgbm8gMzItYml0IFNsaW50LgoKCi1EYXZlwqAgSC4KCgoKU2VudCBmcm9tIG15IFRo
aW5rIFBlbmd1aW4gSjQgbGFwdG9wLCBydW5uaW5nIFRyaXNxdWVsIEdOVS9MaW51eCwgdmVyc2lv
biA5LgoKT24gMTEvNy8yMSAxMTowMyBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiBJIGhhdmUgYSBsaW5rIHRvIGEgc2xpbnQgaGFhbmRib29rLsKgIEl0IHNl
ZW1zIHRvIGluZGljYXRlIHRoYXQgc2xpbnQKPiBvbmx5IHJ1bnMgb24gYSA2NCBiaXQgc3lzdGVt
LsKgIElzIHRoYXQgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

