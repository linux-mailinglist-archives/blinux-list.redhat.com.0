Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B244445A78
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 20:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636053054;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fthRRu0iVwoED7jgoC1lLGBfUaND31Vw4qIYc7Ad2do=;
	b=WfxxUfNVhUSwbjE88djExOhxKF+tsXYi5wqjrxvTh4B1WmMBPhkhCm70+R58b1qKa2AE2q
	GFgk9mn5DnGVUJQLkZEqVQEzmKDC48FyfcD2xxBLigSRkKUxGMC+joAFagM4HmkYwq8Kcl
	SL0JW+GlywmN0AKuQe/5VAu1PDHpFZs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-385-uI8TUGJIMB2FnrMXyMgiBA-1; Thu, 04 Nov 2021 15:10:50 -0400
X-MC-Unique: uI8TUGJIMB2FnrMXyMgiBA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E1E88100B703;
	Thu,  4 Nov 2021 19:10:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 60E555D9D3;
	Thu,  4 Nov 2021 19:10:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0A53E1806D03;
	Thu,  4 Nov 2021 19:10:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A4JAIOE015440 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 15:10:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2AF50112131E; Thu,  4 Nov 2021 19:10:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25BB51121314
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 19:10:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 235E2899EC0
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 19:10:14 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com
	[209.85.219.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-28-THJzwzv8Pr-BXCs8eKgwxw-1; Thu, 04 Nov 2021 15:10:12 -0400
X-MC-Unique: THJzwzv8Pr-BXCs8eKgwxw-1
Received: by mail-yb1-f173.google.com with SMTP id o12so16936572ybk.1
	for <blinux-list@redhat.com>; Thu, 04 Nov 2021 12:10:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=vLplnxV+ZG1V158ddBIGcVh/CkR4rQUd7ID84lcGhtE=;
	b=cz03bH6pij/JZVMogufXQLgyhqawjV6qnQi6IkxiR1bz33DWIVT4QRpAHOICp/Vzai
	7Gp5JkK6QKGF7z0yNlBWyxNcvUsmQEZjL8yEpZyaV9SCOZn32pLvSvYpCiw2vL42mNpO
	VY9xLsQRDTMDfP6sz3lNLSMfq129E+r29rJoXhxCtoWgYYR5oRFSkinRTFnSevvV4jcr
	dupalIS31JUGigPNH8s8PdAK/adckOexYIu6XqPzJybdqXYa8I8ib3hWoQjzvkx9TFv+
	F/i9e/xrSfFSrBbvJmtQhOFAh7h+g3l0BPz7xcYfJYqNh2kDsFpreDRrYlmocbN+HlhH
	22FA==
X-Gm-Message-State: AOAM530QKEhRIY56zPX2S980IrVmppVfahpdkblFgm7LPkgulC0MjQKJ
	s68rN5dS2LL6pXypGM37om+zdJriog7mAQpXA0ZXFgi3U30=
X-Google-Smtp-Source: ABdhPJyDHB22r1xp2LNvrGYJq6J03DxDm8KJXmDAmt8L9rsaOG06alWBqiGJEbA8IZ7lCh2o/cXTAxZGleOv7aClj+I=
X-Received: by 2002:a25:944:: with SMTP id u4mr5427183ybm.31.1636053011608;
	Thu, 04 Nov 2021 12:10:11 -0700 (PDT)
MIME-Version: 1.0
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<0156E832-953A-4EE3-BBC7-8ACB8FBE5DE3@icloud.com>
	<CAGJxbF4mikSfj9O8UVb3JJUhpOCwjzkB-G_vZPmMwaHMkRpmvA@mail.gmail.com>
	<Pine.LNX.4.64.2111041353520.673755@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2111041353520.673755@server2.shellworld.net>
Date: Thu, 4 Nov 2021 14:10:00 -0500
Message-ID: <CAGJxbF5Ky9JWuCgp=vUpR1Y8+HGN-=ja2_kVHtvb4-epxCGYxw@mail.gmail.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBtZWFuIHRoaXMgaXMganVzdCBhIHByb3RvdHlwZS4gSXQncyBub3QgZXZlbiBuZWFybHkgZG9u
ZSB5ZXQuCkRldmluIFByYXRlcgpyLmQudC5wcmF0ZXJAZ21haWwuY29tCgoKCgpPbiBUaHUsIE5v
diA0LCAyMDIxIGF0IDEyOjU1IFBNIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PApibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gLi5hbmQgb25seSBzb2Z0d2FyZSBz
b3VyY2VzLCB3aGljaCBhcmUgaW5jb25zaXN0ZW50Pwo+IFRoZWlyIGNsYWltIHdhcyB0byBwcm92
aWRlIGNob2ljZXMgSSBiZWxpZXZlLCBzbyBpZiB0aGV5IGFyZSBub3QgZG9pbmcKPiB0aGF0Cj4g
bXVjaCwgd2hhdCBtYWtlcyBpdCBzbyB3b25kZXJmdWw/Cj4gS2FyZW4KPgo+Cj4KPiBPbiBUaHUs
IDQgTm92IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4K
PiA+IEl0J3MgcHJvYmFibHkgdXNpbmcgc3BlZWNoLWRpc3BhdGNoZXIuCj4gPiBEZXZpbiBQcmF0
ZXIKPiA+IHIuZC50LnByYXRlckBnbWFpbC5jb20KPiA+Cj4gPgo+ID4KPiA+Cj4gPiBPbiBUaHUs
IE5vdiA0LCAyMDIxIGF0IDg6NTAgQU0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8Cj4gPiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Cj4gPj4gSGksCj4gPj4g
SGF2ZSBhbnkgb2YgeW91IHRyaWVkIHRoaXMgbmV3IHNjcmVlbiByZWFkZXI/Cj4gPj4gSXMgaXQg
dXNpbmcgU3BlYWs/Cj4gPj4KPiA+PiBUaGFua3MsCj4gPj4gUm9iCj4gPj4KPiA+Pgo+ID4+PiBP
biBOb3YgMSwgMjAyMSwgYXQgOToyNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8Cj4gPj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPj4+Cj4gPj4+IEZX
SVcsIEkganVzdCByYW4gYWNyb3NzIHRoaXMgaW4gSGFja2VyIE5ld3MuLi4KPiA+Pj4KPiA+Pj4+
IEFjY2Vzc2liaWxpdHkgb24gTGludXggaGFzIGhpc3RvcmljYWxseSBiZWVuIHVuZGVyLWRldmVs
b3BlZCwKPiA+PiB1bmRlci1tYWludGFpbmVkLCBhbmQsIHRoZXJlZm9yZSwgZ2FpbmVkIGEgcmVw
dXRhdGlvbiBvZiBiZWluZyBxdWl0ZQo+ID4+IHBhaW5mdWwgdG8gdXNlIGFzIGEgZGFpbHkgZHJp
dmVyIGFtb25nIGRpc2FibGVkIHBlb3BsZS4gV2Ugd2FudCB0bwo+IGNoYW5nZQo+ID4+IHRoYXQu
Cj4gPj4+Pgo+ID4+Pj4gWWdnZHJhc2lsIGlzIGEgbmV3IHByb2plY3QgdGhhdCBhaW1zIHRvIGNy
ZWF0ZSBhIGJldHRlciBMaW51eCBzY3JlZW4KPiA+PiByZWFkZXIsIHdyaXR0ZW4gaW4gUnVzdC4g
VGhyb3VnaCB0aGlzIHByb2plY3QsIHdlIGFpbSB0byBwcm92aWRlIGEKPiBiZXR0ZXIKPiA+PiBz
Y3JlZW4gcmVhZGluZyBleHBlcmllbmNlIHRoYW4gdGhlIG9uZSB3ZSBjdXJyZW50bHkgaGF2ZSBp
biBPcmNhLiBBCj4gc2NyZWVuCj4gPj4gcmVhZGVyIHdpdGggYWxsIHRoZSBtb2Rlcm4gZmVhdHVy
ZXMgYSBXaW5kb3dzIG9yIE1hY09TIHVzZXIgd291bGQgZXhwZWN0Cj4gPj4gZnJvbSB0aGVpciBj
b21wdXRlcnMsIHNvbWUgb2Ygd2hpY2ggYXJlIG91dGxpbmVkIGJlbG93Lgo+ID4+Pj4KPiA+Pj4+
ICAgICAg4oCiIE9iamVjdCBuYXZpZ2F0aW9uCj4gPj4+PiAgICAgIOKAoiBPQ1IKPiA+Pj4+ICAg
ICAg4oCiIGN1c3RvbWlzYWJsZSBuYXZpZ2F0aW9uIGNvbW1hbmRzCj4gPj4+PiAgICAgIOKAoiBh
IHBvd2VyZnVsIGFkZC1vbiBtZWNoYW5pc20KPiA+Pj4+ICAgICAg4oCiIGFuZCBtb3JlLgo+ID4+
Pgo+ID4+PiBUaGUgWWdnZHJhc2lsIFNjcmVlbiBSZWFkZXIgUHJvamVjdAo+ID4+PiBodHRwczov
L3lnZ2RyYXNpbC1zci5naXRodWIuaW8vCj4gPj4+IGh0dHBzOi8vbmV3cy55Y29tYmluYXRvci5j
b20vaXRlbT9pZD0yOTA1NjE2OAo+ID4+Pgo+ID4+PiAtIFJpY2ggTW9yaW4KPiA+Pj4KPiA+Pj4K
PiA+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiA+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+ID4+Cj4gPj4KPiA+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiA+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

