Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 416F53D488A
	for <lists+blinux-list@lfdr.de>; Sat, 24 Jul 2021 18:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627143058;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=X4CvXX7BBltwSlfDa+S3z3JLCi4Ma8G7JGc644PCX0M=;
	b=SRUbtY0qreKr+bTKRzTeqPs80kuGDAtZaqVYJwyCfglNnHFavoOdbgBpUu44m3eWO7yh4V
	xiZSd49faWg8SmWFRtaq0FfaYUUkwv0LE0/O7yKHGQI4JYX+ep84k3bXA/z6Std9HF7o42
	1IJpRMl0WO+Zsvsw5UYedR029hIHP6Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-257-_613oxqpMkGaPtnMYOb0vg-1; Sat, 24 Jul 2021 12:10:56 -0400
X-MC-Unique: _613oxqpMkGaPtnMYOb0vg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4152363A5;
	Sat, 24 Jul 2021 16:10:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08EAB60C0F;
	Sat, 24 Jul 2021 16:10:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CD66E180BAB1;
	Sat, 24 Jul 2021 16:10:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16OGAYrF030868 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Jul 2021 12:10:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 452592160288; Sat, 24 Jul 2021 16:10:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C3CB2160283
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 16:10:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 640B6101A52C
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 16:10:31 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-425-gAAzin5cNSSL18Fp0a_pvQ-1; Sat, 24 Jul 2021 12:10:28 -0400
X-MC-Unique: gAAzin5cNSSL18Fp0a_pvQ-1
Received: by mail-wm1-f44.google.com with SMTP id
	m20-20020a05600c4f54b029024e75a15716so2508392wmq.2
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 09:10:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=H/g6IRKw9QF2ojvhZAPdhtBac/6JhCSev7x8sFBquwE=;
	b=Aa0D4dpZKl+fG15KzoAPycz+8kGxX86ys1Qx407YKlty/N0YJxK7iunrQ9LSv0Te2M
	e2/ZSYlVBRrZKkw+qr3r20ezcBKOuKamLEd2kTLaQofiS2DNhI0NXYEDAGZr2ecIyYAK
	KK6uouf0e5ZOCAG+AFzZ/ZTKPluXmMlJsWxPsUYZatpOYjvTQ76IZ8gGIi+GZgQNU4Dr
	8Vzr1ksEUuiGVWvdylhWKfjsiXy5NSwp8eD+gSU10pWN9jgLjXYToYLnFvs5PgiMyqEi
	dL0oMl9tTK0RiNECoMZBiQdjOeAFaCL01fQf6tufH4Ua+W4DH9OobXniWzmYXWT8yFmf
	4gVg==
X-Gm-Message-State: AOAM531pekGANElzmZiYztTtvVDvXWmAcfD/RGm0vn1y65KGFbrfieyn
	b4gzZ9rNU8Uy2s8UWjcHH+K5niOfpft7cA==
X-Google-Smtp-Source: ABdhPJwntlnQ9A7LCLSmLJXuMm4eGpP2k23lLhJtt6AEz0ASzGpF58dTLb+v0XE1AyjfiVZQN3wQMw==
X-Received: by 2002:a7b:c944:: with SMTP id i4mr1376633wml.23.1627143027223;
	Sat, 24 Jul 2021 09:10:27 -0700 (PDT)
Received: from smtpclient.apple ([197.185.105.92])
	by smtp.gmail.com with ESMTPSA id
	u2sm29937399wmc.42.2021.07.24.09.10.26 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Jul 2021 09:10:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Flatpak on Slint
Date: Sat, 24 Jul 2021 18:10:23 +0200
References: <c7b551f8-499a-1ecc-f221-387de0801c63@gmail.com>
	<2c34c816-a1e1-7a47-5bca-f35884279da3@slint.fr>
To: blinux-list@redhat.com
In-Reply-To: <2c34c816-a1e1-7a47-5bca-f35884279da3@slint.fr>
Message-Id: <EBFF626D-1A8E-4F82-B837-44A39BB354A2@gmail.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGlkaWVyLAoKSXQgbWlnaHQgaGVscCBpZiBJIGFjdHVhbGx5IFJURk0hCgpXYXJtIHJlZ2Fy
ZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IGZyb20gbXkgTWFjQm9vayBBaXIKCkNvbnRhY3Q6
CgpQaG9uZTogKzI3ICgwKTYwIDUyNSA5MTgxIDx0ZWw6Ly8rMjc2MDUyNTkxODE+CgpFbWFpbDog
YnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5jb20gPG1haWx0bzpicmFuZHQuc3RlZW5rYW1wQGdtYWls
LmNvbT4KClR3aXR0ZXI6IEBicmFuZHRzdGVlbmthbXAgPGh0dHA6Ly93d3cudHdpdHRlci5jb20v
YnJhbmR0c3RlZW5rYW1wPgoKCgoKPiBPbiAyNCBKdWwgMjAyMSwgYXQgMTY6NTMsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3Rl
Ogo+IAo+IEhpIEJyYW5kdCwKPiAKPiBJIG5ldmVyIHVzZWQgZmxhdHBhayBvciB0d2l0dGVyLCBo
b3dldmVyLi4uCj4gCj4gbWF5YmUgYSBwb3N0IGluc3RhbGxhdGlvbiBjb25maWd1cmF0aW9uIGlz
IG5lZWRlZCwgYXMgaW5kaWNhdGVkIGluOgo+IGh0dHBzOi8vc2xhY2tidWlsZHMub3JnL3NsYWNr
YnVpbGRzLzE0LjIvZGVza3RvcC9mbGF0cGFrL1JFQURNRQo+IAo+IElmIHRoaXMgZG9lc24ndCBo
ZWxwLCBwbGVhc2UgcG9zdCB0aGUgZXhhY3Qgc3RlcHMgeW91IHRvb2sgdG8gaW5zdGFsbCBmbGF0
cGFrCj4gdGhlbiBjYXdiaXJkIGFuZCBzdGFydCBjYXdiaXJkLgo+IAo+IFRoZW4gSSdsbCB0cnkg
dG8gcmVwcm9kdWNlcyBsYXRlciB0b2RheS4KPiAKPiBDaGVlcnMsCj4gCj4gRGlkaWVyCj4gLS0K
PiBEaWRpZXIgU3BhaWVyCj4gCj4gCj4gTGUgMjQvMDcvMjAyMSDDoCAxNjoyNywgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+IEhpIGFsbCwKPj4gSSBpbnN0
YWxsZWQgZmxhdHBhayBvbiBteSBTbGludCBpbnN0YWxsYXRpb24sIGZvciB0aGUgc2ltcGxlIHJl
YXNvbiwgdGhlcmUgYXJlIG5vIHVwIHRvIGRhdGUgVHdpdHRlciBjbGllbnRzIHRoYXQgSSBjYW4g
ZmluZC4KPj4gSSBsb29rZWQgYXQgdGhlIFNsYWNrYnVpbGRzLCBidXQgbm90aGluZy4gQ2F3Ymly
ZCwgbXkgZmF2b3JpdGUgTGludXggY2xpZW50LCBmb3Igbm93LCBpcyBhdmFpbGFibGUgYXMgYSBm
bGF0cGFrLCBidXQgd2hlbiBJIHRyeSBhbmQgcnVuIGl0LCBJIGdldCBhIGJyb2tlbiBQaXBlIGVy
cm9yLiBDYW4gYW55b25lIGhlbHAgd2l0aCB0aGlzIGlzc3VlPwo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

