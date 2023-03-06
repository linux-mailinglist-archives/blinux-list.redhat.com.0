Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F536ACF8A
	for <lists+blinux-list@lfdr.de>; Mon,  6 Mar 2023 21:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678135842;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9IAQnSbu1oBbkg16nR8+EDkJoXdvbfN4d2LV2rJPVDo=;
	b=aSUpKayjE7d8h1EtLw92VK1j1stFpAOFKAFgm2YDBGXFX7b70Yr3xW5yCeTLrShVKyTqY2
	+OXS6nkUtmZeTz/IifsXVPk3cM2CCHp7XqZWSp3snAym0LjC3U/HqBwTUIK9Co85c+irFi
	R1SClq10abGQZQF5yDdjmLI2mLE6Lwc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-381-OJ9BK5THNpmNNyiGN1rPmg-1; Mon, 06 Mar 2023 15:50:40 -0500
X-MC-Unique: OJ9BK5THNpmNNyiGN1rPmg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25E781871CD6;
	Mon,  6 Mar 2023 20:50:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EFC572026D4B;
	Mon,  6 Mar 2023 20:50:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7884319465A2;
	Mon,  6 Mar 2023 20:50:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.211.1.1\))
Subject: Re: [program-l] Wsl orca
Date: Mon, 6 Mar 2023 14:50:21 -0600
In-Reply-To: <D3AC4484-E06F-4442-8134-B9948ACF90E6@gmail.com>
To: program-l@freelists.org
References: <D3AC4484-E06F-4442-8134-B9948ACF90E6@gmail.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.425.1678135835.1521164.blinux-list@redhat.com>
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
Cc: "blinux-list@redhat.com" <blinux-list@redhat.com>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVhaCwgaXQgcmFyZWx5IHdvcmtzIGZvciBtZS4gRXZlbiB3aGVuIGl0IGRvZXMsIGl0IGJlY29t
ZXMgc2x1Z2dpc2ggcXVpY2tseS4KRGV2aW4gUHJhdGVyCnIuZC50LnByYXRlckBnbWFpbC5jb20K
Ckh0dHBzOi8vZGV2aW5wcmF0ZXIubWljcm8uYmxvZwoKPiBPbiBNYXIgNiwgMjAyMywgYXQgMjo0
NyBQTSwgRGFycmVuIFRvbWJsaW4gPGtjOWpqakBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IEhpIEni
gJltIGhhdmluZyBhIHByb2JsZW0gZ2V0dGluZyBvcmNhIHRvIHJ1biB3aXRoIGVpdGhlciB3c2xn
IG9yIGd3c2wgSSBnZXQgYSBtZXNzYWdlIGFib3V0IG5vIHNwZWVjaCBvciBhdWRpbyBhbmQgaXQg
anVzdCBzaXRzIHRoZXJlIEkgaGF2ZSB0byBraWxsIG9yY2EgdG8gZ2V0IGNvbnRyb2wgYmFjayB0
aGFua3MKPiAKPiA3MywKPiBEYXJyZW4gVG9tYmxpbiBLQzlKSkoqKiBUbyBsZWF2ZSB0aGUgbGlz
dCwgY2xpY2sgb24gdGhlIGltbWVkaWF0ZWx5LWZvbGxvd2luZyBsaW5rOi0KPiAqKiBbbWFpbHRv
OnByb2dyYW0tbC1yZXF1ZXN0QGZyZWVsaXN0cy5vcmc/c3ViamVjdD11bnN1YnNjcmliZV0KPiAq
KiBJZiB0aGlzIGxpbmsgZG9lc24ndCB3b3JrIHRoZW4gc2VuZCBhIG1lc3NhZ2UgdG86Cj4gKiog
cHJvZ3JhbS1sLXJlcXVlc3RAZnJlZWxpc3RzLm9yZwo+ICoqIGFuZCBpbiB0aGUgU3ViamVjdCBs
aW5lIHR5cGUKPiAqKiB1bnN1YnNjcmliZQo+ICoqIEZvciBvdGhlciBsaXN0IGNvbW1hbmRzIHN1
Y2ggYXMgdmFjYXRpb24gbW9kZSwgY2xpY2sgb24gdGhlCj4gKiogaW1tZWRpYXRlbHktZm9sbG93
aW5nIGxpbms6LQo+ICoqIFttYWlsdG86cHJvZ3JhbS1sLXJlcXVlc3RAZnJlZWxpc3RzLm9yZz9z
dWJqZWN0PWZhcV0KPiAqKiBvciBzZW5kIGEgbWVzc2FnZSwgdG8KPiAqKiBwcm9ncmFtLWwtcmVx
dWVzdEBmcmVlbGlzdHMub3JnIHdpdGggdGhlIFN1YmplY3Q6LSBmYXEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

