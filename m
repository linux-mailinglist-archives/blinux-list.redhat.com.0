Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6697C3701C6
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 22:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619813320;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sQsUqegmKpss8zPDmjYjjlJX7LOdvvbutzocOigJvKY=;
	b=M7Pl5xSfX+TKdJMU6C/vI6DplPjYXXsPuVls01oUTGAs9+7S5KybMhTY8DXFL/uSsrW4DA
	Hz+RhE7UXR5stM3KMUW9BXaUE937P65jYUdbioPtvP5CUUNtSQMwfmq4aMe8ARBDewyxqO
	2QPfacAKJ/JG/vxVXtcjUzacD5TuLT4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-515-Al3v_NBWNi6stQCy0cfJ1Q-1; Fri, 30 Apr 2021 16:08:38 -0400
X-MC-Unique: Al3v_NBWNi6stQCy0cfJ1Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E81F801B13;
	Fri, 30 Apr 2021 20:08:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B29B19714;
	Fri, 30 Apr 2021 20:08:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B4D1C55345;
	Fri, 30 Apr 2021 20:08:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UK8IVD023575 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 16:08:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4343B205348C; Fri, 30 Apr 2021 20:08:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F0E02157F4B
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 20:08:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00ACC8007AC
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 20:08:16 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-376-TI5_KIFTNB2dehNBx3t9Qg-1; Fri, 30 Apr 2021 16:08:13 -0400
X-MC-Unique: TI5_KIFTNB2dehNBx3t9Qg-1
Received: by mail-oi1-f177.google.com with SMTP id l6so2710496oii.1
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 13:08:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=hoy6FiMr9Mc7mvRtbGUD3ZEeNh8bCcfmrjD5miHszDM=;
	b=IHDBFEOGb51RZ/VS4WLfa7yNGST3+XOPP/z8s0E4VaLRrOhQD4dqiJzbo48nD505VT
	fjTsU2E4jL++i46AjCKTCtPmb6Wlq9k2hpJXoNk4WxILQlkazUkUMA/ZSrsD9n/fiI8F
	gNqJlAEzgZ/7zupNDiG67vpMg30gEtGMMpmU4fc/WoQ0cz5HISmvqF2tB2YVORoskkai
	x7yz2KJwqAFNJ9cc9Cn81QoFTFDOrDSM+PAG8+mV014RnsmmZKLbhJjZN1251J4YJPnO
	qYLvUNNQQpR0dATrIc/3BNuHrvsi7dzIb1QbBb0jcZeA3hDNZQKgHjOx00o+dwQ1ZAzA
	71+w==
X-Gm-Message-State: AOAM533j92nkVT1fC998dpCWO4fB+iDtgAVKR4Xov6nHzJBpsynCFuMZ
	IdRywtR3GsCbKHEjk03DFAJySynBkflQVg==
X-Google-Smtp-Source: ABdhPJx3sucI4fsBs/w2u7q05I3FDHsxPhgr8/lMF2ymeBPes+iP57dctUiHI1v1nAi6RyFGA/Bhtw==
X-Received: by 2002:aca:4056:: with SMTP id n83mr12569079oia.47.1619813292554; 
	Fri, 30 Apr 2021 13:08:12 -0700 (PDT)
Received: from ?IPv6:2600:1702:20f0:4420:512a:a0d3:7d4a:c958?
	([2600:1702:20f0:4420:512a:a0d3:7d4a:c958])
	by smtp.gmail.com with ESMTPSA id h59sm957835otb.29.2021.04.30.13.08.11
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 30 Apr 2021 13:08:12 -0700 (PDT)
Subject: Re: Thinking of getting a computer to install Linux on any
	suggestions?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4A02183D-704A-4016-9178-15B50AAD1158.ref@yahoo.com>
	<4A02183D-704A-4016-9178-15B50AAD1158@yahoo.com>
	<alpine.NEB.2.23.451.2104292200070.23508@panix1.panix.com>
	<CAJ1g4g_Zr6s9d2tfL3+DufE7xJgpWAnhhRZsR3TPQkfoSG6kkw@mail.gmail.com>
Message-ID: <c9c2ced0-ee91-3101-47af-2d0ad583df53@gmail.com>
Date: Fri, 30 Apr 2021 16:08:10 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAJ1g4g_Zr6s9d2tfL3+DufE7xJgpWAnhhRZsR3TPQkfoSG6kkw@mail.gmail.com>
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

TWF0dGhldwoKCgpIaSBJIGhhdmUgRmVkb3JhIG1hdGUgcnVubmluZyBvbiBhbiBIUCBub3RlYm9v
ay7CoCBJdCdzIGtpbmQgb2ZhIHBhaW4gYXMgCml0IHRha2VzIHNvbWUgZml0dGxlaW5nIGJ1dCBp
dCBub3cgd29ya3MuwqAgSSBtYXkgdGFrZSBhIGxvb2sgYXQgdGhpbmtwZW4gCmFuZCBzZWUgd2hh
dCB0aGV5IGdvdC4KCgoKCk9uIDQvMjkvMjAyMSAxMDoxOSBQTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBAICJXaGVuIHlvdSBnZXQgZXZlcnl0aGluZywgcHVs
bCB0aGUgaGFyZCBkcml2ZXMgb3V0IG9mIHRoZSBjb21wdXRlciBhbmQKPiByZXBsYWNlIHRoZW0g
d2l0aCB0aGUgbGFuayBoYXJkIGRyaXZlcyB5b3UgYm91Z2h0LiBUaGVuIHlvdSBwcm9iYWJseSB3
aWxsCj4gaGF2ZSBhIHBsYXRmb3JtIG9uIHdoaWNoIGxpbnV4IGNhbiBiZSBpbnN0YWxsZWQuIgo+
Cj4gVGhhdCB3aWxsIHN0aWxsIGxlYXZlIHlvdSB3aXRoIHRoZSBiYXJyaWVyIG9mIHRoZSBVRUZJ
IHNldHRpbmdzIGlmIHlvdSB3YW50Cj4gdG8gaW5zdGFsbCBmcm9tIERWRC4gVGhpcyBjYW4gYmUg
c3Vic3RhbnRpYWwuIEkgc3RpbGwgaGF2ZSB0d28gbGFwdG9wcwo+IGF3YWl0aW5nIHNvbWUgZXhw
ZXJ0aXNlIEkgaGF2ZSBub3QgZm91bmQgb24gdGhlIHdlYiB0byBieXBhc3MgdGhpcyBiYXJyaWVy
Lgo+Cj4gVGhlcmUgYXJlIHF1aXRlIGEgZmV3IHBsYWNlcyB0aGF0IHNlbGwgY29tcHV0ZXJzIHdp
dGggTGludXggcHJlLWluc3RhbGxlZC4KPiBTZWUgZS5nLiwgdGhpcyBsaXN0OiA8aHR0cHM6Ly9s
aW51eHByZWxvYWRlZC5jb20vPgo+Cj4gQmVzdCByZWdhcmRzLAo+Cj4gUGF1bAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

