Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B7D7A3D48F3
	for <lists+blinux-list@lfdr.de>; Sat, 24 Jul 2021 19:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627148833;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V1sVzEt/UjPxjbpkTkBgbrii7gR1p6KL6w13gpYZz0c=;
	b=OxsF3HU6st+CZfp6qvDmwXmC2tvNOdnM1TDUJVAIt5j55JnUjXhTaLNza7WUpKXIytuTVF
	B/nlshOt3p9TFWG5h/7Ni8/JZTXsMwdIJxfiDB9gboN264565dpwmeeV8LwdXpareIkpST
	bABzkoUDRffgzLz0MO0UIuXixhbZ6fo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-597-6jyF8OJWO-iiEgBpUJOBBA-1; Sat, 24 Jul 2021 13:47:12 -0400
X-MC-Unique: 6jyF8OJWO-iiEgBpUJOBBA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C5118105146D;
	Sat, 24 Jul 2021 17:47:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10F2F10190AA;
	Sat, 24 Jul 2021 17:47:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0D3CB180B7A2;
	Sat, 24 Jul 2021 17:46:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16OHepRL007475 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Jul 2021 13:40:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C74301112857; Sat, 24 Jul 2021 17:40:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2D131112850
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 17:40:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77CFD89C7DD
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 17:40:48 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-543-bvVOXtRAPOSHNUYfF0PQxA-1; Sat, 24 Jul 2021 13:40:46 -0400
X-MC-Unique: bvVOXtRAPOSHNUYfF0PQxA-1
Received: by mail-wm1-f50.google.com with SMTP id
	h24-20020a1ccc180000b029022e0571d1a0so3543762wmb.5
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 10:40:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=aMSSwY2NcFm9XpE6U0Go0yiAiSRK78rghl2WqdvKZ3w=;
	b=QaasjRB0j5mX+PHDqvmN/S+5fGKplUwqvjKGjhMahyoZkHB7ln914WndCM6kY1qxSG
	mpeEOJrhF2rabx46ZqVnB0BnL9AaJlyc/FRpY4Nqyw1dNEegCFgBRYEK0A+2+LAA0OtV
	uaQYKo+lt5/9zI1+WWHjb+UvD4oX52eI0FxnMW9piPPJzKd/IT2VTuttC40qzT3UT2Qy
	ypj7Q+U/GGx+G6epbjKd4hw1p436y2IAZljzjgcKLcEaizzIgaQOHyFuU2UsLaS9ieBt
	aUs2deSWAsmJgq8bMjGTqg74Mvyj4wjrqeb0Ha7g0XUH52Z48Cug4sREZi/umYQWCX1k
	Fd3g==
X-Gm-Message-State: AOAM533D6UbpjhE3lIKLWQJ117JHuzk9Al/1yRVjeTmdev9miRLFoh+Y
	f5AlPvqQLJKGMFDoeclCamKoyCSZJunesg==
X-Google-Smtp-Source: ABdhPJyuAdWu4OWDzIl95Q8jxThYzSKdCDrcWwlUPeH/hVldqlAF7plAk1DhZ0UEm2ffCAMuCnLEpw==
X-Received: by 2002:a05:600c:3b1b:: with SMTP id
	m27mr9757457wms.35.1627148444917; 
	Sat, 24 Jul 2021 10:40:44 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.105.92])
	by smtp.gmail.com with ESMTPSA id
	i12sm36869824wrp.57.2021.07.24.10.40.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 24 Jul 2021 10:40:44 -0700 (PDT)
Subject: Re: Flatpak on Slint
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c7b551f8-499a-1ecc-f221-387de0801c63@gmail.com>
	<2c34c816-a1e1-7a47-5bca-f35884279da3@slint.fr>
Message-ID: <58abee7f-4023-5adf-b49e-6c6fb3e20a60@gmail.com>
Date: Sat, 24 Jul 2021 19:40:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <2c34c816-a1e1-7a47-5bca-f35884279da3@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WWVwLCByZWFkaW5nIGFsbCB0aGUgZG9jdW1lbnRhdGlvbiB3YXMgYWN0dWFsbHkgYSBnb29kIGlk
ZWEuCgoKSSBnb3QgY2F3YmlyZCB0byB3b3JrIG9uIFNsaW50LiBZZWFoLCBpdCdzIGEgcGFpbiwg
YnV0IHdoYXQgdGhlIGhlY2suCgoKRm9yIGEgcGFpbi1mcmVlIGNvbXB1dGluZyBleHBlcmllbmNl
LCB1c2UgYSBNYWMuCgoKV2FybSByZWdhcmRzLAoKQnJhbmR0IFN0ZWVua2FtcAoKU2VudCB1c2lu
ZyBUaHVuZGVyYmlyZCBmcm9tIFNsaW50CgpPbiA3LzI0LzIxIDQ6NTMgUE0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgQnJhbmR0LAo+Cj4gSSBuZXZlciB1
c2VkIGZsYXRwYWsgb3IgdHdpdHRlciwgaG93ZXZlci4uLgo+Cj4gbWF5YmUgYSBwb3N0IGluc3Rh
bGxhdGlvbiBjb25maWd1cmF0aW9uIGlzIG5lZWRlZCwgYXMgaW5kaWNhdGVkIGluOgo+IGh0dHBz
Oi8vc2xhY2tidWlsZHMub3JnL3NsYWNrYnVpbGRzLzE0LjIvZGVza3RvcC9mbGF0cGFrL1JFQURN
RQo+Cj4gSWYgdGhpcyBkb2Vzbid0IGhlbHAsIHBsZWFzZSBwb3N0IHRoZSBleGFjdCBzdGVwcyB5
b3UgdG9vayB0byBpbnN0YWxsIAo+IGZsYXRwYWsKPiB0aGVuIGNhd2JpcmQgYW5kIHN0YXJ0IGNh
d2JpcmQuCj4KPiBUaGVuIEknbGwgdHJ5IHRvIHJlcHJvZHVjZXMgbGF0ZXIgdG9kYXkuCj4KPiBD
aGVlcnMsCj4KPiBEaWRpZXIKPiAtLSAKPiBEaWRpZXIgU3BhaWVyCj4KPgo+IExlIDI0LzA3LzIw
MjEgw6AgMTY6MjcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTC
oDoKPj4gSGkgYWxsLAo+Pgo+Pgo+PiBJIGluc3RhbGxlZCBmbGF0cGFrIG9uIG15IFNsaW50IGlu
c3RhbGxhdGlvbiwgZm9yIHRoZSBzaW1wbGUgcmVhc29uLCAKPj4gdGhlcmUgYXJlIG5vIHVwIHRv
IGRhdGUgVHdpdHRlciBjbGllbnRzIHRoYXQgSSBjYW4gZmluZC4KPj4KPj4KPj4gSSBsb29rZWQg
YXQgdGhlIFNsYWNrYnVpbGRzLCBidXQgbm90aGluZy4gQ2F3YmlyZCwgbXkgZmF2b3JpdGUgTGlu
dXggCj4+IGNsaWVudCwgZm9yIG5vdywgaXMgYXZhaWxhYmxlIGFzIGEgZmxhdHBhaywgYnV0IHdo
ZW4gSSB0cnkgYW5kIHJ1biAKPj4gaXQsIEkgZ2V0IGEgYnJva2VuIFBpcGUgZXJyb3IuIENhbiBh
bnlvbmUgaGVscCB3aXRoIHRoaXMgaXNzdWU/Cj4+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

