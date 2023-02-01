Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BC09A686E4F
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 19:42:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675276967;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jdHn8SElmT5RERoHAKrhSU7ZDX8QfhiwQiP0YOWmuf0=;
	b=FeaZgrs0tIgqGtmUCC2Ukrdx7S2x+XTZVn1DdmDLYUatQIqLUU6sZi5kfabXbHNbRxfDum
	IuPkqiruD/KHgh7etMx+dw32fjkJLeonljfiheGZNJw+IZZdWYdvkthP9xrbsjEL+zTwG5
	wFd2FTm7r2BCb0HFq2TkwJiriAgGV08=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-446-W6e9iaQvOlaAK69XvtwCyA-1; Wed, 01 Feb 2023 13:42:42 -0500
X-MC-Unique: W6e9iaQvOlaAK69XvtwCyA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA508101A55E;
	Wed,  1 Feb 2023 18:42:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7CC16C15BA0;
	Wed,  1 Feb 2023 18:42:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DE71D19465B7;
	Wed,  1 Feb 2023 18:42:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 11:42:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Attempting to boot Jenux in a vm.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
 <mailman.3890.1675275574.8169.blinux-list@redhat.com>
In-Reply-To: <mailman.3890.1675275574.8169.blinux-list@redhat.com>
Message-ID: <mailman.3798.1675276956.8172.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

RG8geW91IG1lYW4gd2hlbiBtYWtpbmcgdGhlIHZtP8KgIEkgdG9sZCBpdCB0byB1c2UgdGhlIGhv
c3Qgc291bmQgY2FyZCwgCmFuZCBJIGFsc28gdHJpZWQgY2hhbmdpbmcgaXQgZnJvbSB0aGUgc2V0
dGluZ3MuwqAgT3IgZG8geW91IG1lYW4gCnNvbWV0aGluZyBlbHNlP8KgIEFueSBvdGhlciB2bXMg
SSBoYXZlIGNvbWUgdXAgd2l0aCBzb3VuZCBhbHJlYWR5LgoKTWlrZS4KCgpPbiAyLzEvMjAyMyAx
MToxOSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBEaWQg
eW91IHByb3Zpc2lvbiB5b3VyIHZtIGZvciBzb3VuZD8gIElmIHRoaXMgaXMgdGhlIGZpcnN0IGRp
c3RybyB5b3UKPiB0cmllZCB0aGlzIHdheSB0aGF0IG1heSBuZWVkIGRvaW5nLgo+Cj4KPgo+IEp1
ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBi
ZSB1c2VkIGluCj4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+ICAgc29hcCwgYmFsbG90LCBqdXJ5LCBh
bmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPiAtRWQgSG93ZGVyc2hlbHQgKEF1
dGhvciwgMTk0MCkKPgo+IC4KPgo+IE9uIFdlZCwgMSBGZWIgMjAyMywgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPgo+PiBIZXkgYWxsLAo+Pgo+PiBKdXN0IHB1bGxl
ZCBkb3duIHRoZSBsYXRlc3QgSmVudXggdG8gZ2l2ZSBpdCBhIHRyeSwgYnV0IGZvciBzb21lIHJl
YXNvbiBJCj4+IGNhbm5vdCBnZXQgYW55IHNwZWVjaCBvdXQgb2YgaXQuwqAgSSBoZWFyIHRoZSBi
ZWVwcyB3aGVuIHRoZSBWTSBib290cyB1cCwgSSBjYW4KPj4gb2NyIHdpdGggbnZkYSBhbmQgc2Vl
IHNlbGYtdGVzdCByZXF1ZXN0ZWQsIHBsZWFzZSB3YWl0LCBhbmQgYWZ0ZXIgYSB3aGlsZSB0aGUK
Pj4gbWVudSBjb21lcyB1cC7CoCBJIGNhbiBhbHNvIHNlZSB0aGF0IHRocm91Z2ggb2NyLCBidXQg
SSBnZXQgbm8gc3BlZWNoIHdoZW4KPj4gaW5zaWRlIHRoZSB2bS4gSSd2ZSBjaGVja2VkIHRvIG1h
a2Ugc3VyZSB0aGUgc291bmQgY2FyZHMgYXJlIGNvcnJlY3QsIGFueW9uZQo+PiBoYXZlIGFueXRo
aW5nIGVsc2UgSSBjYW4gdHJ5P8KgIEknbSBub3QgZmluZGluZyBhbnkgZG9jdW1lbnRhdGlvbiBh
bnl3aGVyZSwKPj4gd2hpY2ggaXMgd2h5IEknbSBhc2tpbmcgaGVyZS4KPj4KPj4gTWlrZS4KPj4K
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

