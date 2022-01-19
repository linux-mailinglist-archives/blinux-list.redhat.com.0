Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 406FC493F5D
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jan 2022 18:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642614654;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pwNkB2ZUQmr1RXLu9K0sRqVS9x6pJhOjsdzNUrUZx5w=;
	b=PMsl/NFNwT9iuI2B4J8xPfcrS0wFMK0ks1aW0L5r2i8CIGNU9iuzmJ3o729iW4IXe+uT8+
	2Oz+wpAqQDLNRaZzsPnwe8WTnP1+5FS3c455xIhEMsfVHhHEywtxDEKTsPkS6nSJiPHmlc
	x+rhrpQ/u0T0tpE+Is2NYM9vkrBLtLE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-88-lwrbYHU9Mwu-LCAlflhEQg-1; Wed, 19 Jan 2022 12:50:50 -0500
X-MC-Unique: lwrbYHU9Mwu-LCAlflhEQg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3A261B2C996;
	Wed, 19 Jan 2022 17:50:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C31067FBA2;
	Wed, 19 Jan 2022 17:50:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8DB22180126E;
	Wed, 19 Jan 2022 17:50:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20JHOU6n007945 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 12:24:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C6EB240CFD35; Wed, 19 Jan 2022 17:24:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C24DD40CFD05
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 17:24:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A74422B699F7
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 17:24:30 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
	[209.85.167.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-499-uWkMQigUPh61TjeZVUWdQg-1; Wed, 19 Jan 2022 12:24:29 -0500
X-MC-Unique: uWkMQigUPh61TjeZVUWdQg-1
Received: by mail-oi1-f171.google.com with SMTP id q186so5190931oih.8
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 09:24:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=y6EKhDUmeHr1Wxu9LVT1up8Qt1BxxRKeBUkgzTwW+zw=;
	b=xIFaNofD/dZWmx4AxXfmjT6ErfYTtRCItTd7WgjD4V/uJde76yOHYPgv+pWt8CYpQk
	hckB0Avce9z3FdCSpMjPKmtfdKgGdvIadljzuCQlJynqGmW2JooCODa5bw2zp8O7fbQv
	UJT7M4yAcODyUC43kUjH7RlBH46l2ErhHx3I7yQqD0jqkPsUto+40+8uyiyQ2m1Mqz6s
	A4GuczQrhMUkxcjMtBcjo8p2Qkin/so4zld6Vke8fV0Vb7x3ybo040/RLEiJsWbu4ym9
	2DiNscuG38YDNS8I/PQZIhrN89qxVYCLPoiULroQoCGYayW5Ibef5Ex2LmFBQkqU1zbT
	LsJA==
X-Gm-Message-State: AOAM530jGQejwZVgbVYGoyVAAZXneT+Hdbkjb3xJ9QeK6IPD4fbObrsl
	s0MvHWiF9x13EDiT11c3W6Jwxka8MD4=
X-Google-Smtp-Source: ABdhPJwO79p1c8tKaD71Uky38U4lE2B2cEs0CKo5O1DDzMaVEOds9edSFjeZyZPAU+P34bzn58aJ5A==
X-Received: by 2002:a05:6808:aba:: with SMTP id
	r26mr3998082oij.155.1642613068022; 
	Wed, 19 Jan 2022 09:24:28 -0800 (PST)
Received: from ?IPv6:2600:1700:9434:2a00:6cbc:47f:76b5:b9c0?
	([2600:1700:9434:2a00:6cbc:47f:76b5:b9c0])
	by smtp.gmail.com with ESMTPSA id j17sm145206otn.9.2022.01.19.09.24.27
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 19 Jan 2022 09:24:27 -0800 (PST)
Subject: Getting Ready For linux
To: blinux-list@redhat.com
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
	<6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
	<CAO2sX30mT2TyBAvR4h-5Gvi45L20d+TZ8NQ97N3Ed=0ku2J6JA@mail.gmail.com>
Message-ID: <7fd76ae5-77b0-fdb1-83f4-62cf792cce90@gmail.com>
Date: Wed, 19 Jan 2022 11:24:26 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX30mT2TyBAvR4h-5Gvi45L20d+TZ8NQ97N3Ed=0ku2J6JA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIHRvIGFsbCB3aG8gaGF2ZSBtYWRlIHN1Z2dlc3Rpb25zLgoKRmlyc3Q6IEkgZG93bmxv
YWRlZCB1YnVudHUgYW5kIGZsYXNoZWQgaXQgdG8gYSBVU0Igc3RpY2suCgpOZXh0OiBJIGdvdCBt
eSBtaW5kIGNoYW5nZWQgKHByb2JhYmx5IGZvciB0aGUgbmJldHRlciksIHNvIEkgZG93bmxvYWRl
ZCAKU2xpbmsgYW5kIGZsYXNoZWQgaXQgdG8gYW5vdGhlciBVU0Igc3RpY2suCgpOb3cgSSBoYXZl
IHR3byBVU0Igc3RpY2tzIHRoYXQgZWFjaCBjb250YWluIGEgdmVyc2lvbiBvZiBsaW51eC4gQXNz
dW1pbmcgCkknbSBnb25uYSBnbyB3aXRoIFNsaW5udCwgZG8gSSBub3cgaGF2ZSBhIGJvb3RhYmxl
IHdvcmtpbmcgY29weSBvZiAKU2xpbnQ/wqAgT3IgaXMgdGhlcmUgbW9yZSB0byBkbyBiZWZvcmUg
SSdtIGFjdHVhbGx5IHJ1bm5pbmcgbGludXg/CgpUaGFua3Mgc3RpbGwgbW9yZS4KCkhvd2FyZAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

