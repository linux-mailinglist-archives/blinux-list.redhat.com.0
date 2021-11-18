Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1E5455E98
	for <lists+blinux-list@lfdr.de>; Thu, 18 Nov 2021 15:51:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637247113;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VR70AB2kS6C7LLibUe5rl554dwk+lIT/8Rh1RpxiQeA=;
	b=APcc95vH621CcEgTzu4JnAViBzMcZuL8h1N6T9fVJZjy2yhsQjc62UDDO2rFy1tkGZtoOD
	vOeXUP0vFg/C4vdCMMNLWw0wB/DWOcRevgj17Sf7pzDZGHv7FoBg1TDlaUM7ZvtJsd724Y
	V2gyxFYfd4MPmrwk9NVIXo2etaVP1Hw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-311-9oX0p6UCMb653ooEZtAo0w-1; Thu, 18 Nov 2021 09:51:49 -0500
X-MC-Unique: 9oX0p6UCMb653ooEZtAo0w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92E9F881D4A;
	Thu, 18 Nov 2021 14:51:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2328519733;
	Thu, 18 Nov 2021 14:51:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 899E91800FE4;
	Thu, 18 Nov 2021 14:51:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AIEkfD2017394 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 09:46:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 03612404727F; Thu, 18 Nov 2021 14:46:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA25A404727E
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 14:46:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D26C3181E067
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 14:46:40 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-536-uR3t00qVOr6BZZ9KAcqaiA-1; Thu, 18 Nov 2021 09:46:38 -0500
X-MC-Unique: uR3t00qVOr6BZZ9KAcqaiA-1
Received: by mail-qt1-f181.google.com with SMTP id n15so6292665qta.0
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 06:46:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=b9KaNzpY4VzlABr347K6RwAtlTcmbaHqLx7QDVEHQhw=;
	b=Ezh4zB8BNw/ewjV0vaUHXQtnxgC8XsOIBJRuYyd1JW0FdN4D7WYazunpxItsOtryVh
	ZnkLaRGYRLmyJ+IjYVHl04chJrPR2chszELftUlPT2iOBnrkf/I+a5IBslF1tZ8OXFA5
	3x8/HDDI1+r5mOU+PvzB7nL0xDvfdLk+X4tBqwce6lTFRE/GTdrlZ+9Ph/hnF3+zHG18
	Hft9wxGyEBOrPb7PkZmJ73wMEn7TKMMaGPKn/I2vvvsbG8sLUeaw9DKmStLrsKb03D5X
	X6h/9mHzIzDOgsp7Wvtl4azshmmjjrEYn1KlJh9TQJbPr1o2nsXnMuFm87Ud+r+CMYcr
	2KsA==
X-Gm-Message-State: AOAM531KXaCICedKbOLsQwRS9l3exLPi/xHwy2ZRHz+wrNpbeecwFzfd
	lzAkwMNlLmiTuRo6RTXEp7fmVUH4+e7+8/8k
X-Google-Smtp-Source: ABdhPJz5vi8yh2d5K+1S1eaG5b8ajpaLxTn3+J2zR/LfE5yStuw2YKZPx2uDFsUtQ8gj9GbGCxkpmg==
X-Received: by 2002:a05:622a:1115:: with SMTP id
	e21mr26315549qty.93.1637246797341; 
	Thu, 18 Nov 2021 06:46:37 -0800 (PST)
Received: from smtpclient.apple ([2601:152:4000:330:2c7a:c9a4:c9a:610e])
	by smtp.gmail.com with ESMTPSA id z8sm1641758qta.50.2021.11.18.06.46.36
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 06:46:36 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: looking for Lennix distribution?
Date: Thu, 18 Nov 2021 09:46:35 -0500
Message-Id: <9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
In-Reply-To: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AIEkfD2017394
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIEt5bGUsCkkgaGF2ZSBleHRyYSBVU0Igc3RpY2tzIGFuZCBTRCBjYXJkcyB0byB0cnkg
RmVkb3JhLiBIb3cgZG8gSSBhY3RpdmF0ZSBTcGVha3VwIHRvIGd1aWRlIG1lIGR1cmluZyBpbnN0
YWxsYXRpb24/IFdoYXQgYXJlIHRoZSBzdGVwcz8KQ2hlZXJzLApJYnJhaGltCgpTZW50IGZyb20g
bXkgaVBob25lCgo+IE9uIE5vdiAxOCwgMjAyMSwgYXQgMTI6MDAgQU0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+
IO+7v0ZlZG9yYSBhbGxvd3MgaW5zdGFsbGF0aW9uIG9uIFVTQiBtZWRpYS4gSSB3YXMgYWxzbyBh
YmxlIHRvIHN0YXJ0IGFuIGluc3RhbGwgdG8gYW4gU0QgY2FyZCBpbnNlcnRlZCBpbnRvIHRoZSBz
bG90IG9uIG15IGNvbXB1dGVyLCBidXQgdGhlIHNsb3Qgd3JpdGVzIHNvIHNsb3cgdGhhdCBJIGNv
dWxkbid0IGdldCBoYWxmd2F5IHRocm91Z2ggdGhlIGluc3RhbGwgaW4gOCBob3Vycywgc28gSSBn
YXZlIHVwIG9uIHRoYXQuIE9uIHRoZSBvdGhlciBoYW5kLCBVU0Igd29ya2VkIHBlcmZlY3RseSwg
Ym90aCBvbiBhIHRodW1iIGRyaXZlIGFuZCB1c2luZyBhIFVTQiBjYXJkIHJlYWRlci4KPiAKPiBZ
ZXMsIEZlZG9yYSBjYW4gYmUgbWFkZSB0byB0YWxrIHF1aXRlIGVhc2lseSByaWdodCBvdXQgb2Yg
dGhlIGJveC4gSSBkaWRuJ3QgdHJ5IEZlZG9yYSBXb3Jrc3RhdGlvbiwgYnV0IEkgZGlkIGdldCBG
ZWRvcmEgTUFURSBDb21waXogd29ya2luZyBmcm9tIHRoZSBzcGlucyBwYWdlLCBhbmQgdGhpcyBp
cyBteSBkYWlseSBkcml2ZXIgbm93LiBJIGRpZCBub3RpY2UgdGhhdCBJIGRpZG4ndCBoYXZlIGFj
Y2VzcyBvbiB0aGUgTUFURSBzcGluIHRvIHRoZSBhbHQrc3VwZXIrcyBzaG9ydGN1dCB0byBzdGFy
dCBPcmNhIG9uIGVpdGhlciB0aGUgbGl2ZSBpbWFnZSBvciBhZnRlciBpbnN0YWxsYXRpb24sIGJ1
dCBlbnRlcmluZyBvcmNhIGluIHRoZSBydW4gd2luZG93IGNlcnRhaW5seSBkb2VzIHdvcmsgaW4g
Ym90aCBjYXNlcywgYW5kIGFsdGhvdWdoIEkgZGlkIG5lZWQgdG8gdGljayB0aGUgYXNzaXN0aXZl
IHRlY2hub2xvZ2llcyBjaGVja2JveCBvbiB0aGUgaW5zdGFsbGVkIE9TLCBJIGRpZG4ndCBoYXZl
IHRvIGRvIHRoaXMgb24gdGhlIGxpdmUgaXNvIHRvIGdhaW4gYWNjZXNzIHRvIGEgc3BlYWtpbmcg
aW5zdGFsbGVyLiBIb3BlIHRoaXMgaGVscHMuCj4gfkt5bGUKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

