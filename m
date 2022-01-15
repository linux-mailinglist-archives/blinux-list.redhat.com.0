Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F42148F9CF
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 00:53:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642290811;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ASLHMfA1vSUlMLXowmHqLbMnpyvzgejtfc+nC1zBKX8=;
	b=chEAQfcXczppgq4TYeVKXrbpvqqjxcslPPGAISEX8GHsT9UU5VudBujJzVa1IlhvXFz4Ux
	1bFVE0KVJxXMQBTYJhk+OCwJgWhO3nc3a+fBAsX4uBb4TW/5ccEUFRj6Zd9ue5ee5arxO0
	mYF8fX8nexI8OEWxfEZ2Hl5HKdlhAXU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-475-ZNRqb9xuOrelPiawFYABOw-1; Sat, 15 Jan 2022 18:53:27 -0500
X-MC-Unique: ZNRqb9xuOrelPiawFYABOw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C85381080865;
	Sat, 15 Jan 2022 23:53:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4780578C26;
	Sat, 15 Jan 2022 23:53:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F0E211809CB8;
	Sat, 15 Jan 2022 23:53:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20FNr8FS032235 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 Jan 2022 18:53:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 130D01410F3B; Sat, 15 Jan 2022 23:53:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E576140EBFE
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 23:53:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E81F4800882
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 23:53:07 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-611-fAVtabRtNa2_uSxddC37ww-1; Sat, 15 Jan 2022 18:53:06 -0500
X-MC-Unique: fAVtabRtNa2_uSxddC37ww-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jbw3542frz2q02
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 18:53:05 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jbw353LJyzcbc; Sat, 15 Jan 2022 18:53:05 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jbw3532HDzcbC
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 18:53:05 -0500 (EST)
Date: Sat, 15 Jan 2022 18:53:05 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: possability of linux install question
In-Reply-To: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
Message-ID: <b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20FNr8FS032235
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

VWJ1bnR1IG9yIEZlZG9yYSBjb3VsZCBkbyB0aGF0IGZvciB5b3UuICBhbHQtd2luZG93cy1zIHRv
Z2dsZXMgc3BlZWNoIG9uCmFuZCBvZmYgYW5kIHlvdSB3YW50IHRvIGNob29zZSB0cnkgdWJ1bnR1
IG9yIHRyeSBmZWRvcmEgYnV0dG9ucyBvbiB0aGUKZGVza3RvcCBzY3JlZW4uICBEZXNrdG9wIHNj
cmVlbiBpcyB3aW5kb3dzLWQgb25jZSBzeXN0ZW0gYm9vdHMgYW5kIHlvdQpoYXZlIHNwZWVjaC4K
CgpPbiBTYXQsIDE1IEphbiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgoKPiBIZWxsbyBhbGwsCj4KPiBJJ3ZlIGJlZW4gd2FudGluZyB0byB0cnkgb3V0IGxp
bnV4IGJ1dCBoYXZlbid0IHdhbnRlZCB0byBnaXZlIHVwIG9yIG1lc3MgdXAKPiBhbnkgb2YgbXkg
d29ya2luZyB3aW5kb3dzIHN5c3RlbXMuwqAgV291bGQgaXQgYmUgcG9zc2libGUgdG8gaW5zdGFs
bCBzb21lCj4gdmVyc2lvbiBvZiBsaW51eCBvbiBhIENEIG9yIGEgRFZEOyB0aGVuIGp1c3QgYm9v
dCBhIGNvbXB1dGVyIGZyb20gdGhhdCBkaXNrCj4gYnlwYXNzaW5nIHdpbmRvd3MgYWx0b2dldGhl
cj/CoCBJZiBzbywgSSdkIGhhdmUgdG8gbWFrZSBpdCBlaXRoZXIgdGFsayBvciBkcml2ZQo+IGEg
QnJhaWxsZSBkaXNwbGF5Lgo+Cj4gV29uZGVyIGlmIGFueW9uZSB3b3VsZCBoYXZlIGFueSBzdWdn
ZXN0aW9ucz/CoCBUaGFuayB5b3UuCj4KPiBIb3dhcmQKPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

