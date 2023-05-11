Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A445A6FF36B
	for <lists+blinux-list@lfdr.de>; Thu, 11 May 2023 15:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683813105;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WkOjFdEx4rDAl12UEqKmfGR6+Fvl2bZ1SA/Y9WIrbCo=;
	b=diw+4TR5nzI59WWiwJUX0lUAyc37yoEFCi5xoG2wIeKqv1XUgxLjKFoLAGOmO3HyhJ7Wt3
	U9JzWTje9mPQpIwrPfynm9luQBwWLS2AxaDwbiCBvAWmnE89CRHEHt+cPomThnLseowNfj
	JpI3EwBjdZp7pBcc8ON+eK4Rb37/QNI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-609-il6Jy87IMISF6KdL6GIBlw-1; Thu, 11 May 2023 09:51:44 -0400
X-MC-Unique: il6Jy87IMISF6KdL6GIBlw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C0111C09A4B;
	Thu, 11 May 2023 13:51:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8A94B1121314;
	Thu, 11 May 2023 13:51:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CBDC919451D5;
	Thu, 11 May 2023 13:51:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 11 May 2023 09:49:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Help Troubleshooting Speaker Output with BlueYeti USB Mic
To: blinux-list@redhat.com
References: <mailman.2043.1683807884.2822856.blinux-list@redhat.com>
In-Reply-To: <mailman.2043.1683807884.2822856.blinux-list@redhat.com>
Message-ID: <mailman.2189.1683813096.2822853.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SWYgeW91IGFyZSB1c2luZyBQdWxzZSBhdWRpbywgeW91IHNob3VsZCBiZSBhYmxlIHRvIHVzZSB0
aGUgcGFjdGwgCnV0aWxpdHkgZnJvbSB0aGUgY29tbWFuZCBsaW5lIHRvIGZpbmQgb3V0IHRoZSBu
YW1lcyBvZiB5b3VyIGlucHV0IGFuZCAKb3V0cHV0IGRldmljZXMuCgpwYWN0bCBsaXN0CgpUaGVu
IHlvdSBjYW4gc2V0IHRoZW0gbGlrZQoKcGFjdGwgc2V0LWRlZmF1bHQtc2luayBhbHNhX291dHB1
dC54eHh4eHh4CgpwYWN0bCBzZXQtZGVmYXVsdC1zb3VyY2UgYWxzYV9pbnB1dC54eHh4eAoKQmVl
biBhIHdoaWxlIHNpbmNlIEkndmUgdXNlZCBpdCwgYnV0IHlvdSBjYW4gZmluZCBvbmxpbmUgdHV0
b3JpYWxzLgoKCgpPbiA1LzExLzIzIDA4OjI0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+IMKgSGksIEkgYW0gdHJ5aW5nIHRvIHRyb3VibGVzaG9vdCB3aHkgSSBh
bSBub3QgZ2V0dGluZyBhbnkgc291bmQgZnJvbSAKPiBteSBzcGVha2VycyB3aGVuIEkgYW0gdXNp
bmcgbXkgQmx1ZVlldGkgVVNCIG1pY3JvcGhvbmUuIEluIHRoZSAKPiBwYXZ1Y29udHJvbCwgSSBz
ZWUgdHdvIGludGVybmFsIGRldmljZSBvcHRpb25zLCBidXQgbmVpdGhlciBvZiB0aGVtIAo+IHdv
cmsgZm9yIG15IHNwZWFrZXJzLiBTb21ldGltZXMsIEkgd2FudCB0byBzZW5kIGF1ZGlvIGZyb20g
b3RoZXIgCj4gcHJvZ3JhbXMgdG8gbXkgc3BlYWtlcnMsIGJ1dCBJIGFtIG5vdCBzdXJlIGhvdyB0
byBnbyBhYm91dCB0aGlzLiBDYW4gCj4gYW55b25lIHByb3ZpZGUgYW55IGFzc2lzdGFuY2Ugb3Ig
YWR2aWNlIG9uIGhvdyB0byBmaXggdGhpcyBpc3N1ZT8KPgo+IMKgVGhhbmsgeW91Lgo+Cj4gU2V0
aC4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

