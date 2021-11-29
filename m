Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC66461B08
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 16:34:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638200055;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FuYvSjIN/2CuEWzuiA4chK03mGrAHXtQU2g9jNWdnNE=;
	b=S2fSOr44vwaKOuNXjOFuhJ5EBUuaeSp1ncCGofGKktqQYYrHpUA6KZtooUQG0tdeJI+CMl
	iQn/VaTk9t0KIkjktX9VP0tpGxlvJZfKlXiphR+iPzKsNNhbtBxvUjsGkYtUG1xJurweUK
	IDqMUWrt4DT0OCBPuLdsNv3rFTbj8Vc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-567-KzuovsQdMJm5HOHzV0cQgg-1; Mon, 29 Nov 2021 10:34:11 -0500
X-MC-Unique: KzuovsQdMJm5HOHzV0cQgg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DC68F100D850;
	Mon, 29 Nov 2021 15:34:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C466045D6A;
	Mon, 29 Nov 2021 15:34:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 964934BB7C;
	Mon, 29 Nov 2021 15:34:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATFY4Bj011457 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 10:34:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0F3DB401E54; Mon, 29 Nov 2021 15:34:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BADD401E2D
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:34:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E660C181E060
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:34:03 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-2--v4pANMvNE-tQzdWC_tU0w-1; Mon, 29 Nov 2021 10:34:02 -0500
X-MC-Unique: -v4pANMvNE-tQzdWC_tU0w-1
Received: by mail-wm1-f46.google.com with SMTP id
	p3-20020a05600c1d8300b003334fab53afso17151503wms.3
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 07:34:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=pxloKkUXnLF0kFyGPFdlgDwXgmI3sfGXHuwkMT4pUSI=;
	b=xBkhgk0IGANtlJUOz+PfKX6AfUhxZAWplCyqYzW8nZ9JKiolGpyDulGf/CFtKy+urE
	BHMD8gX+a0UbxGlloKnmyib7lD6UEHf4B6aTsI6RR7Dp+dYMJ8/Z7umSI4cfDL5jmflu
	9oDXVX5OAUd5AKE7WaquqhUVh+RgTT869vwya63MmOBt/N6Lvw7EoLTga7TUrvHu+dkJ
	oswr0nR6iqQ4Q6zEk3ljjZYxjXWlPTcEgnAENHzaEmxnH1TLBNBzDfzfkKBqRF6E95Av
	oGtKUTBHHoctuCpinj5YqFhPS78k9nig9k5ZlO17GfcHqX2xumXBLuVIpeNUhsXQ+97W
	nV9g==
X-Gm-Message-State: AOAM533MzFShorEmYqTd0EKCzwsq6rOaQ4Zif8T0Gby8uvWBjwrgDJf7
	Eki8A4g6EUvvIqHHjvPju/169Qtk15DSDw==
X-Google-Smtp-Source: ABdhPJxKagFAlz0iisxiOeuIGsvKO8CGpPVe+T7D5TuSstqdsXOWGH0q+aFoeGGhEX7Rr382VQ5+zw==
X-Received: by 2002:a05:600c:3788:: with SMTP id
	o8mr36872143wmr.82.1638200040516; 
	Mon, 29 Nov 2021 07:34:00 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	h18sm15485123wre.46.2021.11.29.07.33.59 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 07:34:00 -0800 (PST)
Message-ID: <796d5f93-a481-73f7-3347-e74682da523d@gmail.com>
Date: Mon, 29 Nov 2021 15:34:10 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: --force-renderer-accessibility not working lately
To: blinux-list@redhat.com
References: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
In-Reply-To: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U28uLi4KCgoxLiBPcGVuIHVwIC5iYXNocmMgKGlmIHlvdSdyZSB1c2luZyBiYXNoLCBJJ20gbm90
IHN1cmUgd2hhdCBpdCBpcyBmb3IgCnRjc2gvenNoL2Zpc2gvZXRjKQoKCjIuIEFkZCB0aGlzIGxp
bmUgYXQgdGhlIGVuZC4gSSBwdXQgaXQgYWZ0ZXIgdGhlIHZlcnkgZW5kIG9mIHRoZSBmaWxlLCAK
d2l0aCBhIGxpbmUgYnJlYWsgdG8gc2VwZXJhdGUgZXhwb3J0aW5nIHZhcmlhYmxlcyB0byBtYWtl
IGl0IGVhc2llciB0byAKcmVhZC4gUHV0IHRoZSBmb2xsb3dpbmcgaW4geW91ciAuYmFzaHJjIGFu
ZCBzYXZlIGl0CgpleHBvcnQgQUNDRVNTSUJJTElUWV9FTkFCTEVEPTEKCgpTYXZlIGl0LCBhbmQg
b3BlbiB1cCBhIHRlcm1pbmFsLCBhbmQgY2hlY2sgdGhlIHZhcmlhYmxlcyB3aXRoIGxpc3R2YXJz
CgoKWW91IHNob3VsZCBzZWUgQUNDRVNTSUJJTElUWV9FTkFCTEVEPTEgaW4gdGhlIGxpc3QuIE5v
dywgdHJ5IHRoZSAKLS1mb3JjZS1yZW5kZXJlci1hY2Nlc3NpYmlsaXR5wqAgZmxhZyBhZ2FpbgoK
Ck9uIDExLzI5LzIxIDE1OjEzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+IEhpIGFsbCwKPgo+Cj4gSSBoYXZlIHRyaWVkIHRoaXMgaW4gYm90aCBTbGludCBhbmQg
RmVkb3JhLCBhbmQgSSd2ZSBub3QgaGFkIGFueSBsdWNrIAo+IG1ha2luZyB0aGUgLS1mb3JjZS1y
ZW5kZXJlci1hY2Nlc3NpYmlsaXR5IGZsYWcgd29yayB3aXRoIGVpdGhlciAKPiBHb29nbGUtQ2hy
b21lIG9yIFNreXBlLCBib3RoIGFwcGxpY2F0aW9ucyBmb3Igd2hpY2ggdGhpcyBmbGFnIHVzZSB0
byAKPiB3b3JrIHZlcnkgd2VsbCBpbiB0aGUgcGFzdC4KPgo+Cj4gQW0gSSBtaXNzaW5nIHNvbWV0
aGluZywgb3IgYW0gSSBqdXN0IG91dCBvZiBsdWNrIGhlcmUuCj4KPgo+IFVuZm9ydHVuYXRlbHks
IEkgYWN0dWFsbHkgbmVlZCB0aGlzIHRvIHdvcmssIG90aGVyd2lzZSwgSSdsbCBqdXN0IGhhdmUg
Cj4gdG8gdXNlIHRoZSBNYWNCb29rIHRvIGRvIG15IGpvYi4KPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

