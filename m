Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6D8AD3D1744
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 21:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626897202;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3m3Rz5twpYeRXpHk5uNo/XET8vb4hoQhpzfEQSXOSg8=;
	b=do0yCVH+ZjFomFuw89/w/d8W3cJrEjtNBzCXGTHqhcRkiaoaYxY6vvlIcUEMdOuqhxy/O4
	FwWehHONjS/8FgZ38HQz66yCr9Oq3vckIcg5pS6+eT5H3GA++ZeEvr1emLjhTZG5yYcN24
	vLzYzsbpRMTxa2iRnRfVONa8zLFDkT8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-Gg7cI-6LM0aaeXoZFRNWiw-1; Wed, 21 Jul 2021 15:53:20 -0400
X-MC-Unique: Gg7cI-6LM0aaeXoZFRNWiw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A45BF10086CE;
	Wed, 21 Jul 2021 19:53:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38B3A5D6D1;
	Wed, 21 Jul 2021 19:53:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 101AD4BB7C;
	Wed, 21 Jul 2021 19:53:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LJr2HG015913 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 15:53:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F2E8320D6985; Wed, 21 Jul 2021 19:53:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC0CB20D6989
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 19:52:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA00118A01AC
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 19:52:58 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
	[209.85.218.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-335-jxWGqfViNaK1Nb_XwDwV6g-1; Wed, 21 Jul 2021 15:52:55 -0400
X-MC-Unique: jxWGqfViNaK1Nb_XwDwV6g-1
Received: by mail-ej1-f54.google.com with SMTP id nd37so4997796ejc.3
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 12:52:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=I7CjZ6CbwhAyY7LMjF579Bd3+YBGvMxzIDkMiieUHSk=;
	b=n7Ip7xUyH+ivntvJcopqQMcmWpbzgSa6jgk4/ST5SC+3U2dYeHm4nVZ65CCqKIA7mP
	+HA5vUquDqNqYsc3+62xefLeI6OqJ35k7yZbkdS0w2TPQ7Us8Q+cTQj2XsnLykOucgZU
	fuvXSzZFaBHgOOr7de8tSHc6mg3abhnnaLJ0u/qAnkBFje0An809LlvR+5vCSQV8YI07
	oZZGK6g6Y2CdyXVGxYHup5Ao45dModI+X5uy7RCmPwKBld+yokiUid1raBCT9wV9aeiC
	wyyL0FxpqcbnP92q8BFcgNoy+Kg/CxLK6QPHOehbxp42P7akwHrwmrTHIFwbNlAULqvL
	rA/Q==
X-Gm-Message-State: AOAM530EQxPiZGz1zmOihL6+sIZD0T0hSoofZkU0QbcZpaCSt3T7G6ND
	3oiDr6//cHGpT0m3EPklORLSOBPqjxQyog==
X-Google-Smtp-Source: ABdhPJzOOko2XnZs8FrC80bFq/NEC08lFmUmbKFY+Z9yHqXAW5ymTFgNpJLxJsmNejQToaOHf4qZpw==
X-Received: by 2002:a17:907:9602:: with SMTP id
	gb2mr40377297ejc.354.1626897174415; 
	Wed, 21 Jul 2021 12:52:54 -0700 (PDT)
Received: from [192.168.76.145] ([197.185.98.226])
	by smtp.gmail.com with ESMTPSA id e7sm6325184edk.3.2021.07.21.12.52.52
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 12:52:53 -0700 (PDT)
Subject: Re: Twitter, again
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4099494d-9a2a-750d-be70-ddf42bf7504d@gmail.com>
	<alpine.NEB.2.23.451.2107210906290.23995@panix1.panix.com>
	<alpine.DEB.2.11.2107211620400.7560@debian.work>
Message-ID: <5a0ece74-7eef-6fe4-39a0-f6f98067e92a@gmail.com>
Date: Wed, 21 Jul 2021 21:52:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.11.2107211620400.7560@debian.work>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgYWxsLAoKCkkgZm91bmQgY2F3YmlyZCBmb3IgQXJjaCB0byBiZSBzZW1pIHVzYWJsZS4gSXQg
aXMgYSBHVUkgYXBwbGljYXRpb24sIGJ1dCAKYmVpbmcgYSBwcmFnbWF0aXN0LCBJIHdpbGwgdXNl
IHdoYXRldmVyIGRvZXMgdGhlIGpvYi4gVW5mb3J0dW5hdGVseSBJIAphY3R1YWxseSBuZWVkIHR3
aXR0ZXIgZm9yIHNvbWUgb2YgbXkgd29yaywgc28gSSB3aWxsIGhhdmUgdG8gc2VlIGlmIApjYXdi
aXJkIGlzIGF2YWlsYWJsZSBpbiBTbGludC4gSSBsb3ZlIGJvdGggQXJjaCBhbmQgU2xpbnQsIGJ1
dCBJIGhhdmUgdG8gCnVzZSB3aGF0ZXZlciB3b3JrcyBmb3IgbXkgc2l0dWF0aW9uLgoKV2FybSBy
ZWdhcmRzLAoKQnJhbmR0IFN0ZWVua2FtcAoKU2VudCBmcm9tIFRodW5kZXJiaXJkIG9uICBBcmNo
IExpbnV4CgpPbiA3LzIxLzIxIDM6NDkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4gT24gV2VkLCAyMSBKdWwgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPgo+PiBPeXN0dHllciBoYXMgYmVlbiBhdmFpbGFibGUgZm9y
IHNvbWUgdGltZSBub3cgYW5kIHBlcmwgaXMgdXNlZCB0byBydW4gCj4+IGl0Lgo+PiBUaGUgZW1h
Y3MgZW52aXJvbm1lbnQgaGFzIHR0eXR0ZXIgYXZhaWxhYmxlLCBhbmQgcHl0aG9uIGhhcwo+PiBy
YWluYm93LXR3aXR0ZXIgYXZhaWxhYmxlLgo+Cj4gTm90ZSB0aGF0IE95c3R0eWVyIGlzIHRoZSBz
dWNjZXNzb3IgdG8gVFRZdHRlciwgYm90aCBpbiBQZXJsLiBUVFl0dGVyIAo+IGhhcyBub3QgYmVl
biBkZXZlbG9wZWQgc2luY2UgMjAxMiBhbmQgdGhlcmUncyBwcm9iYWJseSBubyBnb29kIHJlYXNv
biAKPiB0byB1c2UgaXQgYW55bW9yZS4KPgo+IE95c3R0eWVyIGl0c2VsZiBoYXMgbm90IHNlZW4g
YW55IGNvbW1pdHMgc2luY2UgMjAxOCwgd2hpY2ggaXMgYSBiaXQgCj4gY29uY2VybmluZy4KPgo+
IE1vcmUgYW5ub3lpbmcgaXMgdGhhdCBhbGwgaW5zdGFsbHMgc2hvdyB1cCBhcyB0aGUgc2FtZSBh
cHAsIGFuZCAKPiBiZWNhdXNlIG9mIFR3aXR0ZXIgc3R1cGlkbmVzcywgYWxsIGNvdW50IGluIHRl
cm1zIG9mIGRhaWx5IHF1b3RhcywgCj4gZXRjLsKgIFNvIGl0J3MgY29tbW9uIHRvIGJlIHVuYWJs
ZSB0byBwb3N0IGR1ZSB0byBxdW90YXMgaGF2aW5nIGJlZW4gCj4gZXhjZWVkZWQgd2hlbiB5b3Un
dmUgbm90IHBvc3RlZCBhbnl0aGluZyB0b2RheS4KPgo+IEknbGwgc3BhcmUgeW91IG15IHJhbnQg
YWJvdXQgVHdpdHRlciBhbmQgdGhlIHdheSB0aGV5IG1hbmFnZSB0aGVpciAKPiBBUEkuIFRoZSBv
bmUtbGluZSBzdW1tYXJ5IG9mIGl0IGlzIHRoYXQgdGhleSBzaG91bGQgY2hhcmdlICp1c2Vycyog
YSAKPiBub21pbmFsIGZlZSBmb3IgQVBJIGFjY2VzcyBhbmQgbGVhdmUgdGhlIHBvb3IgZGV2ZWxv
cGVycyBhbG9uZS4KPgo+IEkndmUgbm90IHRyaWVkIFJhaW5ib3dTdHJlYW0sIEkndmUgYmVlbiBt
ZWFuaW5nIHRvLsKgIEF0IGxlYXN0IGl0IHNlZW1zIAo+IHRvIGJlIHVuZGVyIGFjdGl2ZSBkZXZl
bG9wbWVudC4KPgo+IFRoZXJlIGFyZSBzb21lIG90aGVyIG9wdGlvbnMgb3V0IHRoZXJlLsKgIFNl
YXJjaGluZyB5b3VyIGZhdm91cml0ZSAKPiBwYWNrYWdlIG1hbmFnZXIgd2lsbCBsaWtlbHkgdHVy
biB1cCBzb21lLgo+Cj4gQ2hlZXJzLAo+IEdlb2ZmLgo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

