Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E6D680259
	for <lists+blinux-list@lfdr.de>; Sun, 29 Jan 2023 23:46:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675032365;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=n/sDbTWneZG1W49tgU6NS+guMelUNdImW8kTgW2cjAU=;
	b=LXm3fyWvIRt7XwqRaUnCn90Qy0hFqgWnGoX7ifp+5AV8gXR1jJuhBCOiQ+CuJpgfEj4nC7
	RCyqnsstuITU9icOZ6C8Jkip0vNilvPXc8nzUZ0GuLbIz2o6C/Bz7qINZTImm8jB/GyzTz
	8tVBeq2yFfUINOgLtZyMvtQ2PIRX28A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-458-cf0J1NmHPz-VGfC3bG0FqA-1; Sun, 29 Jan 2023 17:46:01 -0500
X-MC-Unique: cf0J1NmHPz-VGfC3bG0FqA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65F9B811E6E;
	Sun, 29 Jan 2023 22:46:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7D1FCC15BAE;
	Sun, 29 Jan 2023 22:45:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1071A1946595;
	Sun, 29 Jan 2023 22:45:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 29 Jan 2023 17:45:49 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Twitter alternatives for the blind community?
In-Reply-To: <mailman.2140.1675028856.8176.blinux-list@redhat.com>
References: <mailman.2126.1674833824.8175.blinux-list@redhat.com>
 <mailman.2028.1674835913.8171.blinux-list@redhat.com>
 <mailman.2120.1674865746.8168.blinux-list@redhat.com>
 <mailman.2132.1675027863.8173.blinux-list@redhat.com>
 <mailman.2140.1675028856.8176.blinux-list@redhat.com>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.2247.1675032356.8168.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

T25seSBhZGRyZXNzaW5nIG9uZSBwb2ludCBoZXJlLgpJIGNhbm5vdCB1c2UgT3JjYSwgYmVjYXVz
ZSB0aGUgc3BlZWNoIHN5bnRoZXNpcyBjaG9zZW4gZm9yIHRoZSBwcm9ncmFtIGF0IAp0aGUgIHZl
cnkgbGVhc3QgY2F1c2VzIGRpenppbmVzcyBmb3IgbWUsIGFuZCBhdCB3b3JzZSAgcmlza3MgIGVw
aXNvZGVzIAp0aGF0IG1pcnJvciB0aG9zZSBleHBlcmllbmNlZCBieSBzb21lICB3aG8gbWFuYWdl
IGVwaWxlcHN5LgpZb3UgY2Fubm90IGJlIGV4cGVydCBvbiBhbGwgdGhlIHdheXMgIHRoZSBodW1h
biBib2R5IHBlcnNvbmlmaWVzLCBtYWtpbmcgCnN1Y2ggIGEgYmxhbmtldCBzdGF0ZW1lbnQgc29t
ZXdoYXQgY29uY2VybmluZy4KSG93IGRvZXMgdGhpcyBkaWZmZXIgZnJvbSB0aG9zZSBzcGVha2lu
ZyBvZiBhIGJsaW5kIGNvbW11bml0eT8KYXMgZm9yIHRoZSAgZGVmaW5pdGlvbiBvZiBhY2Nlc3Np
YmxlLCBpdHMgYSB3M2Mgb25lLiAgU3BlY2lmaWNhbGx5IHRoYXQgCnRvb2xzIG11c3QgYmUgYnJv
d3NlciBkZXZpY2UsIGFuZCB1c2VyIGFnZW50IGFnbm9zdGljLgpLYXJlbgoKCgpPbiBTdW4sIDI5
IEphbiAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBB
Y2NvcmRpbmcgdG8gS2FyZW4KPj4gIFllcywgdGhlIG5ldyBUd2l0dGVyIG93bmVyIGZpcmVkIHRo
ZSBlbnRpcmUgYWNjZXNzaWJpbGl0eSB0ZWFtLCBidXQgaG93Cj4+ICBhcmUgdGhlc2Ugc2Vydmlj
ZXMgZGVmaW5pbmcgYWNjZXNzaWJpbGl0eT8KPgo+Cj4gRmlyc3Qgb2YgYWxsLCBieSBoYXZpbmcg
QVBJJ3MgdGhhdCBhbGxvdyB0aGUgYXBwbGljYXRpb25zIHlvdSBjaG9vc2UgdG8gCj4gaW50ZXJh
Y3Qgd2l0aCB0aGVtLgo+Cj4KPj4gIGJ5IGl0cyBhY3R1YWwgbWVhbmluZyByZWdhcmRsZXNzIG9m
IHRlY2hub2xvZ3kgdXNlZCwgd29ya3MgZnJvbSB0aGUKPj4gIGtleWJvYXJkIGZvcsKgIGV4YW1w
bGU/Cj4KPgo+IElmIHRoYXQgaXMgeW91ciBkZWZpbml0aW9uLCB0aGVyZSBpcyBhbiBhcHBsaWNh
dGlvbiB0aGF0IHdpbGwgZmlsbCB0aGF0IG5lZWQgCj4gZm9yIHlvdSwgb3IgeW91IGNhbiBkZXZl
bG9wIG9uZS4KPgo+Cj4+ICBZb3Uga2VlcCBzcGVha2luZyBvZiBPcmNhLCBidXQgd2hhdCBpZiBv
bmUgY2Fubm90LCBvciBjaG9vc2VzIG5vdCB0byB1c2UKPj4gIE9yY2EgYXTCoCBhbGw/Cj4KPgo+
IFdobyBjYW5ub3QgdXNlIE9yY2E/IElmIHlvdSBjaG9vc2Ugbm90IHRvIHVzZSBpdCwgdGhlbiB0
aGlzIGlzIHlvdXIgY2hvaWNlLCAKPiBidXQgeW91IG1pc3MgbW9zdCBvZiB0aGUgYWNjZXNzaWJp
bGl0eSBvZiB0aGUgbW9kZXJuIHdlYiBqdXN0IGZvciBzdGFydGVycy4gCj4gQXBwbGljYXRpb25z
IHRoYXQgd29yayB3aXRoIE9yY2Egd29yayBxdWl0ZSB3ZWxsIGZyb20gdGhlIGtleWJvYXJkIGFu
ZCBkb24ndCAKPiBuZWVkIGFueSBvdGhlciBpbnB1dCB0byBpbnRlcmFjdCB3aXRoIHRoZW0uIEVu
dGlyZWx5IHRleHQtYmFzZWQgYnJvd3NlcnMgb24gCj4gdGhlIG90aGVyIGhhbmQgZ2VuZXJhbGx5
IGRvIG5vdCB0YWtlIGFkdmFudGFnZSBvZiwgbm9yIGRvIHRoZXkgc3VwcG9ydCwgCj4gbW9kZXJu
IHdlYiB0ZWNobm9sb2dpZXMgc3VjaCBhcyBIVE1MNSBhbmQgYWNjZXNzaWJsZSBKYXZhU2NyaXB0
LiBUaGV5IGFsc28gCj4gbGFjayBuYXZpZ2F0aW9uYWwgZmVhdHVyZXMgYXZhaWxhYmxlIGZyb20g
d2l0aGluIG1vZGVybiBicm93c2VycyB1c2luZyBPcmNhLCAKPiBpbmNsdWRpbmcgYnV0IG5vdCBs
aW1pdGVkIHRvIGhlYWRlci9idXR0b24vbGluay9mb3JtIGZpZWxkIG5hdmlnYXRpb24gYW5kIAo+
IGxpc3RzIG9mIHNhbWUuIEtleWJvYXJkIG5hdmlnYXRpb24gYW5kIGFjdGl2YXRpb24gb2YgY2xp
Y2thYmxlIGVsZW1lbnRzIGlzIAo+IGFsc28gbGFja2luZyBpbiB0ZXh0LWJhc2VkIGJyb3dzZXJz
LCBtYWtpbmcgYW4gZXZlbiBsYXJnZXIgcGVyY2VudGFnZSBvZiAKPiB3ZWJzaXRlcyBpbmFjY2Vz
c2libGUgdG8gdGhlbSwgYnV0IG5vdCBpbmFjY2Vzc2libGUgdG8gT3JjYS4KPgo+Cj4+ICBJZiB0
aGUgZ29hbCBhcmUgb3B0aW9ucyB0aGF0IGxldHMgaW5kaXZpZHVhbHMsIHJlZ2FyZGxlc3Mgb2Yg
bGFiZWwsCj4+ICBjb21tdW5pY2F0ZSB3aXRoIHRob3NlIHRoZXkgd2lzaCwgYW5kIGVuZ2FnZSB3
aXRoIHRoZSB3b3JsZCBhcyB0aGV5Cj4+ICBkZXNpcmUsIHRoZW4gdGhlIGFjY2VzcyBpcyBiYXNl
ZCBvbiBwcm9ncmVzc2l2ZSBlbmhhbmNlbWVudCBkZXNpZ24sIG9yCj4+ICBzaG91bGQgYmUsIG5v
dCBhbnkgc3BlY2lmaWMgc2NyZWVuIHJlYWRlciBpZiB0aGF0IHJlc29uYXRlcywgc3BlYWtpbmcK
Pj4gIHBlcnNvbmFsbHkuCj4KPgo+IEknbSBub3QgY2F0Y2hpbmcgeW91ciBtZWFuaW5nIGhlcmUu
IEFsbCB0aGUgdG9vbHMgSSBtZW50aW9uZWQgaW4gbXkgcHJldmlvdXMgCj4gbWVzc2FnZSBhbGxv
dyBBUEkgYWNjZXNzLCBtZWFuaW5nIHRoYXQgYW55dGhpbmcgaW4gdGhlIHdvcmxkIHRoYXQgY2Fu
IGJlIGRvbmUgCj4gZnJvbSB0aGVpciB3ZWJzaXRlcyBjYW4gYmUgZG9uZSBwcm9ncmFtbWF0aWNh
bGx5IGZyb20gYW4gYXBwbGljYXRpb24gb3IgCj4gc2NyaXB0IHlvdSBjYW4gZWl0aGVyIGRvd25s
b2FkIGZyb20gc29tZXdoZXJlIG9yIGRldmVsb3Agb24geW91ciBvd24sIHVwIHRvIAo+IGFuZCBl
dmVuIGluY2x1ZGluZyByZWdpc3RlcmluZyBuZXcgYWNjb3VudHMsIHBvc3RpbmcsIHJlYWRpbmcg
YW55IHRpbWVsaW5lLCAKPiBzZW5kaW5nIGRpcmVjdC9wcml2YXRlIG1lc3NhZ2VzLCBldGMuIEFs
c28sIGlmIHlvdSBmaW5kIHNvbWV0aGluZyBtaXNzaW5nIG9yIAo+IGxhY2tpbmcgaW4gYW55IG9m
IHRoZXNlLCB0aGV5IGFyZSBhbGwgb3BlbiBzb3VyY2UvZnJlZSBzb2Z0d2FyZSwgbWVhbmluZyB0
aGF0IAo+IHlvdSBhcmUgZnJlZSB0byBtb2RpZnkgdGhlbSBhbmQgcmVkaXN0cmlidXRlIHlvdXIg
bW9kaWZpY2F0aW9ucywgc28geW91IGNhbiAKPiBhZGQgQVBJIGZ1bmN0aW9ucyBhcyB3ZWxsLiBU
aGlzIGlzIGFzIGFjY2Vzc2libGUgYXMgYW55dGhpbmcgY2FuIHBvc3NpYmx5IGJlLCAKPiBhbmQg
aXMgZXhhY3RseSB3aGF0IG1ha2VzIHRoZW0gdGhlIGJlc3QgYWx0ZXJuYXRpdmUgdG8gVHdpdHRl
ciwgRmFjZWJvb2ssIAo+IHByZXR0eSBtdWNoIGFueSBvdGhlciB3YWxsZWQgZ2FyZGVuIHNvLWNh
bGxlZCBzb2NpYWwgbmV0d29yayBvbiB0aGUgcGxhbmV0IAo+IHRoYXQgaXMgcnVuIGJ5IGEgdG9v
LWJpZy10by1mYWlsIGNvcnBvcmF0ZSBlbnRpdHkuCj4KPiB+IEt5bGUKPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QK

