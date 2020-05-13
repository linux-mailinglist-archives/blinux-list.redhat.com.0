Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 0EE2A1D11FC
	for <lists+blinux-list@lfdr.de>; Wed, 13 May 2020 13:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589371024;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hNA57ebCn2bW/aKEjuhXgljhR3WD7f4jokkDACTVlsA=;
	b=BUGoWQ0Aj+sZiSaJI/wXrvF2oQUlfqls5mYyON0yLcUWh+NJhwcCuPLmLumVST/fKBnfgf
	yDdQEy8t0mxmC3ugmcDoQed0Je9eKy8LFKyKWsbdVWAbVheotvxZqhxxYIw1ezfyRXWpOI
	4OSetvzTTxZYeRxTKd6wG2sAE94aJ7Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-UNqHCU0pPe6ol_3nSa3kpQ-1; Wed, 13 May 2020 07:57:01 -0400
X-MC-Unique: UNqHCU0pPe6ol_3nSa3kpQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B1BD10506E2;
	Wed, 13 May 2020 11:56:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E77476E9F;
	Wed, 13 May 2020 11:56:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A76221809543;
	Wed, 13 May 2020 11:56:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04DBspZt015632 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 May 2020 07:54:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9829F101556D; Wed, 13 May 2020 11:54:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 944DD101556E
	for <blinux-list@redhat.com>; Wed, 13 May 2020 11:54:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D05DA80028C
	for <blinux-list@redhat.com>; Wed, 13 May 2020 11:54:48 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-442-vdOnGPBuOjGbasvOqWGe2Q-1; Wed, 13 May 2020 07:54:46 -0400
X-MC-Unique: vdOnGPBuOjGbasvOqWGe2Q-1
Received: by mail-oi1-f194.google.com with SMTP id p127so1667166oia.13
	for <blinux-list@redhat.com>; Wed, 13 May 2020 04:54:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=1wfM1nJ9Op8NH21a/4Qo2yAPAqdKDeBQVHAk1GeJWUk=;
	b=Q3UUqOvD1EMWrnqBro44+7zuhHrjE0uE9YLW9LW50xs8RxuYZBzJoE7MVk09gi1NHt
	Yi1Dv06pa2C+ubeSzwPyizxU6nFcizQ3BozVpUUYhWEpOJjJBX6HBuB0g2Cv5vzCGL+4
	AeoeUx87sL8JIg/U9LR5Dk2ryD5491PaHdaeWfKAmydKARXX3dLnAeGOvucl0bJTg5o6
	XuWge2Q/Eg1FiafqLKytaAn3hN94It3jkzB0SK+yZSIrozzUtIefSOVieXyZ5x2h8eKR
	KYy5KqVwpHaoUue3FXSmV6A2oz5Dxu732TUi37WyRkohKtNyA618xwJ6nRLUVV69qOkU
	5oBA==
X-Gm-Message-State: AGi0PublNUG95nJ0Rrs9feNMG+457z9wUGeOweGrxoeiS8Fu3Z2H4Ph6
	J4+HN01VCxKyIa8I8t2uA9oiMCt0
X-Google-Smtp-Source: APiQypLDTTdemzV/bLrDlWOLBqXJiAs0e0E9fAW+knOaoOmaOI8+i7nKMyE08CpjB7L09tQKR0rCeg==
X-Received: by 2002:aca:4386:: with SMTP id
	q128mr26283260oia.150.1589370885263; 
	Wed, 13 May 2020 04:54:45 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:c459:2f58:5ff0:25fb?
	([2601:3c2:8200:9360:c459:2f58:5ff0:25fb])
	by smtp.gmail.com with ESMTPSA id
	d10sm4181901otp.19.2020.05.13.04.54.44 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 May 2020 04:54:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: b s d and orca
Date: Wed, 13 May 2020 06:54:43 -0500
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
Message-Id: <50141057-C016-4A2A-A83D-9C95DD0BC812@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04DBspZt015632
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB0cmllZCBnaG9zdCBiIHMgZC4KV2h5IGRvZXMgVGhlbyBub3QgY2FyZSBhYm91dCB0aGlzIGlk
ZWE/Cgo+IE9uIE1heSAxMywgMjAyMCwgYXQgMTI6NDYgQU0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IERvbuKA
mXQgY291bnQgb24gaXQgZXZlciBiZWluZyB1c2FibGUgb24gT3BlbkJTRC4gVGhlbywgaW4gaGlz
IGluZmluaXRlIHdpc2RvbSwgaGFzIHByZXR0eSBtdWNoIGJsb3duIG9mZiBhbnkgcmVxdWVzdHMg
Zm9yIGFjY2Vzc2liaWxpdHkgZm9yIHRoZSBibGluZCBvbiB0aGF0IHBsYXRmb3JtLiBZb3UgbWln
aHQgaGF2ZSBiZXR0ZXIgbHVjayBvbiBvbmUgb2YgdGhlIG90aGVyIEJTROKAmXMgKGxpa2UgRnJl
ZUJTRCkKPiAKPiBXaGF0IEkgd291bGRu4oCZdCBnaXZlIHRvIGdvIHVwIHRvIENhbmFkYSwga25v
Y2sgb24gVGhlb+KAmXMgZnJvbnQgZG9vciBhbmQgc2hvdmUgYSBsYXB0b3Agd2l0aCBPcGVuQlNE
IGludG8gaGlzIGhhbmRzIGFuZCB0ZWxsIGhpbSB0byBmaXggaXQuIEl0IHdvdWxkIGJlIGEgbGl0
dGxlIGhhcmQgdG8gaWdub3JlIGF0IHRoYXQgcG9pbnQsIGRvbuKAmXQgeW91IHRoaW5rPwo+IAo+
IC1FcmljCj4gCj4gCj4+IE9uIE1heSAxMiwgMjAyMCwgYXQgNzo0MiBBTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
IAo+PiBBbnlvbmUga25vdyBvZiBhIGRpc3RyaWJ1dGlvbiBvZiBiIHMgZCB3aXRoIG9yY2EgaW4g
aXRzIGluc3RhbGxlcj8KPj4gSSBoYWQgbmV2ZXIgdXNlZCBiIHMgZCBiZWZvcmUsIGJ1dCB0aG91
Z2h0IG9mIGdpdmluZyBpdCBhIHRyeS4KPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+PiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

