Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A902345E442
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 03:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637892151;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JsgjaVfruD9Pj8iioQYx1+BtHVoI0snbdImRRshmzNc=;
	b=CQICdKz/+5Wj9uxDipz/0hLUimYIuN+LeSJuETLgbD8Z51svwlBv9FyVfiggdwoujSGvt3
	Eyp4R5CRr+TqlWi/C8cQQCT/X5Dxf+fgqlKv5fhPJ4FOjDYjo/MnDPeHA2f6x+GHUGWWHG
	+GhYOvZDnnnqmWRpAFHcK+r994IgeGg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-66-zVodslmCNB-ua0IJ5_Zzpw-1; Thu, 25 Nov 2021 21:02:27 -0500
X-MC-Unique: zVodslmCNB-ua0IJ5_Zzpw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42420835B47;
	Fri, 26 Nov 2021 02:02:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 910EB196F1;
	Fri, 26 Nov 2021 02:02:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7F7221809C89;
	Fri, 26 Nov 2021 02:02:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQ224ff027515 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 21:02:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DC2712026D48; Fri, 26 Nov 2021 02:02:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6F192026D46
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 02:02:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B39B41066558
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 02:02:01 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-33-Z3ALHWnuNqy2pGw4S3C_4Q-1; Thu, 25 Nov 2021 21:02:00 -0500
X-MC-Unique: Z3ALHWnuNqy2pGw4S3C_4Q-1
Received: by mail-qk1-f180.google.com with SMTP id de30so13483980qkb.0
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 18:01:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=UyHmHHMj/nP1m6gYTf56XsHeJUC67dOJuDDO5vnojfI=;
	b=3gBdlj2oppkii7QjhUifGcXYbrOdpWrkNmLlCvwMaUtNUxqS+vpeFOzQxUjnyiIdhu
	P21eKFX8xFHkITrq3etgLlybgE2tWJnWlAwaFrVYJs7FFKBvL++t6ue1bmyae4whNIwP
	/BmX98EjmxgmzuGnib9El3NDznTH1kBuX1ImYOQjnWtrYzwT5cp0lru2/3o6mBFTyNyN
	m8wyFN/xd5FhpgEW0VHyZ9+1WVfdEPZyQtoEdNOiu3T9ejW0vhI+/t2e9ujX80DtUsRn
	kk6WGBaLCW8ca8gEfHHRtWeiMG7b8HYQ9JiN4KafpIwPzsBd4QmmIu3dN6qbjjO8iH6i
	Cojg==
X-Gm-Message-State: AOAM5322DXyDTtUrIjz2Xr1uOBMlwdDZvytt3tl6Pda+N+zaUiobCERp
	CyYFQ3ds+Xzh/yqoYNxzriobZA/klB+gx/pG
X-Google-Smtp-Source: ABdhPJwmJiOwfNbUtsQw59Rv5H8nxte1T0Rs9YZ/o4i8YktPpPOI10FcNWPcv9X6ZLdh/5vAG3xYMg==
X-Received: by 2002:a37:9f17:: with SMTP id i23mr19894188qke.452.1637892119182;
	Thu, 25 Nov 2021 18:01:59 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:3212:b95a:c19f:58aa])
	by smtp.gmail.com with ESMTPSA id
	p18sm2553179qtk.54.2021.11.25.18.01.58 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 25 Nov 2021 18:01:58 -0800 (PST)
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<47a91597-fac1-e156-ffa1-514f174ffe36@slint.fr>
Message-ID: <52d9d2ac-c3ad-cb3a-d24d-2ffcd3a19e39@gmail.com>
Date: Thu, 25 Nov 2021 21:01:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <47a91597-fac1-e156-ffa1-514f174ffe36@slint.fr>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gRGlkaWVyLApJcyB0aGlzIGNvbW1hbmQgbmVjZXNzYXJ5OjoKZG90bmV3wqAob3LCoGRv
dC1uZXctZ3RrwqBpbsKgYcKgZ3JhcGhpY2FswqBlbnZpcm9ubWVudCkuCkkgYW0gdW5kZXIgdGhl
IGltcHJlc3Npb24gdGhhdCBpc3N1aW5nIHRoaXMgY29tbWFuZCB3b3VsZCBvdmVycmlkZSBteSAK
Y3VzdG9taXplZCBzZXR0aW5ncy4gQW0gSSBjb3JyZWN0PwpDaGVlcnMsCklicmFoaW0KCk9uIDEx
LzI1LzIxIDg6MDUgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gSGkgSWJyYWhpbSBhbmQgQWxsLAo+Cj4geXQtZGxwIGlzIG5vdyBwcm92aWRlZCBmb3IgU2xp
bnQuCj4KPiBJIGFtIGxpdHRsZSBsYXRlIGJlY2F1c2UgSSB0b29rIHRoaXMgb2NjYXNpb24gdG8g
dXBncmFkZSBmZm1wZWcsIG1wdiAKPiBhbmQgdmxjLiBtcHYgbm93IHVzZXMgeXQtZGxwIGFzIGRv
d25sb2FkZXIgaWYgYXZhaWxhYmxlLgo+Cj4gVG8ga25vdyBtb3JlOgo+IGh0dHBzOi8vd3d3LmZy
ZWVsaXN0cy5vcmcvcG9zdC9zbGludC9hdWRpby1hbmQtdmlkZW8tcGFja2FnZXMtdXBncmFkZWQK
Pgo+IENoZWVycywKPiBEaWRpZXIKPgo+IExlIDIyLzExLzIwMjEgw6AgMTY6NTAsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSGVsbG8gZnJpZW5kcywK
Pj4KPj4gSSBhbSB3b25kZXJpbmcgaWYgdGhlcmUgYXJlIGdvb2QgYXBwbGljYXRpb25zIGZvciBk
b3dubG9hZGluZyBmcm9tIAo+PiB5b3V0dWJlIHRoYXQgd29ya3Mgd2VsbCB3aXRoIGxpbnV4ISBJ
IGFtIGxvb2tpbmcgZm9yIHNvbWV0aGluZyAKPj4gc2ltaWxhciB0byBQb250ZSdzIG1lZGlhIGRv
d25sb2FkZXIgd2hpY2ggd29ya3Mgd2VsbCB3aXRoIHdpbmRvd3MgCj4+IHNjcmVlbiByZWFkZXJz
LiBJcyB0aGVyZSBzdWNoIGFuIGFwcD8KPj4KPj4gVGhlIHNlY29uZCBhcHBsaWNhdGlvbiBJIGFt
IGhvcGluZyB0byBmaW5kIGlzIGEgZ29vZCB3ZWF0aGVyIGFwcC4gSSAKPj4gdHJpZWQgdG8gdGhl
IHdlYXRoZXIgb24gdGhlIHRlcm1pbmFsIGFuZCBkaWQgbm90IGxpa2UgaXQgYXQgYWxsLiBTbywg
Cj4+IEkgYW0gaG9waW5nIHRvIGZpbmQgYSBiZXR0ZXIgYWx0ZXJuYXRpdmUgdGhhdCB3b3JrcyBv
biB0aGUgZ3VpLgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IElicmFoaW0KPgo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

