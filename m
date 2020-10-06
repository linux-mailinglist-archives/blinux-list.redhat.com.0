Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id EC1C52853DF
	for <lists+blinux-list@lfdr.de>; Tue,  6 Oct 2020 23:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602019835;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6/ZlkfqoAY3+h0Hj5KRQoGTXsYNHGXruXp7OlcIra6o=;
	b=BddNQUC3IdukUVOB6EIg5QfaHnTqrsgc9hdthLTzpZ0NS+14MV1kA6+BgTJeupBGe0TkDK
	FRbR9QQH9DnGi0A3MNtXu+NCuVQB+F8/yI4FguQOnJh/bwVKbjIcUK+RKGSwSR1CANLmK2
	MdoBgMmXZxaaJBYbV0oTNZa1PZj7Ong=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365-S1B-RVpFNuyKXJjfx2gZDQ-1; Tue, 06 Oct 2020 17:30:32 -0400
X-MC-Unique: S1B-RVpFNuyKXJjfx2gZDQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D3EC10082EC;
	Tue,  6 Oct 2020 21:30:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C87F960BFA;
	Tue,  6 Oct 2020 21:30:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C1DF5181A06B;
	Tue,  6 Oct 2020 21:30:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 096LUF74000812 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Oct 2020 17:30:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C5762201E72B; Tue,  6 Oct 2020 21:30:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BFF95200BCF0
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 21:30:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F0438582A6
	for <blinux-list@redhat.com>; Tue,  6 Oct 2020 21:30:13 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
	[209.85.216.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-316-fz8Xq7yZOSmGiHpId5SqpQ-1; Tue, 06 Oct 2020 17:30:09 -0400
X-MC-Unique: fz8Xq7yZOSmGiHpId5SqpQ-1
Received: by mail-pj1-f48.google.com with SMTP id az3so2199983pjb.4
	for <blinux-list@redhat.com>; Tue, 06 Oct 2020 14:30:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=wL+jSKGNtDtceeNOJVaoBsc+7hR7ueNSj8D3i9/CwOw=;
	b=dK5yXOnIUGtFWCaWG2OPIWZllc7c525n2sD/fGhybPJISBP/DxfI/Rk+NL7KZSBvvR
	XVy95hcRkl3sC1j1BYB53FAIJWYkt3oa6/X+OSVGTHr7siXyzKzALe9Wp2rPd6gTkp6g
	QB4+P52M0Di8xVBN6O1EydiK66A0qa2DzcUKWSIeCtGXLdisBkKSbiU50kYEkKgASd76
	OKPn8OODSeWChP59Mlq3Ra0E9bVXiWmw6jS8jz1+75gDhZEaRjklrp5K2Fb0NW2vNHpq
	7Unzk7mFjFHCGcEl1A7CWH1CbB6+EciAtKhGdp6aTYP5OI9BQT/WnnS9T4+c3mqhy/d5
	NSmQ==
X-Gm-Message-State: AOAM533XJ4W8LpcLkVpO3eMbVNGp/v9me5O9CDeOcq9X44tCN56jr8Do
	iKArYWX818nhpquqKJzwUCHDpPZmMhK96w==
X-Google-Smtp-Source: ABdhPJwWEPjO5YJQb7Ys3POMsXgYPbokWp1uV4qQ3zC9yWjlc3/EMxX42YDt6yq6qcNihiayCAlX/A==
X-Received: by 2002:a17:902:8f93:b029:d3:cc32:8605 with SMTP id
	z19-20020a1709028f93b02900d3cc328605mr103935plo.32.1602019808487;
	Tue, 06 Oct 2020 14:30:08 -0700 (PDT)
Received: from [192.168.0.3] (174-18-62-40.tcso.qwest.net. [174.18.62.40])
	by smtp.gmail.com with ESMTPSA id
	n127sm113359pfn.155.2020.10.06.14.30.07 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 06 Oct 2020 14:30:07 -0700 (PDT)
Subject: Re: VPN accessibility?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.OSX.2.23.453.2010061028110.5318@dans-mac-mini.home>
	<32e26bf1-4bf3-b0bf-a603-b5f23b0535f0@slint.fr>
Message-ID: <dbcd380c-a90a-56a6-f594-cad268a66ab9@gmail.com>
Date: Tue, 6 Oct 2020 14:30:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <32e26bf1-4bf3-b0bf-a603-b5f23b0535f0@slint.fr>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

ZXhwcmVzcyB2cG4gaXMgcHJpdHR5IGdvb2QKCkkgYW0gdXNpbmcgaGVtIGl0IGlzIGZvcmUgdGhl
IG1vc3QgcGFydCBhY2Nlc3NpYmxlIGZyb20gd2hhIEkgY2FuIHRlbGwgCm9uIHdpbmRvd3MgaGF2
ZSBubyBpZGVhIG9uIGxpbnV4CgpPbiAxMC82LzIwMjAgNzo0NyBBTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSwKPgo+IG9wZW52cG4gaXMgaW5zdGFsbGVk
IGJ5IGRlZmF1bHQgaW4gU2xpbnQuCj4KPiBzc2h1dGxlIGlzIGF2YWlsYWJsZSBmcm9tIGh0dHBz
Oi8vc2xhY2tidWlsZHMub3JnLCBjZi4KPiBodHRwOi8vc2xhY2tidWlsZHMub3JnL3JlcG9zaXRv
cnkvMTQuMi9uZXR3b3JrL3NzaHV0dGxlLwo+Cj4gbm9yZHZwbiBpcyBhbHNvIGF2YWlsYWJsZToK
PiBodHRwOi8vc2xhY2tidWlsZHMub3JnL3JlcG9zaXRvcnkvMTQuMi9uZXR3b3JrL25vcmR2cG4v
Cj4KPiBPdGhlciB2cG4gc29mdHdhcmUgYXJlIGF2YWlsYWJsZToKPiBodHRwOi8vc2xhY2tidWls
ZHMub3JnL3Jlc3VsdC8/c2VhcmNoPXZwbiZzdj0xNC4yCj4KPiBCZXN0IHJlZ2FyZHMsCj4gRGlk
aWVyIFNwYWllcgo+IFNsaW50IG1haW50YWluZXIKPiBodHRwczovL3NsaW50LmZyCj4KPiBMZSAw
Ni8xMC8yMDIwIMOgIDE2OjMwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4+IENvbnNpZGVyIHRoaXMgYWxzbywgbm90ZSB0aGUgbmFtZSBzdGFydHMgd2l0
aCBkb3VibGUgcydzLCBpdCBtaWdodCBiZSBpbiBhIHJlcG9zaXRvcnkgYWxyZWFkeToKPj4KPj4g
UHJveHkgc2VydmVyIHRoYXQgd29ya3MgYXMgYSBwb29yIG1hbidzIFZQTgo+PiBodHRwczovL2dp
dGh1Yi5jb20vc3NodXR0bGUvc3NodXR0bGUKPj4KPj4gT24gVHVlLCA2IE9jdCAyMDIwLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pgo+Pj4gSGkgZXZlcnlvbmUs
Cj4+PiBJIGFtIGFib3V0IHRvIGluc3RhbGwgU2xpbnQgZm9yIHRoZSBmaXJzdCB0aW1lLCBzbyBp
ZiBhbGwgZ29lcyB3ZWxsLCBJIHNob3VsZCBiZSBoYXZpbmcgbXkgZmlyc3QgTGludXggT1MgdXAg
YW5kIHJ1bm5pbmcgc29vbi4gVGhlcmUgbWlnaHQgYmUgdW5leHBlY3RlZCBjaGFsbGVuZ2VzIGFz
IGEgbmV3YmllLCBidXQgb3ZlcmFsbCwgSSBob3BlIGl0IGdvZXMgd2VsbC5JJ20gbG9va2luZyBp
bnRvIFZQTiBvcHRpb25zIGZvciBvbmNlIEkgZ2V0IHRoZSBPUyBpbnN0YWxsZWQuIEkga25vdyBz
b21lIFZQTiBzZXJ2aWNlcyBoYXZlIGZyZWUgdHJpYWxzLCBidXQgSSdkIHJhdGhlciBqdXN0IGFz
ayB5b3UgZ3V5cyB3aGljaCBWUE4gZG8geW91IHRoaW5rIGhhcyBhIGZhaXJseSBhY2Nlc3NpYmxl
IGFwcCBvbmNlIHlvdSBkb3dubG9hZCBpdCBvbiBMaW51eD8KPj4+IFRoYW5rcywKPj4+IFNMCj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3
dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

