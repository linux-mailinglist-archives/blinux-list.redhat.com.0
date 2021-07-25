Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E19E33D4E55
	for <lists+blinux-list@lfdr.de>; Sun, 25 Jul 2021 17:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627228087;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l0N8P5TXdUj/PgXC6AgMS928ZZhsbxG0qIQocEUBLsE=;
	b=KZqj66D5CG3eKEvhzonSQfokgzEGTIxH7Hg5EUAC912PEiyxQZ++mmAjo7gqdzhVIh9Xzc
	k1cYmwmux8oqi9xtYXgMZJfChIp+QBZEVQrCKJuzAYnIccttxYffkqM9VaKlWYnbeRWZ7L
	yahtovWV+zXUFNA5aLxBTd4MKiebUGI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-pBchrFTRNDC-KEzU-koNCg-1; Sun, 25 Jul 2021 11:48:06 -0400
X-MC-Unique: pBchrFTRNDC-KEzU-koNCg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46FF810066E6;
	Sun, 25 Jul 2021 15:48:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4A7F19C87;
	Sun, 25 Jul 2021 15:47:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 73B1E180BAB1;
	Sun, 25 Jul 2021 15:47:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16PFlgB2010073 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Jul 2021 11:47:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C1F7C100320D; Sun, 25 Jul 2021 15:47:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BDB4D1111452
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 15:47:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C42BC858286
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 15:47:39 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-43-hRrc89zLOmuCUJYgT7YXHw-1; Sun, 25 Jul 2021 11:47:34 -0400
X-MC-Unique: hRrc89zLOmuCUJYgT7YXHw-1
Received: by mail-wr1-f42.google.com with SMTP id z7so7890538wrn.11
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 08:47:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=vDB2+ztj0t4xboOSx0F01LqQor92aUR1h5FjSY5ZUqQ=;
	b=TcW/LZdLa/JwjH9wx4pcy2Kf+PWVsBO7SFJtTqxVKz2Fsp+bvxdGCCVtIjjRHczI8+
	OkLZeuelbWii3TRAJfy8OT3Zy9ugtEge3xv6VPglLFhwnJ8wK7B6+5LGDCsyAO9K/YAP
	DaORbR7ngoOdg1F5Ja6/El+dz9e6jKvAh2ZQ7o38CDb4fUiUu0C6ClAqK2BcZq4RII90
	ZtY5tnEn4QcMonRtRJXEIpRk/cKXkn+M4nqmItacxvgY+KxpblAgLGkA2qNfJyv11PDF
	UeYuIob3Vh5IL7A8oMp0hKyp0IO9jQHNDJivB//mPZPf8wo63h/3n8JyGGJBKPf7DW0z
	R92g==
X-Gm-Message-State: AOAM532KnXNeFdXqrKDUrXpKgamIalkm9LRnRjhvhJnZpRhZAx7okWgf
	LmLrdVCJ+loa7lW4hRbLVxFZqTr1flop3w==
X-Google-Smtp-Source: ABdhPJxG/zt0tNEsbSBiYySd6MVJ8PbGN4R+KAeQ1pHqXV3OsazEvJEusbhP/FexZ7/mmolEGmg4Kw==
X-Received: by 2002:adf:f44d:: with SMTP id f13mr15113322wrp.353.1627228053458;
	Sun, 25 Jul 2021 08:47:33 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.105.92])
	by smtp.gmail.com with ESMTPSA id o17sm683510wru.11.2021.07.25.08.47.31
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 25 Jul 2021 08:47:32 -0700 (PDT)
Subject: Re: Flatpak on Slint
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c7b551f8-499a-1ecc-f221-387de0801c63@gmail.com>
	<2c34c816-a1e1-7a47-5bca-f35884279da3@slint.fr>
Message-ID: <b8745367-70ef-4e77-60c7-cfb87abb4432@gmail.com>
Date: Sun, 25 Jul 2021 17:47:29 +0200
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgZXZlcnlvbmUsCgoKSSBmaW5kIG15c2VsZiB3aXRoIGFuIGludGVyZXN0aW5nIHByb2JsZW0u
CgoKV2hlbiBJIG9wZW4gQ2F3YmlyZCwgKGEgZmxhdHBhaykgZnJvbSB0aGUgTWF0ZSBkZXNrdG9w
LCBpdCB3b3JrcyBqdXN0IApmaW5lLiBXaGVuIEkgdHJ5IHRoZSBzYW1lIGZyb20gRmx1eGJveCwg
dGhlIHN5c3RlbSBqdXN0IHNpdHMgdGhlcmUgYW5kIAp0aGVyZSBpcyBub3RoaW5nIEkgY2FuIGRv
IGJ1dCBwb3dlciBpdCBkb3duLCBvciByZWJvb3QgZnJvbSBhIHR0eS4KCgpBbHNvLCBJIGluc3Rh
bGxlZCBTa3lwZSwgKGFsc28gYSBmbGF0cGFrKSBhbmQgZGlkIGFkZCAKLS1mb3JjZS1yZW5kZXJl
ci1hY2Nlc3NpYmlsaXR5IGZsYWcgaW4gdGhlIE1hdGUgTWFpbi1NZW51IGFwcGxpY2F0aW9uLiBJ
IApjYW4gcnVuIHRoZSBhcHAgaW4gRmx1eGJveCwgYnV0IGhlbGwgaWYgSSBjYW4gZmlndXJlIGhv
dyB0byBhZGQgdGhlIAotLWZvcmNlLXJlbmRlcmVyLWFjY2Vzc2liaWxpdHkgZmxhZyB0byBpdC4K
CgpJIGFtIGFsc28gdHJ5aW5nIHRvIGJpbmQgU2t5cGUgdG8gYSBrZXlib2FyZCBzaG9ydGN1dC4g
SSB1bmRlcnN0YW5kIGhvdyAKdGhlIC5mbHV4Ym94L2tleXMgZmlsZSB3b3JrLCBidXQgaGVsbCBp
ZiBJIGNhbiBtYWtlIHNreXBlIGxhdW5jaCB3aXRoIAp0aGUgZmxhZy4KCgpXYXJtIHJlZ2FyZHMs
CgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IHVzaW5nIFRodW5kZXJiaXJkIGZyb20gU2xpbnQKCk9u
IDcvMjQvMjEgNDo1MyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPiBIaSBCcmFuZHQsCj4KPiBJIG5ldmVyIHVzZWQgZmxhdHBhayBvciB0d2l0dGVyLCBob3dl
dmVyLi4uCj4KPiBtYXliZSBhIHBvc3QgaW5zdGFsbGF0aW9uIGNvbmZpZ3VyYXRpb24gaXMgbmVl
ZGVkLCBhcyBpbmRpY2F0ZWQgaW46Cj4gaHR0cHM6Ly9zbGFja2J1aWxkcy5vcmcvc2xhY2tidWls
ZHMvMTQuMi9kZXNrdG9wL2ZsYXRwYWsvUkVBRE1FCj4KPiBJZiB0aGlzIGRvZXNuJ3QgaGVscCwg
cGxlYXNlIHBvc3QgdGhlIGV4YWN0IHN0ZXBzIHlvdSB0b29rIHRvIGluc3RhbGwgCj4gZmxhdHBh
awo+IHRoZW4gY2F3YmlyZCBhbmQgc3RhcnQgY2F3YmlyZC4KPgo+IFRoZW4gSSdsbCB0cnkgdG8g
cmVwcm9kdWNlcyBsYXRlciB0b2RheS4KPgo+IENoZWVycywKPgo+IERpZGllcgo+IC0tIAo+IERp
ZGllciBTcGFpZXIKPgo+Cj4gTGUgMjQvMDcvMjAyMSDDoCAxNjoyNywgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBIaSBhbGwsCj4+Cj4+Cj4+IEkgaW5z
dGFsbGVkIGZsYXRwYWsgb24gbXkgU2xpbnQgaW5zdGFsbGF0aW9uLCBmb3IgdGhlIHNpbXBsZSBy
ZWFzb24sIAo+PiB0aGVyZSBhcmUgbm8gdXAgdG8gZGF0ZSBUd2l0dGVyIGNsaWVudHMgdGhhdCBJ
IGNhbiBmaW5kLgo+Pgo+Pgo+PiBJIGxvb2tlZCBhdCB0aGUgU2xhY2tidWlsZHMsIGJ1dCBub3Ro
aW5nLiBDYXdiaXJkLCBteSBmYXZvcml0ZSBMaW51eCAKPj4gY2xpZW50LCBmb3Igbm93LCBpcyBh
dmFpbGFibGUgYXMgYSBmbGF0cGFrLCBidXQgd2hlbiBJIHRyeSBhbmQgcnVuIAo+PiBpdCwgSSBn
ZXQgYSBicm9rZW4gUGlwZSBlcnJvci4gQ2FuIGFueW9uZSBoZWxwIHdpdGggdGhpcyBpc3N1ZT8K
Pj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

