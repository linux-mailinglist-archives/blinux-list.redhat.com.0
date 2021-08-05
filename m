Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6F1613E0B42
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 02:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628123616;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l6an4YuyfyfERcq/UbX9Vm4PdpoZcRSu0KCg3IFutf0=;
	b=IGW+J7cm3p6wc0xlPmIoc7gc2990fYrv3IpbJqYPreegrw7j/wOktDZ7IWfQ2CwlSJrOUU
	PGG/d9AiAPC3WeJnsrhkG2x3HXWei8ElOLyNX9ejstDostzCl+SiY1vgR7HO1P7SUEeS73
	Fy3o5hYLdLT9dZkS7r5rLbeKONDGT7A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-460-X7lvM6jzMe2kvC7IneRVJA-1; Wed, 04 Aug 2021 20:33:35 -0400
X-MC-Unique: X7lvM6jzMe2kvC7IneRVJA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7087190A7A0;
	Thu,  5 Aug 2021 00:33:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2759719C44;
	Thu,  5 Aug 2021 00:33:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 115D1180BAB2;
	Thu,  5 Aug 2021 00:33:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1750UUeA026683 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 20:30:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2278321EC5FF; Thu,  5 Aug 2021 00:30:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E14620ECC9F
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 00:30:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E51585828B
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 00:30:26 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-334-lOHlDBObNhKjU6EllpavyA-1; Wed, 04 Aug 2021 20:30:24 -0400
X-MC-Unique: lOHlDBObNhKjU6EllpavyA-1
Received: by mail-qt1-f172.google.com with SMTP id h27so2690225qtu.9
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 17:30:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qxOkcGA28BslbqJYpg+7+JSMzQiK9EQm6ANjv0Ao/rY=;
	b=gYpDK09llPA1eW1lHS4ihdpkdugnB4X1b0Yqwu4e4+tJ8hkNs6FphFIL/pl0zjgflE
	AjgbEOsjv8VjGw0pKYIteCCGzMVZBbtAHfaXOv4f+9XbguEfJ0CNmhYPuo9QNZS/rfAm
	WewVB7frgru8Wij4WPEvro8jaJ3I2bKjUXdQ+ENzyEJ5p5od9snCQVBnkZa0N+p96lh6
	UrDmL1X6aUq5ycWiOip1ek9g+czTqqsU5zP1WPbkTmSuKZOcB+p/V2tsUMk2fKmr4PpL
	NRR0dfcVpHW6ohZSDeGH46JY4gVcvWwE5EOhhM2ilhxWWJB4PgB0zPDLNr9iup5aUxRD
	s37A==
X-Gm-Message-State: AOAM532NfSM7ZRc4gfBIpa9FXwRLQNOlTljhq1UkVzF/yS/Fa5VfsxOP
	hiOlVx3LldUotxAnVqP3cLfrAnwys7O0vA==
X-Google-Smtp-Source: ABdhPJy/kaEKtrIX1unkB3r3mcl2P7pxEcIM5PfwQeZkkbGrJhR6s6nFCwtUtqPqy0DAuyKOy6xRUw==
X-Received: by 2002:ac8:120a:: with SMTP id x10mr2028542qti.379.1628123423824; 
	Wed, 04 Aug 2021 17:30:23 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id
	g10sm1586110qtp.67.2021.08.04.17.30.23 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Aug 2021 17:30:23 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
	<dfd09fe5-f568-1553-82a5-650ab234b84d@gmail.com>
	<da3aefc4-efce-2540-9eba-d6ddbd0a6c7e@gmail.com>
	<96BBED50-5B5B-4EED-B882-7CC419DE9B36@gmail.com>
Message-ID: <224c29c2-1089-4113-ffce-ce3096c1c6c5@gmail.com>
Date: Wed, 4 Aug 2021 20:30:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <96BBED50-5B5B-4EED-B882-7CC419DE9B36@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WW91IGNvdWxkIGhpdCB0aGUgcG93ZXItb2ZmIGJ1dHRvbiwgYW5kIGl0IHdpbGwgYXNrIHdoYXQg
eW91IHdhbnQgdG8gZG8uCgoKLS3CoCBEYXZlwqAgLS0KCgoKU2VudCBmcm9tIG15IExlbm92byBU
aGlua3BhZCwgcnVubmluZyBTbGludCBHTlUvTGludXguICBodHRwczovL3NsaW50LmZyIGZvciBp
bmZvCgpPbiA4LzQvMjEgNzo1MiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBBIHZlcnkgYmFzaWMgcXVlc3Rpb24sIGhvdyBtYXkgSSBzaHV0ZG93biBvciBy
ZXN0YXJ0IGEgYnVkZ2llIHN5c3RlbT8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

