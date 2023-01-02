Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B8A65B79B
	for <lists+blinux-list@lfdr.de>; Mon,  2 Jan 2023 23:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672698079;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9qHHNoPv9zxueHIEhRCFed6YowR9ujOJ5SBOe5bZEP4=;
	b=hI1jed/M/Yqa8YhuQxiLJZ+GCHJSDISoKD49buU8wJN7wUUHrK5AWxkg81fnWRmDNcLDm7
	3F9jQb6Pwvx/VRJwoMN0qsHHTrprf/cjmEleNkGQhLtIlfi8FHAX9O627e2LSQpDKTY3mp
	IyCjA8rzT/1cOhLKZ3tFABxmb4aEZyw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-558-8410uUn-OISQE2sHrrCO3A-1; Mon, 02 Jan 2023 17:21:16 -0500
X-MC-Unique: 8410uUn-OISQE2sHrrCO3A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4981101A55E;
	Mon,  2 Jan 2023 22:21:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 10A07492B06;
	Mon,  2 Jan 2023 22:21:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 90AC8194658F;
	Mon,  2 Jan 2023 22:21:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 2 Jan 2023 17:21:04 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other jenux users here?
In-Reply-To: <mailman.2316.1672675299.2515662.blinux-list@redhat.com>
References: <mailman.2166.1672659484.2515676.blinux-list@redhat.com>
 <mailman.2316.1672675299.2515662.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2265.1672698069.2515665.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBvbmx5IGhhdmUgYmFyZSBtZXRhbCBoZXJlIGFuZCB0aGF0J3Mgd2hlcmUgdGhlIGxhc3QgdGhy
ZWUgaXNvcyBmYWlsZWQuCgoKCkp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVy
ZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluCmRlZmVuc2Ugb2YgbGliZXJ0eToKIHNvYXAs
IGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCi1FZCBI
b3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQoKLgoKT24gTW9uLCAyIEphbiAyMDIzLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBIaSwKPgo+Cj4gSSBoYXZlIGpl
bnV4IHJ1bm5pbmcgaW4gYSB2bSwgYnV0IG5vdCBoYXZpbmcgYW55IHByb2JsZW1zIGF0IHRoZSBt
b21lbnQuwqAgSQo+IGhhdmUgbm90IGJlZW4gYWJsZSBvdG8gZ2V0IGVpdGhlciBzbGludCBvciBq
ZW51eCB0byBib290IG9uIGEgYmFyZWJvbmVzCj4gbWFjaGluZSwgYnV0IEkgdGhpcyBoYWQgdG8g
ZG8gd2l0aCBzZWN1cmUgYm9vdCB3aGljaCBuZWl0aGVyIGFyY2ggb3Igc2xpbnQKPiBzdXBwb3J0
IHdoaWNoIGlzIGEgc2hhbWUgc2luY2UgbW9zdCBpZiBub3QgYWxsIG1hY2hpbmVzIGhhdmUgYnkg
ZGVmYXVsdCBhbmQgZG8KPiBub3QgaGF2ZSBzaXRlZCBoZWxwIHRvIGRpc2FibGUuCj4KPgo+IE1h
dHRoZXcKPgo+Cj4KPiBPbiAxLzIvMjAyMyA2OjM4IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4gQXQgbGVhc3QgdGhlIGxhc3QgMyBpc29zIHdvdWxkbid0
IGNvbWUgdXAgc3BlYWtpbmcgb24gYSB0aGlua3Blbmd1aW4uY29tCj4gPiBQZW5ndWluIHBybyAx
MSBjb21wdXRlciBJIGhhdmUuICBUaGUgaXNvcyBjb250aW51YWxseSByZWJvb3RlZCBhbmQgSQo+
ID4gdmVyaWZpZWQgdGhvc2UgaXNvcyB3ZXJlIGNvcnJlY3Qgb24gbXkgbWFjaGluZSBiZWZvcmUg
YXR0ZW1wdGluZyB0byBydW4KPiA+IHRoZSBpbnN0YWxsZXIuICBUaGUgYXV0aG9yIG9mIGplbnV4
IHRoaW5rcyBpdCdzIGEgdWVmaSBwcm9ibGVtIG9uIG15Cj4gPiBtYWNoaW5lIGJ1dCB0aGF0J3Mg
bm90IGxpa2VseSBzaW5jZSB0aGUgbWFjaGluZSBub3cgcnVucyBzbGludCAxNS4wIGFuZAo+ID4g
dGhhdCB1c2VzIHVlZmkgd2hlbiBpbnN0YWxsaW5nLgo+ID4gSSB0aGluayB1ZWZpIGluIG1hdGhl
bWF0aWNzIHRlcm1zIGlzIHdoYXQncyBjYWxsZWQgZ3JlYXRlc3QgY29tbW9uCj4gPiBkZW5vbWlu
YXRvciBhbmQgYmlvcyAgaXMgbG93ZXN0IGNvbW1vbiBkZW5vbWluYXRvci4KPiA+Cj4gPgo+ID4K
PiA+IEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hl
cyB0byBiZSB1c2VkIGluCj4gPiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4gPiAgIHNvYXAsIGJhbGxv
dCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4gPiAtRWQgSG93
ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPiA+Cj4gPiAuCj4gPgo+ID4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4KPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo=

