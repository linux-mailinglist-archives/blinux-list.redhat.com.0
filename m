Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD54751066
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jul 2023 20:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689185829;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=saX67pL8nn9qh00LlYTUpGnr9JWpAhnkZSrJodGt6+8=;
	b=FO8WFKP/c3RuqZeXkV32CkdldZNJpruOFudvdzqX9NHIcqEm1bOYT1MY7u0c/zc6h9dHAz
	+AGTyrkNbGzSO5DTZIEUinoW4Za8KLHRURheTjiOVeDCudVtr/pUhhZUWslUAnNP6J520d
	c8un/Dsj7f0ZEjAgCZWiKCmb6O1I+YM=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-197-LhZR6K2tOqeW2NYWJ60cJA-1; Wed, 12 Jul 2023 14:17:06 -0400
X-MC-Unique: LhZR6K2tOqeW2NYWJ60cJA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CDA73C0ED62;
	Wed, 12 Jul 2023 18:17:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B67D04028AB2;
	Wed, 12 Jul 2023 18:03:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DBEEA19465B3;
	Wed, 12 Jul 2023 18:16:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 12 Jul 2023 20:07:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Slint for beginners?
To: blinux-list@redhat.com
References: <mailman.821.1689183357.3826225.blinux-list@redhat.com>
In-Reply-To: <mailman.821.1689183357.3826225.blinux-list@redhat.com>
Message-ID: <mailman.879.1689185790.3826219.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R29vZCBldmVuaW5nIEplc3NpY2EsCgpDYXZlYXQ6IGFuc3dlciBmcm9tIHRoZSBTbGludCBtYWlu
dGFpbmVyIDspCgpJIHNpbmNlcmVseSBob3BlIGl0IGlzIGEgZ29vZCBkaXN0cmlidXRpb24gZm9y
IGEgTGludXggYmVnaW5uZXIuCgpBIGxlYXN0IHRoZSBpbnN0YWxsZXIgc2hvdWxkIGJlIGVhc3kg
dG8gdXNlIChhbmQgaXMgZnVsbHkgYWNjZXNzaWJsZSB3aXRoIHNwZWVjaAphbmQgQnJhaWxsZSwg
YXMgdGhlIGluc3RhbGxlZCBzeXN0ZW0pLgoKVGhlbiBmZXcgY29uZmlndXJhdGlvbiBwb3N0IGlu
c3RhbGxhdGlvbiBpcyBuZWNlc3NhcnkuIFNvbWUgYmFzaWMga25vd2xlZGdlIG9mCnRoZSBjb21t
YW5kIGxpbmUgaXMgdXNlZnVsLCBidXQgaXMgbm90IGEgcmVxdWlyZW1lbnQgdG8gYmVnaW4gdXNp
bmcgU2xpbnQuCgpUbyBtYWtlIHlvdXIgb3BpbmlvbiBJIHN1Z2dlc3QgdGhhdCB5b3UgaGF2ZSBh
IGxvb2sgdG8gb3VyIEhhbmRCb29rOgpodHRwczovL3NsaW50LmZyL2VuL0hhbmRCb29rLmh0bWwj
X2Fib3V0X3NsaW50CgpNb3JlIGluZm9ybWF0aW9uIGluIHRoZSB3ZWJzaXRlOiBodHRwczovL3Ns
aW50LmZyL2VuL2hvbWUuaHRtbAoKWW91IGNhbiBpbnN0YWxsIGl0IG9uIGEgNjQgVVNCIHN0aWNr
IHRvIHRyeSBpdC4gQXMgYSBiZWdpbm5lciBJIHN1Z2dlc3QgdGhhdCB5b3UKY2hvb3NlIHRoZSAi
YXV0byIgaW5zdGFsbGF0aW9uIG1vZGUuCgpJIHJlY29tbWVuZCB0aGF0IHlvdSByZWdpc3RlciB0
byBvdXIgbWFpbGluZyBsaXN0IGZvciBmdXJ0aGVyIHF1ZXN0aW9ucyBhbmQKc3VwcG9ydCByZXF1
ZXN0IGFzIGluZGljYXRlZCBpbiBodHRwczovL3NsaW50LmZyL2VuL3N1cHBvcnQuaHRtbAoKQ2hl
ZXJzLApEaWRpZXIgU3BhaWVyCgoKTGUgMTIvMDcvMjAyMyDDoCAxOTozNSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEdvb2QgYWZ0ZXJub29uLAo+IEkg
YW0gbmV3IHRvIExpbnV4ICYgYW0gY3VycmVudGx5IHVzaW5nIE1pbnQgMjEuMSwgYnV0IGtlZXAg
bG9vc2luZyBzcGVlY2ggd2l0aCBPcmNhLgo+IEFzIGEgcmVzdWx0LCBJIG1heSBzd2l0Y2ggdG8g
U2xpbnQsIHdoaWNoIHdhcyByZWNlbnRseSByZWNvbW1lbmRlZCB0byBtZSBieSBhIGZyaWVuZC4K
PiBCZWZvcmUgSSBkbyB0aG91Z2gsIEknZCBsaWtlIHRvIGdldCBvcGluaW9ucyBmcm9tIHRoZSBt
ZW1iZXJzIG9mIHRoaXMgbGlzdCBhcyB0byB3aGV0aGVyIG9yIG5vdCB0aGlzIHdvdWxkIGJlIGEg
Z29vZCBkaXN0cmlidXRpb24gZm9yIG1lLCBhcyBhIGJlZ2lubmVyPwo+IAo+IAo+IFRoYW5rcywK
PiBKZXNzaWNhIERhaWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

