Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 21D7B2A5A75
	for <lists+blinux-list@lfdr.de>; Wed,  4 Nov 2020 00:17:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604445427;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=38XXGW9ho/Fd5eQv/4IrliFUXy/flWUh8f0UWXqua6c=;
	b=QJUh2BDtyB1Jqn9iAD5HmbeeonvfPmZOo7sibgbzgHXJRjC9Nvh2sX8zcTIGSj6XcBxXJa
	8z7n/wcP4PHdaSiuBjT6EUlmeNOuD/LZT3zJzwMBgrRsrqawCdXT+bM528mBB1KigRqyYz
	NHuuWEceQECvdcbMWkCdCbNDjNxLoHQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-538-pR7-rxQyNKqZSXOsqMFiKA-1; Tue, 03 Nov 2020 18:17:06 -0500
X-MC-Unique: pR7-rxQyNKqZSXOsqMFiKA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 402971868431;
	Tue,  3 Nov 2020 23:17:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC4725D9DC;
	Tue,  3 Nov 2020 23:16:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 617A5180B658;
	Tue,  3 Nov 2020 23:16:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A3NGlui029484 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 18:16:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 867931134CBE; Tue,  3 Nov 2020 23:16:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82BB2110DBFD
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 23:16:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6BA628007D9
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 23:16:45 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-77-rYf03XqZNA-IUbO6tKF0OA-1; Tue, 03 Nov 2020 18:16:42 -0500
X-MC-Unique: rYf03XqZNA-IUbO6tKF0OA-1
Received: by mail-ot1-f52.google.com with SMTP id b2so17611444ots.5
	for <blinux-list@redhat.com>; Tue, 03 Nov 2020 15:16:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=hOA3QIe5LDVaHU0pas/IQuvo+jEIP3+HRvqmmAqWA0k=;
	b=hzixeqrY6JITxHMTPGVzuzqPHaz2+rHo3hlWmyIyhSkJrnmeZWHz+kSN8eh6UThHnd
	jDXFVjock6DIIj2hqTmaCQCKPUh1X13lLSCCkGe5u29Em4ugx8y7uBJWUAouua9wu3FI
	l+RWUWgdgBprEbsXJDxt3P3mRSF8wfOsbbp1wLck5ejdLHgtitpPMWBPY+q4irdQAVm2
	NkqCmMUC9ZyaZKSMBOIr7Ksza1WBOZq5IE5wAep9bk3UWDN6EL3vkqqCSBi9+Ky5x3K9
	rTD7crLBXtRhW2KkNbK4bB7HRan4MIsLhvkVjTEuc6Zy68DIs+CosnPx5KEuWzfn+hHR
	kLRQ==
X-Gm-Message-State: AOAM5314UKeByayvhIq55NS6iWDB3xIFdiryLTB2jgwTmzRBPFQhUxMu
	zn5gce35aoEpILBjr5DkBCCUH0Sehra0Sg==
X-Google-Smtp-Source: ABdhPJw7Ika+kDfy2HWRrOj/7j4P8j89kINewsfopWgiTK6vjk2mEdX/lTglElgNag1HHYe7EPXaRQ==
X-Received: by 2002:a9d:3d3:: with SMTP id f77mr1741998otf.125.1604445401294; 
	Tue, 03 Nov 2020 15:16:41 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:8c7f:b214:116c:ac94?
	([2601:3c2:8200:9360:8c7f:b214:116c:ac94])
	by smtp.gmail.com with ESMTPSA id k15sm80099oor.11.2020.11.03.15.16.40
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Nov 2020 15:16:40 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: arch linux and broadcom
Date: Tue, 3 Nov 2020 17:16:39 -0600
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
	<25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
Message-Id: <ED51FB55-7639-4602-BD6F-FD578CF2C72A@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0A3NGlui029484
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgaXMgYSBkZWxsIHRvd2VyLCBJIGtub3cgdGhhdCBtdWNoLgoKPiBPbiBOb3YgMywgMjAyMCwg
YXQgMjo0MiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gdG8gc2VlLCB3aGV0aGVyIHlvdSBuZWVkIGRyaXZl
cnMgb3Igbm90IGkgbmVlZCB0byBsb29rIGF0IHlvdXIgbHMtcGNpIG91dHB1dC4KPiBvciB5b3Ug
Y2FuIHByb3ZpZGUgeW91ciBtb2RlbCBpZiBpdCdzIGEgbGFwdG9wLgo+IAo+IDAzLjExLjIwMjAg
MjM6MDQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g0L/QuNGI0LXRgjoKPj4g
SSB3ZW50IHRoZXJlLCBidXQgZmFpbGVkIHRvIHVuZGVyc3RhbmQgbXVjaC4gIEl0IHdhcyBzdWdn
ZXN0ZWQgb25lIGNvdWxkIGdvIGdldCBkcml2ZXJzLCBidXQgaG93IG1pZ2h0IHRoaXMgYmUgZG9u
ZSBpZiB0aGUgbWFjaGluZSBjYW5ub3QgZ2V0IG9uIHRoZSBuZXQ/Cj4+IAo+Pj4gT24gTm92IDMs
IDIwMjAsIGF0IDI6MDIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4gCj4+PiBoZWxsbyBjYW4geW91IHByb3Zp
ZGUgbHMtcGNpIG91dHB1dC4KPj4+IGRpZCB5b3UgbG9vayBvbiB0aGUgYXJjaHdpa2k/Cj4+PiAK
Pj4+IDAzLjExLjIwMjAgMjI6NTMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
0L/QuNGI0LXRgjoKPj4+PiBJIGdvdCBhcmNoIG9uIGEgdXNiIHN0aWNrLgo+Pj4+IEFmdGVyIGJv
b3RpbmcgYW5kIHVzaW5nIGFycm93IGRvd24sIHRoZW4gZW50ZXIsIGFyY2ggY2FtZSB1cCB0YWxr
aW5nLgo+Pj4+IEJ1dCBldmVuIHRob3VnaCB0aGVyZSBpcyBhbiBldGhlcm5ldCBjYWJsZSwgSSBj
YW5ub3QgZ2V0IG9uIHRoZSBuZXQuCj4+Pj4gTmV2ZXIgaXMgdGhpcyBhIHByb2JsZW0gd2l0aCB1
YnVudHUgb3IgcG9wIG9zIG9yIHdpdGggZmVkb3JhLgo+Pj4+IEFueW9uZSBhd2FyZSBvZiBhIHdh
eSBvZiBnZXR0aW5nIG9uIHRoZSBuZXQ/Cj4+Pj4gSSBhbHNvIGhhdmUgYSB1IHMgYiB3aXJlbGVz
cyB3aWZpIGFkYXB0b3IsIGJ1dCB3aXRoIGFyY2gsIG5vdCBzdXJlIHdoYXQgdG8gZG8uCj4+Pj4g
Cj4+Pj4gCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pj4gCj4+PiAtLSAKPj4+IFNpbmNlcmVseSwgQWxleGFuZGVyLgo+Pj4gCj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL3d3
dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gCj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IC0tIAo+IFNpbmNlcmVseSwg
QWxleGFuZGVyLgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

