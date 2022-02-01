Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF164A6280
	for <lists+blinux-list@lfdr.de>; Tue,  1 Feb 2022 18:33:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643736789;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KbGBAf1ntn7X6q+SnEcxtTqATPDCsWAUM7DYfa12bGI=;
	b=GfZxV3iKsrjuqs3DitqHKF2ZdOLmbew3FHsOcqCpFJ7haDoCciPpFlD1Fg/S669Fo20L+d
	bBYXRJf4HnFwnr9hYPPM4Arx4EhDP+iwEdAxsVrJS+I61TJooAWn9X7bZfnyUIuxq5nk8U
	6IicAFx/qIgoFIW7Bfg0uTiOmccVZtU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-47-wfeTStmDO1CjI2d7UGax8A-1; Tue, 01 Feb 2022 12:33:07 -0500
X-MC-Unique: wfeTStmDO1CjI2d7UGax8A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C78C684DA40;
	Tue,  1 Feb 2022 17:33:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 355A984A2B;
	Tue,  1 Feb 2022 17:33:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D2E141809C88;
	Tue,  1 Feb 2022 17:33:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 211HWslE031956 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Feb 2022 12:32:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9687D40CFD15; Tue,  1 Feb 2022 17:32:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 922E640CFD07
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 17:32:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 781A8185A79C
	for <blinux-list@redhat.com>; Tue,  1 Feb 2022 17:32:54 +0000 (UTC)
Received: from smtprelay06.ispgateway.de (smtprelay06.ispgateway.de
	[80.67.18.29]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-607-81mn2sadOBSxcik49WDbeg-1; Tue, 01 Feb 2022 12:32:52 -0500
X-MC-Unique: 81mn2sadOBSxcik49WDbeg-1
Received: from [80.187.105.21] (helo=smtpclient.apple)
	by smtprelay06.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1nEx0c-00011u-Sk
	for blinux-list@redhat.com; Tue, 01 Feb 2022 18:32:03 +0100
Mime-Version: 1.0 (1.0)
Subject: Re: Remaining DecTalk Issues?
Date: Tue, 1 Feb 2022 18:32:50 +0100
Message-Id: <6ED714DA-818D-45FE-804C-2CDB5CE627F4@linux-a11y.org>
References: <3b5986-5885-4b82-437f-e8c2d1cee655@hubert-humphrey.com>
In-Reply-To: <3b5986-5885-4b82-437f-e8c2d1cee655@hubert-humphrey.com>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 211HWslE031956
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpTdXJlLCB3ZSBjYW4gdm9pY2UgYWJvdXQgdGhhdC4KV2hlcmUgYXJlIHlvdSBmcm9t
PyBXaGF0IHRpbWV6b25lIHlvdSBsaXZlIHRoZXJlIChqdXN0IGZvciB0aW1lIHNjaGVkdWxpbmcp
CgpBYm91dCB0aGUga2V5Ym9hcmQgbGF5b3V0LiBXZWxsIHRoaXMgaXMgY29tcGxldGVseSBjb25m
aWd1cmFibGUuIEkgZG9u4oCZdCB1c2UgYW4gc2NyZWVucmVhZGVyLCBzbyBpIGRvIG5vdCByZWFs
bHkga25vdyBzcGVha3VwcyBzaG9ydGN1dHMuIFRoZSBjdXJyZW50IGxheW91dCBpcyBtYWRlIGJ5
IHN0b3JtX2RyYWdvbi4gU28geWVzIGl04oCZcyBkb2FibGUsIGJ1dCBub3QgdGhlIGNhc2UgYnkg
ZGVmYXVsdC4gSWYgc29tZW9uZSBjcmVhdGVzIGEgbGF5b3V0IHNpbWlsYXIgdG8gc3BlYWt1cCBp
IHdpbGwgb2YgY29yc2UgcHVzaCBpdCB1cHN0cmVhbSBtYXN0ZXIuCgpUaGUgZGVjdGFsayBzdHVm
ZiBsb29rcyBhbHNvIHZlcnkgc2ltcGxlLiBJZiB0aGUgZW1hY2tzcGVhayBzZXJ2ZXIgd29u4oCZ
dCBmaXQsIGkgY2FuIGhhbW1lciBhbiBweXRob24gYmFja2VuZC4KCkNoZWVycyBjaHJ5cwoKVm9u
IG1laW5lbSBpUGhvbmUgZ2VzZW5kZXQKCj4gQW0gMDEuMDIuMjAyMiB1bSAxNzoxMiBzY2hyaWVi
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5j
b20+Ogo+IAo+IO+7v1RoYW5rcyBDaHJpczogTm90IG9ubHkgd291bGQgSSBsb3ZlIHRvIHRyeSB0
aGlzLCBidXQgaWRlYWxseSBpdCB3b3VsZCBiZSBlYXNpZXIgaWYgSSBjb3VsZCBjb25uZWN0IHdp
dGggeW91IG9yIGFub3RoZXIgRmVucmlyIGV4cGVydCBieSBwaG9uZSBvciBvbiBab29tLiBJIGtu
b3cgbm90aGluZyBhYm91dCBFbWFjcywgYnV0IGp1c3QgcnVubmluZyBhbiBFbWFjc1NwZWFrIHNl
cnZlciBpcyB3aGF0IEkgd2FudGVkIHRvIHRyeSBpbiBTcGVha3VwLCBidXQgZWl0aGVyIGl0IGRp
ZG4ndCB3b3JrIG9yIEkgZGlkbid0IGtub3cgd2hhdCBJIHdhcyBkb2luZz8gTm93LCBqdXN0IGFz
IGltcG9ydGFudCwgaW4gRmVucmlyLCBjb3VsZCBJIHJ1biBhIFNwZWFrdXAgc3R5bGUga2V5Ym9h
cmQgY29uZmlndXJhdGlvbj8gSXQgd291bGQgY2VydGFpbmx5IG1ha2UgYSBwb3NzaWJsZSB0cmFu
c2l0aW9uIGVhc2llci4gSSBtZWFuLCB0aGUgZmFjdCBvZiBGZW5yaXIgaGF2aW5nIGEgcHJvbnVu
Y2lhdGlvbiBkaWN0aW9uYXJ5IGFzIHdlbGwgYXMgYW4gZWFzaWVyIHdheSBvZiBhanVzdGluZyB2
b2x1bWUgYXJlIHJhdGhlciBhcGVhbGluZy4gVGhhbmtzIHNvIG11Y2ggaW4gYWR2YW5jZQo+IENo
aW1lCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

