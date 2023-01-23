Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B986788FC
	for <lists+blinux-list@lfdr.de>; Mon, 23 Jan 2023 21:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674507593;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/jgPSkyfMOSNSCsZV0PsG+PsJ2OmVc8tPuHfxp+bJ/o=;
	b=jAlm+WkFzgErE6oFM9ADJIKWgoqaI5mtX2RkC/z568O36D0fpZoTHCNlz7EOLrK6OaH3Rv
	grHwAwaih+ZVwWgWdkZ8dq4MROFrMKet2zCK9+KDd3DqaOEmW30MbD6ZcKFH7lzb7w73wB
	7mdi6aF2IrSIaCazznMXgV5tryk/Uvs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-648-f_bYgHmBOByC5Jp8RsY3Bw-1; Mon, 23 Jan 2023 15:59:50 -0500
X-MC-Unique: f_bYgHmBOByC5Jp8RsY3Bw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 060341C189A0;
	Mon, 23 Jan 2023 20:59:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 664FA2166B32;
	Mon, 23 Jan 2023 20:59:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B39331946597;
	Mon, 23 Jan 2023 20:59:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.300.101.1.3\))
Subject: Re: mumble from old machine to new
Date: Mon, 23 Jan 2023 14:59:26 -0600
References: <mailman.706.1674502389.8171.blinux-list@redhat.com>
 <mailman.713.1674503420.8177.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.713.1674503420.8177.blinux-list@redhat.com>
Message-ID: <mailman.698.1674507581.8169.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBjYW4gZ28gdGhlcmUgaW4gdGVybWluYWwuCkhvdyBtYXkgSSBtYWtlIHRoYXQgdmlzaWJsZSBz
byBJIGNhbiB1c2UgbmF1dGlsdXMgdG8gY29weSB0byB0aHVtYiBkcml2ZT8KCj4gT24gSmFuIDIz
LCAyMDIzLCBhdCAxMzo1MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gQ29weSBmcm9tIHRoZSBvbGQgdG8gdGhl
IG5ldyBtYWNoaW5lIHRoZSBmaWxlOgo+IH4vLmxvY2FsL3NoYXJlL011bWJsZS9NdW1ibGUvbXVt
YmxlLnNxbGl0ZQo+IAo+IENoZWVycywKPiBEaWRpZXIKPiAtLQo+IERpZGllciBTcGFpZXIKPiBT
bGFpbiBtYWludGFpbmVyCj4gCj4gTGUgMjMvMDEvMjAyMyDDoCAyMDozMiwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+IEkgaGF2ZSB0d28gbWFjaGluZXMg
d2l0aCBmZWRvcmEgMzcuCj4+IE11bWJsZSBpcyBvbiB0aGUgb2xkIG1hY2hpbmUsIHNldCB1cCBh
cyBJIGxpa2UgaXQuCj4+IEkgaGF2ZSBqdXN0IGluc3RhbGxlZCBtdW1ibGUgb24gdGhlIG5ldyBt
YWNoaW5lLCwgYnV0IGhhdmUgbm90IHlldCBwdXQgaW4gYW55dGhpbmcuCj4+IElzIHRoZXJlIGEg
d2F5IHRvIG1vdmUgbXVtYmxlIHNldHRpbmdzIGFuZCBhbGwgZnJvbSB0aGUgb2xkIG1hY2hpbmUg
dG8gdGhlIG5ldyBtYWNoaW5lIHNvIEkgd2lsbCBub3QgbmVlZCB0byBjb25maWd1cmUgZnJvbSBz
Y3JhdGNoPwo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

