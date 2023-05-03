Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A9C6F5EB1
	for <lists+blinux-list@lfdr.de>; Wed,  3 May 2023 20:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683140237;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M3qNlbI/XR6PWown2lwFbm/GjzDP8OAlxk0cx4LRI4M=;
	b=S4ISCSC5y47rf7UkJg8fx84xyDqcMFhFMFgHY9w5d/UT3kFBXWX1+tmxA6RVbG3loSqXxE
	ZS2cAKsKGO78vJi11y5hNvppXqmVAuj/XdjR2zSYVohbI8Ov4/W87bpxHx80J2aMjfsaB2
	1xez/ppsUgf4L6+FuPASgmYxRt9Hb64=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-270-BzRtn7JfOQWtd20P61FdAw-1; Wed, 03 May 2023 14:57:15 -0400
X-MC-Unique: BzRtn7JfOQWtd20P61FdAw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BBB8585C6E1;
	Wed,  3 May 2023 18:57:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2A69F1410F2B;
	Wed,  3 May 2023 18:57:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9802D1946A43;
	Wed,  3 May 2023 18:56:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 3 May 2023 14:56:55 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Problem installing fenrir using pip in fedora 38 workstation
In-Reply-To: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
References: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1628.1683140218.290941.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBmb3J3YXJkZWQgeW91ciBlbWFpbCB0byBmZW5yaXItc2NyZWVucmVhZGVyQGZyZWVsaXN0cy5v
cmcuICBJdCdzIGEgbG93CnZvbHVtZSBmZW5yaXIgc3VwcG9ydCBsaXN0IHNvIHRoaXNvdWdodCB0
byBiZSBzb2x2ZWQgc2hvcnRseS4KCgotLSBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29t
PiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgpkZWZlbnNlIG9mIGxpYmVydHk6
IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdApvcmRlci4i
IEVkIEhvd2RlcnNoZWx0IDE5NDAuCkFyZSB5b3UgZG9pbmcgdGhpcyBvbiBiYXJlIG1ldGFsIG9y
IHZpcnR1YWwgZW52aXJvbm1lbnQgYW5kIGlmIGluIHZpcnR1YWwKZW52aXJvbm1lbnQgd2hpY2gg
b25lPwoKT24gV2VkLCAzIE1heSAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgoKPiBIaSBhbGwsCj4KPgo+IEkgYW0gdXNpbmcgZmVkb3JhIDM4IHdvcmtzdGF0
aW9uIGlmIHRoaXMgbWF0dGVycyBhbmQgd2hlbiB0cnlpbmcgdG8gaW5zdGFsbAo+IGZlbnJpciBJ
IGdldCBhIGVycm9yIGZyb20gZXZkZXYgb3Igc29tZXRpbmcgYWJvdXQgYSBubyBzdWNoIGZpbGUg
b3IKPiBkaXJlY3RvcnkuwqAgSSBmaXJzdCBpbnN0YWxsZWQgcGlwIHRoZW4gcmFuIHBpcCBpbnN0
YWxsIGFuZCBnb3QgdGhhdCBlcnJvci7CoAo+IEFueXdheSB1c2luZyBmZW5yaXIgaW4gZmVkb3Jh
IGFuZCBob3cgZGlkIHlvdSBnZXQgaXQgd29ya2luZz/CoCBJcyB0aGVyZQo+IGFub3RoZXIgcGFj
a2FnZSBJIG5lZWQgdG8gaW5zdGFsbCBzb21ld2FyZT/CoCBUaGFua3MgaWYgYW55b25lIGhhcyBh
bnkgaWRlYXMgb24KPiB3aGF0IG1pZ2h0IGJlIGdvaW5nIG9uIEkgd291bGQgbGlrZSBzb21lIHBv
aW50ZXJzIG9uIHRoaXMgb25lLgo+Cj4KPiBNYXR0aGV3Cj4KPgo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QK

