Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B21584743
	for <lists+blinux-list@lfdr.de>; Thu, 28 Jul 2022 22:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659041379;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UuwYeHkJQKzFzjPVQC5x7sM5gbiZ06h+/ci+L7IKUO8=;
	b=U32S9IIZ/34Qu5Bbh7tEPpfqtP7CwKmBb1MTiy8bksiGYgZo5xbbAsHxAgwOtw0sLudPeO
	Hdr4Dl5/vcoamJtwLyd3x0wKUAOSN1H7WlceV4MvW9wnc6uF5zu+ADeiMAafeEbcGVHSLB
	OXZXN6kBBgZAZVYweuYOeHcTWUmBYJQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-255-iJq90UqiPxSBPskdNK0hmw-1; Thu, 28 Jul 2022 16:49:35 -0400
X-MC-Unique: iJq90UqiPxSBPskdNK0hmw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA4BF8039AE;
	Thu, 28 Jul 2022 20:49:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D826240E80E0;
	Thu, 28 Jul 2022 20:49:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F42001945DB7;
	Thu, 28 Jul 2022 20:49:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 28 Jul 2022 22:49:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: What is the current state of LIOS?
To: blinux-list@redhat.com
References: <mailman.38252.1659038495.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.38252.1659038495.111202.blinux-list@redhat.com>
Message-ID: <mailman.9239.1659041355.3475251.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmF0aXNsYXYsCgpBbGwgSSBrbm93IGlzIHRoYXQgdGhlIGxhc3QgY29tbWl0IGRhdGVzIGJh
Y2sgSnVuIDI3LCAyMDIxIGFuZCBpdCB3YXMgYSBtZXJnZSBvZgphIFBSOiBodHRwczovL2dpdGh1
Yi5jb20vTmFsaW4teC1MaW51eC9saW9zLTMKCk1heWJlIHRyeSB0byBmaWxlIGFuIGlzc3VlPwoK
VGhlIGFyZSAxNiBmb3JrcyAoaW5jbHVkaW5nIG1pbmUpICwgbm9uZSB3aXRoIGVuaGFuY2VtZW50
cyBvciBidWcgZml4ZXMuCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1h
aW50YWluZXIKCkxlIDI4LzA3LzIwMjIgw6AgMjE6NTMsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIZWxsbyBsaXN0LAo+IAo+IHRvZGF5LCBJIGZpbmFs
bHkgZGVjaWRlZCB0byBnZXQgbXkgc2Nhbm5lciB3b3JraW5nLCBhbmQgdGh1cywgdHJ5IG91dAo+
IExJT1MgYXMgd2VsbC4KPiAKPiAKPiBVbmZvcnR1bmF0ZWx5LCB0aGlzIHR1cm5lZCBvdXQgdG8g
YmUgYSBsaXR0bGUgbW9yZSB0cm91Ymxlc29tZSBvbmUgd291bGQKPiBleHBlY3QuCj4gCj4gCj4g
Rmlyc3Qgb2YgYWxsLCBMSU9TIHdhcyB1bmFibGUgdG8gcGFyc2UgdGhlIGluZm9ybWF0aW9uIG9m
IG15IG5ldHdvcmsKPiBzY2FubmVyLCB0aGVyZSBhbHJlYWR5IHNlZW1zIHRvIGJlIGFuIGlzc3Vl
IGFib3V0IHRoaXMgb24gdGhlIHByb2plY3Qncwo+IEdpdEh1YiwgaWYgdGhlIGNhdXNlcyBhcmUg
aWRlbnRpY2FsLgo+IAo+IAo+IFRoaXMgZGlkbid0IHJlYWxseSBzdXJwcmlzZSBtZSwgdGhlcmUg
YXJlIG1hbnkgc2Nhbm5lcnMgYW5kIEknbSBub3Qgc3VyZQo+IGhvdyBwcmVjaXNlbHkgYXJlIHRo
ZXkgZm9sbG93aW5nIHRoZSBzdGFuZGFyZHMsIHNvIG9rYXksIEkgZGl2ZWQgaW50bwo+IHRoZSBj
b2RlIGFuZCBmaXhlZCBkdGhlIHBhcnNpbmcgb24gdGhlIHBsYWNlIHdoZXJlIGl0IGJyb2tlLgo+
IAo+IAo+IEJ1dCB0aGUgb3RoZXIgaXNzdWVzIEkgZm91bmQgd2VyZSBmYXIgbW9yZSBzdHVubmlu
Zy4KPiAKPiAKPiBGaXJzdCBvZiBhbGwsIHRoZSB1cGRhdGUgc2Nhbm5lcnMgbGlzdCBmdW5jdGlv
biBkb2Vzbid0IGhhdmUgc2NvcGVkCj4gdHJ5L2V4Y2VwdCBibG9ja3MsIGJ1dCByYXRoZXIgb25l
IGJpZywgdGhhdCBiYXNpY2FsbHkgY292ZXJzIGFsbCB0aGUKPiBmdW5jdGlvbidzIGNvZGUuCj4g
Cj4gCj4gV2hhdCB0aGlzIG1lYW5zIGluIHByYWN0aWNlIGlzLCB0aGF0IGlmIExJT1MgZmFpbHMg
dG8gb3BlbiBhIHNjYW5uZXIKPiAobGlrZSBpdCBkaWQgd2l0aCBtaW5lKSwgaW5zdGVhZCBvZiBw
cm9jZWVkaW5nIHRvIG90aGVycywgdGhlIGZ1bmN0aW9uCj4gc2ltcGx5IGFib3J0cyBhbmQgdGhh
dCdzIHRoYXQuCj4gCj4gCj4gTXkgc2Nhbm5lciBpcyByZXByZXNlbnRlZCBieSBhcHByb3guIDMg
b3IgNCBkZXZpY2VzLCBJIGdldCBvbmUgaW4gdGhlCj4gbGlzdCwgc2luY2UgdGhlIG9wZW5pbmcg
b2YgdGhlIHNlY29uZC1vbmUgY3Jhc2hlcyBhbmQgdGhlIG90aGVycyBhcmUKPiB0aHVzIG5vdCBs
b2FkZWQuCj4gCj4gCj4gSSdtIG5vdCBzdXJlIHdoZXRoZXIgdGhlcmUgaXMgYW55IGRpZmZlcmVu
Y2UgYmV0d2VlbiB0aGVtIGluIHRoaXMKPiBwYXJ0aWN1bGFyIHNjZW5hcmlvLCBidXQgaWYgdGhl
aXIgb3JkZXIgd2FzIGVpdGhlciBkaWZmZXJlbnQgb3IgSSBoYWQKPiBtdWx0aXBsZSBjb25uZWN0
ZWQgc2Nhbm5lcnMsIHRoZSBkZXZpY2VzIGV2YWx1YXRlZCBhZnRlciB0aGUKPiBwcm9ibGVtYXRp
Yy1vbmUgd291bGQgYmUgc2ltcGx5IHVucmVhY2hhYmxlLgo+IAo+IAo+IEFuZCB0aGVyZSBpcyBh
bm90aGVyIGlzc3VlLCB0aGF0J3MgdG90YWxseSBjcnlwdGljIHRvIG1lLgo+IAo+IAo+IFdoZW4g
SSBjaG9vc2UgdG8gc2NhbiBhbiBpbWFnZSB3aXRoIHRoZSBzY2FubmVycyBhbHJlYWR5IGxvYWRl
ZCwgaW5zdGVhZAo+IG9mIHNpbXBseSB1c2luZyB0aGUgc2VsZWN0ZWQtb25lLCBMSU9TIHVwZGF0
ZXMgdGhlIGxpc3QgZmlyc3QgKHdoYXQKPiB0YWtlcyBxdWl0ZSBhIHNvbWUgdGltZSksIGFuZCBq
dXN0IGFmdGVyd2FyZHMgbWFrZXMgdGhlIHNjYW4uCj4gCj4gCj4gVGhhdCdzIGp1c3Qgb2J2aW91
c2x5IHdyb25nLCBzbyBJIGNoZWNrZWQgdGhlIGNvZGUgYWdhaW4sIGFuZCB0aGlzIGlzCj4gd2hh
dCBJIGZvdW5kIGluIHRoZSBzY2FuIG1ldGhvZHM6Cj4gCj4gCj4gIMKgwqAgwqDCoMKgwqAgaWYo
bm90IHNlbGYuaXNfdXBkYXRpbmdfc2Nhbm5lcl9saXN0IG9yCj4gbGVuKHNlbGYuc2Nhbm5lcl9v
YmplY3RzKSA9PSAwKToKPiAgwqDCoCDCoMKgwqDCoCDCoMKgwqAgc2VsZi51cGRhdGVfc2Nhbm5l
cl9saXN0KCk7Cj4gCj4gVHJhbnNsYXRlZCB0byBlbmdsaXNoLCB0aGlzIHNheXM6IGlmIHRoZSBz
Y2FubmVyIGxpc3QgaXMgbm90IGJlaW5nCj4gdXBkYXRlZCBvciB0aGVyZSBhcmUgbm8gc2Nhbm5l
cnMsIHVwZGF0ZSB0aGUgbGlzdC4KPiAKPiAKPiBUaGlzIGtpbmQgb2Ygc2hvY2tlZCBtZS4gWW91
IGRvbid0IGV2ZW4gbmVlZCB0byBiZSBhIHByb2dyYW1tZXIgdG8ga25vdwo+IGl0J3Mgd3Jvbmcs
IHRoZSBjb3JyZWN0IGZvcm11bGF0aW9uIHdvdWxkIGJlOiBpZiB0aGUgbGlzdCBvZiBzY2FubmVy
cyBpcwo+IG5vdCBiZWluZyB1cGRhdGVkIGFuZCB0aGVyZSBhcmUgbm8gc2Nhbm5lcnMsIHVwZGF0
ZSB0aGUgbGlzdC4KPiAKPiAKPiBpLmUuIHlvdSBuZWVkIHRvIGNoYW5nZSBvbmUgd29yZC4gQSB0
cml2aWFsLCBlbGVtZW50YXIgbWlzdGFrZS4KPiAKPiBJJ20gbm90IHN1cmUgd2hvIGRpZCBpdCwg
SSBraW5kIG9mIGNhbid0IGJlbGlldmUgc29tZW9uZSB3aG8gY29kZWQgYQo+IHByb2dyYW0gb2Yg
dGhpcyBjb21wbGV4aXR5IHdvdWxkLCBwZXJoYXBzIGl0IGNhbWUgd2l0aCBhIFBSLgo+IAo+IAo+
IFdoYXQgYm90aGVycyBtZSBtb3JlIGlzIHdoeSBkaWRuJ3QgaXQgZ2V0IGZpeGVkLCBpdCdzIG5v
dCBzb21ldGhpbmcKPiB5b3UncmUgZ29pbmcgdG8gb3Zlcmxvb2sgYXMgc2Nhbm5pbmcgaXMgdGhl
IG1haW4gZnVuY3Rpb24gb2YgdGhlCj4gcHJvZ3JhbSwgYW5kIGRzaW5jZSBpdCdzIHNvIGVhc3kg
dG8gZml4LCBJIHdvdWxkIGV4cGVjdCBpdCB0byBiZSBhbHJlYWR5Cj4gcmVwYWlyZWQuCj4gCj4g
Cj4gU28sIHRoZSBxdWVzdGlvbiBpcywgZG9lcyBhbnlvbmUgaGF2ZSBhbnkgaW5mb3JtYXRpb24g
b24gd2hhdCdzIHRoZQo+IGN1cnJlbnQgc3RhdHVzIG9mIHRoZSBkZXZlbG9wbWVudD8KPiAKPiAK
PiBJcyBpdCBzdGlsbCBhY3RpdmUsIGFyZSBQUnMgYWNjZXB0ZWQgb3IsIGRpZGQgYW55b25lIGNy
ZWF0ZSBhIGZvcmsgaWYgbm90Pwo+IAo+IAo+IFRoYW5rcyEKPiAKPiAKPiBCZXN0IHJlZ2FyZHMK
PiAKPiAKPiBSYXN0aXNsYXYKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

