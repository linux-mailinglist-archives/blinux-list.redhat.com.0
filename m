Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E68714AB1
	for <lists+blinux-list@lfdr.de>; Mon, 29 May 2023 15:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685368274;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EdN5yXliWHKKwEmPEg/AzI7Iar1OAQYnP/q6+AlT6Gc=;
	b=WBsecJE2WtmwzfIwaS0Ty8LRYZpW56HCUth8u5jVY5kZ3RPBeQB3Y0dml4KLo2Rf3Qrdqu
	fMig6kppNfu1oHYZAwLi2qdsYMIl11JqVxHD6p7mJDE3WZHC7vtrEKnzsVkKUXaqNBRf35
	hG9YdqfSJZq+nEmHDJFo/8iYSMaYAR4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-533-sNWOPu0FMIKLKOxDO5yEdA-1; Mon, 29 May 2023 09:51:11 -0400
X-MC-Unique: sNWOPu0FMIKLKOxDO5yEdA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6FB1D3C00124;
	Mon, 29 May 2023 13:51:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0EED62166B2B;
	Mon, 29 May 2023 13:51:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 79FEF19465B2;
	Mon, 29 May 2023 13:51:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 29 May 2023 09:48:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Mate deskto keyboard layout issue
To: blinux-list@redhat.com
References: <mailman.155.1685355344.2653570.blinux-list@redhat.com>
In-Reply-To: <mailman.155.1685355344.2653570.blinux-list@redhat.com>
Message-ID: <mailman.209.1685368265.2653566.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBJZiB5b3UgZ28gdG8gdGhlIENvbnRyb2wgQ2VudGVyIGFuZCBmaW5kIEtleWJvYXJk
LCB5b3UgY2FuIGFkZCBhIApuZXcga2V5Ym9hcmQuwqAgSXQgaGFzIHRoZSBvcHRpb24gdG8gc2Vs
ZWN0IGJ5IGNvdW50cnkuwqAgT25jZSB5b3UgYWRkIGl0IApJIHRoaW5rIHlvdSBjYW4gbWFrZSBp
dCB0aGUgZGVmYXVsdC7CoCBJZiB5b3UgYXJlIG9uIHRoZSBkZXNrdG9wIGFuZCAKcHJlc3MgY29u
dHJvbC1zaGlmdC10YWIgeW91IHNob3VsZCBnbyB0byB0aGUgVG9wIHBhbmVsLsKgIEZyb20gdGhh
dCBhcnJvdyAKdG8gU3lzdGVtIHRoZW4gc2VsZWN0IENvbnRyb2wgQ2VudGVyIGJ5IHByZXNzaW5n
IHVwIG9yIGRvd24gYXJyb3dzLgoKCgpPbiA1LzI5LzIzIDA2OjE1LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpLAo+Cj4gSSBpbnN0YWxsZWQgRGViaWFuIHN0
YWJsZSB0byBteSBEZXNrdG9wIGNvbXB1dGVyIHdpdGggMTIgY3B1IGNvcmVzIGFuZCAKPiAxNiwg
R2IgcmFtLCBiZWNhdXNlIEkgd2FudCB0byBwbGF5IHdpdGggUmhWb2ljZSBuZXcgdm9pY2UgY3Jl
YXRpb24gYW5kIAo+IHRoZSBndWlkZSBpcyB3cml0dGVuIGZvciBEZWJpYW4uIEkgc3VjY2Vzc2Z1
bGx5IGNvbmZpZ3VyZWQgYWxsIGZvciAKPiBDemVjaCBsYW5ndWFnZSBhbmQga2V5Ym9hcmQgbGF5
b3V0LCBidXQgd2hlbiBJIGxvZyBpbiB0byBteSBNYXRlLCAKPiBDemVjaCBsYXlvdXQgaXMgdmlz
aWJsZSBpbiBrZXlib2FyZCBwcmVmZXJlbmNlcywgYnV0IGtleWJvYXJkIGxheW91dCAKPiBpcyBp
biBFbmdsaXNoIFVTLiBJcyBpdCBwb3NzaWJsZSB0byBmaXggdGhpcz8gSSB0aGluayB0aGlzIGlz
IE1hdGUgCj4gaXNzdWUgYW5kIHNvbWV0aW1lcyBoZWxwcyBsb2cgb3V0IGFuZCBsb2cgaW4gYWdh
aW4uIEFuZCBteSBzZWNvbmQgCj4gcXVlc3Rpb24gaXMsIGhhcyBNYXRlIGRlc2t0b3Agc29tZSBk
ZWZhdWx0IGtleSBiaW5kaW5nIHRvIHN3aXRjaGluZyAKPiBiZXR3ZWVuIGxheW91dHM/IEkgaGF2
ZSBvbmUgYXQgdGhpcyB0aW1lLCBidXQgSSdsbCBhZGQgRW5nbGlzaCBVUyAKPiBsYXRlci4gRGVi
aWFuIDExLCBNYXRlIDEuMjQuCj4KPiBUaGFua3MsCj4KPiBQYXZlbAo+Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QK

