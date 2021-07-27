Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 609953D6B7D
	for <lists+blinux-list@lfdr.de>; Tue, 27 Jul 2021 03:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627348785;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y1GAhL9Dlc07a5zCpQVbs10jN3bZbo48At2OLHElL7o=;
	b=Iw+AeYaggZUU5sXEuL6NVZvyFCqYzSIiB02rKfAUXUjeNN3ZsGfdPADWpFNnLDssTDN8UC
	VhesAl8/oIvX/Msj6+PwQr1JnANzrvo+OlHlkU1VSfHSYunZ2IX4rKJ6Zt6TQ+kwDJ97ti
	RUnc0FDs6m9rN1UIgtPDU8C1DrHUvD8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-oYbMV0jaMu6Or_WL2PQwcA-1; Mon, 26 Jul 2021 21:19:43 -0400
X-MC-Unique: oYbMV0jaMu6Or_WL2PQwcA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03B5D1008063;
	Tue, 27 Jul 2021 01:19:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 475CC60C0F;
	Tue, 27 Jul 2021 01:19:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7C6FA18095C2;
	Tue, 27 Jul 2021 01:19:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16R1JFAq014070 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Jul 2021 21:19:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 86622217B43E; Tue, 27 Jul 2021 01:19:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81E612144B5F
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 01:19:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96E20100E652
	for <blinux-list@redhat.com>; Tue, 27 Jul 2021 01:19:12 +0000 (UTC)
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
	[185.70.40.136]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-36-gWb6NTliOBmbnmUoONytLA-1; Mon, 26 Jul 2021 21:18:12 -0400
X-MC-Unique: gWb6NTliOBmbnmUoONytLA-1
Date: Tue, 27 Jul 2021 01:18:04 +0000
To: blinux-list@redhat.com
Subject: Re: A question about adding keyboard shortcuts in mate
Message-ID: <d40541e2-5f07-ac96-acac-fccb18d3b135@protonmail.com>
In-Reply-To: <CAD_4ddTD8GOVSGL676KxR=MuJv-pHz9et=EzHTLiQhngDhSL4Q@mail.gmail.com>
References: <CAD_4ddTD8GOVSGL676KxR=MuJv-pHz9et=EzHTLiQhngDhSL4Q@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16R1JFAq014070
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5IHRoZXJlLAoKaG1tLCBJJ2QgZmlyc3RseSBhc2ssIGRvZXMgaXQgcmVhbGx5IG1hdHRlcj8K
CkkgbWVhbiwgeW91J3JlIG1vc3QgbGlrZWx5IGdvaW5nIHRvIGF0dGFjaCBmbGFncyB0byB0aGUg
Y29tbWFuZCBhbnl3YXksCnNvIGl0IHNob3VsZG4ndCBiZSBtdWNoIG9mIGFuIGlzc3VlIGlmIE9D
UkRlc2t0b3AgaXMgbm90IHByZXNlbnQgYW1vbmcKdGhlIGluc3RhbGxlZCBhcHBzLgoKSnVzdCBt
YWtlIHN1cmUgaXQncyBwcmVzZW50IGluIGVpdGhlciAvdXNyL2JpbiBvciAvdXNyL2xvY2FsL2Jp
bgphY2NvcmRpbmcgdG8gdGhlIHdheSB5b3UgaW5zdGFsbGVkIGl0IGFuZCBpdCBzaG91bGQgd29y
ayBqdXN0IGZpbmUuCgoKQmVzdCByZWdhcmRzCgoKUmFzdGlzbGF2CgoKRMWIYSAyNS4gNy4gMjAy
MSBvIDE3OjU5IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6
Cj4gSGVsbG8gZXZlcnlvbmUsCj4KPiBGb3IgcmVhc29ucyBsaWtlIGVtYWNzcGVhayBub3QgbGlr
aW5nIHBpcGV3aXJlLCAgYW5kIGxpb3Mgbm90IGxpa2luZyBndGs0LAo+IEkgZGVjaWRlZCB0byBk
byBhIGNsZWFuIGluc3RhbGwgb2YgYXJjaCB3aXRoIE1hdGUgd2l0aCBwdWxzZWF1ZGlvICBhbmQg
bm93Cj4gZXZlcnl0aGluZyB3b3JrcyBhcyBleHBlY3RlZC4KPiBJIGFtIGhhdmluZyBhIHByb2Js
ZW0gdGhvdWdoOiBJIGluc3RhbGxlZCBvY3JkZXNrdG9wLCBidXQgSSBjYW4ndCBzZWVtIHRvCj4g
ZmlndXJlIG91dCBob3cgdG8gYmluZCBhIGtleSBiaW5kaW5nIHRvIHRoZSBjb21tYW5kIG9jcmRl
c2t0b3AuCj4gV2hlbiBJIGdvIGludG8gdGhlIGNvbnRyb2wgY2VudGVyLCBzZWxlY3Qga2V5Ym9h
cmQgc2hvcnRjdXRzIGFuZCBjbGljayBvbgo+IGFkZCwgaXQgZ2l2ZXMgbWUgdGhlIG5hbWUgZmll
bGQsIHdoZXJlIEkgdHlwZSBvY3IgY3VycmVudCB3aW5kb3csIGFuZCB0aGUKPiBjb21tYW5kIGZp
ZWxkLCB3aGVyZSBJIHR5cGUgb2NyZGVza3RvcC4KPiBXaGVuIEkgc2VsZWN0IGJyb3dzZSBhcHBs
aWNhdGlvbnMgdGhvdWdoLCBhbmQgZXZlbiB3aGVuIEkgY2xpY2sgb24gc2hvdyBhbGwKPiBhcHBs
aWNhdGlvbnMsIG9jcmRlc2t0b3AgZG9lc24ndCBzaG93IHVwLgo+IEFueSBpZGVhIGhvdyB0byBm
aXggdGhpcz8KPiBCZXN0IHJlZ2FyZHMuCj4gRnJhbmNpc2NvLgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

