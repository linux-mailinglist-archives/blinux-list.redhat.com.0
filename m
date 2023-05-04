Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D196F749E
	for <lists+blinux-list@lfdr.de>; Thu,  4 May 2023 21:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683229933;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Wc9pqvZEv/8Ibgt5XqyXWzSZJzfzUaqNRn+YGBARqIc=;
	b=RbjGO0h9Ug5b78JARzyXD6qthcfTNVnhXub3N2VMEq+CQcXjDCgvjY52qOCU3BPmUjMiVS
	NVCMGLG0iaLRdmxTjdaqMN3pGFnfTWeyRqslnd+UOw90K3Mg+Z97GKMWD/Ld4oNqh/loeR
	sH7NyfKdfDbONpYJ4hD0EOadbfDNgb8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-96-ipOom6gJN-ueulaAazCuCg-1; Thu, 04 May 2023 15:52:10 -0400
X-MC-Unique: ipOom6gJN-ueulaAazCuCg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0393109DCEE;
	Thu,  4 May 2023 19:52:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3C8471410F29;
	Thu,  4 May 2023 19:52:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C11571946A49;
	Thu,  4 May 2023 19:52:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 4 May 2023 15:52:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Problem installing fenrir using pip in fedora 38 workstation
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
 <mailman.1628.1683140218.290941.blinux-list@redhat.com>
 <mailman.1717.1683182658.290935.blinux-list@redhat.com>
 <mailman.1846.1683185639.290938.blinux-list@redhat.com>
 <mailman.1820.1683212973.290937.blinux-list@redhat.com>
In-Reply-To: <mailman.1820.1683212973.290937.blinux-list@redhat.com>
Message-ID: <mailman.1980.1683229926.290936.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzLsKgIEdvdCBpdCBpbnN0YWxsZWQuwqAgSG93IGRvIEkgZW5hYmxlIGl0LsKgIEkgcmFu
IHN5c3RlbWN0bCBlbmFibGUgCmZlbnJpci1zY3JlZW5yZWFkZXIgYW5kIGdvdCB0aGUgc2Vydmlj
ZSBkb2Vzbid0IGV4aGlzdC7CoCBJcyBpdCB1bmRlciBhIApkaWZmZXJlbnQgbmFtZT/CoCBJJ2Qg
bGlrZSB0byBoYXZlIGl0IHNldCB0byBzdGFydMKgIGF0IGJvb3QgdXAgc28gaSBjYW4gCnVzZSBt
eSBjb25jZWwuCgoKTWF0dGhldwoKCgpPbiA1LzQvMjMgMTE6MDkgQU0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSG93ZHksCj4KPiBldmRldiBzaG91bGQgYmUg
YWN0aXZhdGVkIGJ5IGRlZmF1bHQgb24gYWxsIGxpbnV4IGtlcm5lbHMgYXMgaXQgCj4gY29udHJv
bHMgdGhlIGV2ZW50cyBvZiB0aGUgaW5wdXQgcGVyaXBoZXJpZXMuCj4KPiB3aGF0IGhhcHBlbnMg
aWYgeW91IHVzZSB0aGUgZmVkb3JhIHBhY2thZ2UgbWFuYWdlciB0byBpbnN0YWxsIGV2ZGV2IAo+
IGluc3RlYWQgb2YgcGlwPwo+IHRoZSBwYWNrYWdlIG1pZ2h0IGJlIG5hbWVkOgo+IHB5dGhvbi1l
dmRldgo+IHB5dGhvbjMtZXZkZXYKPiBvciBzaW1pbGFyCj4KPiBjaGVlcnMgY2hyeXMKPgo+IEFt
IDA0LjA1LjIzIHVtIDA5OjMzIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbjoKPj4gZXZkZXYgaXMgcGFydCBvZiB0aGUgbGludXgga2VybmVsIHNvIHdoeSB0aGlzIG91
Z2h0IHRvIGhhdmUgY29tZSB1cCAKPj4gYXMgYW4KPj4gaXNzdWUgcHV6emxlcyBtZSBub3cgSSB0
aGluayBvZiBpdC7CoCBJZiBhIHBhY2thZ2UgZG9lc24ndCBpbnN0YWxsIAo+PiBwZXJoYXBzCj4+
IHRyeSBtb2Rwcm9iZSBldmRldiBhcyBzdWRvIG9yIHJvb3QgYW5kIHNlZSBpZiB0aGF0IHdvcmtz
Lgo+Pgo+Pgo+PiAtLSBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJl
IGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+PiBkZWZlbnNlIG9mIGxpYmVydHk6IHNvYXAsIGJh
bGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdAo+PiBvcmRlci4iIEVkIEhv
d2RlcnNoZWx0IDE5NDAuCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

