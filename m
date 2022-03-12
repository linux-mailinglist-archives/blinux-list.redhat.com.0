Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E304E4D6DF4
	for <lists+blinux-list@lfdr.de>; Sat, 12 Mar 2022 11:11:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647079861;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FfVI76U1I+7X1e3WHzydrPfplQkbakzIav+qmIYr+hw=;
	b=TJKuSNwLBBK58NVHgm44drINf4KnwTWySodZkFA9GZ0JRN3IUaNHUQ+Gm4/hcw5A1RKbO8
	92Da7iq0xVA+2Wr7hq0w3vukTTKYghZsykG+V48qIGpOGfzYU2t9TCCyfoegWYfKdLS9Q4
	z9GRus2JTBv8VfHp5dqoexSzxM/KsF4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-57-BV6iKsn5NPeznofrN1f7-g-1; Sat, 12 Mar 2022 05:10:57 -0500
X-MC-Unique: BV6iKsn5NPeznofrN1f7-g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1114B10726A2;
	Sat, 12 Mar 2022 10:10:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B563040C1244;
	Sat, 12 Mar 2022 10:10:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2D6E21940373;
	Sat, 12 Mar 2022 10:10:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 12 Mar 2022 11:10:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: Crypted LVM and beep tones
To: nick@nickgawronski.com, Christian Schoepplein <chris@schoeppi.net>,
 blinux-list@redhat.com, debian-accessibility@lists.debian.org
References: <552c8786-2732-a700-1b17-24c7670a7265@schoeppi.net>
 <12731b88-91a3-b621-8f36-5761d687fccc@slint.fr>
 <5b820f90-061e-64d7-b765-41b17086cde4@nickgawronski.com>
In-Reply-To: <5b820f90-061e-64d7-b765-41b17086cde4@nickgawronski.com>
Message-ID: <mailman.1685.1647079847.111208.blinux-list@redhat.com>
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

SGkgTmljayBhbmQgQWxsLAoKSW4gb3VyIGNhc2UgKGluaXRpYWwgUkFNIGRpc2sgYmVpbmcgaW4g
YW4gZW5jcnlwdGVkIHBhcnRpdGlvbiwgd2hpY2ggaXMgdGhlIHJvb3QKcGFydGl0aW9uIG9mIHRo
ZSBzeXN0ZW0gdG8gc3RhcnQsIG5vdCBhIHNlcGFyYXRlIC9ib290IHBhcnRpdGlvbikgd2UgbmVl
ZCBHUlVCCnRvIGZpcnN0IHVubG9jayB0aGUgbWFpbiBkZXZpY2UgdG8gYmUgYWJsZSB0byBsb2Fk
IHRoZSBrZXJuZWwgdGhlbiB0aGUgaW5pdGlhbApSQU0gZGlzaywgd2hpY2ggaXQgZG9lcyByZXF1
ZXN0aW5nIHRoZSBwYXNzcGhyYXNlIGJlZm9yZSBkaXNwbGF5aW5nIHRoZSBib290Cm1lbnUuCgpJ
dCB3b3VsZCBpbmRlZWQgYmUgcG9zc2libGUgdG8gaGF2ZSB0aGUgcGFzc3BocmFzZSByZXF1ZXN0
ZWQgYnkgYW4gaW5pdGlhbCBSQU0KZGlzaywgYnV0IHRoaXMgaW5pdGlhbCBSQU0gZGlzayBzaG91
bGQgaW4gdGhhdCBjYXNlIGJlIGZpcnN0IGxvYWRlZCBmcm9tIGEgbm9uCmVuY3J5cHRlZCBkZXZp
Y2UsIGxpa2UgZm9yIGluc3RhbmNlIGFuIFVTQiBzdGljazogdGhpcyBpcyBub3Qgc29tZXRoaW5n
IHNldCB1cApieSBkZWZhdWx0IGluIFNsaW50IGJ1dCBhIHBvd2VyIHVzZXIgY291bGQgaW1wbGVt
ZW50IHRoYXQuCgpCdW5kbGUgdGhpcyAoc3BlYWtpbmcpIGluaXRpYWwgUkFNIGRpc2sgd2l0aCB0
aGUga2VybmVsIGluIGFuIEVGSSBzdHViIGlzIGxlZnQKdG8gdGhlIHJlYWRlciBhcyBhbiBleGVy
Y2lzZSA7KQoKQ2hlZXJzCgpEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVy
CgoKTGUgMTIvMDMvMjAyMiDDoCAwNDo1MiwgTmljayBHYXdyb25za2kgYSDDqWNyaXTCoDoKPiBI
aSwgSWYgc3BlZWNoIGlzIGVuYWJsZWQgYW5kIGFzIEkgc2V0IHRoZSBpbml0aWFsIHJhbWRpc2sg
dG8gZ2VuZXJpYyB0byBpbmNsdWRlCj4gYWxsIGRyaXZlcnMgd2h5IG5vdCBpbmNsdWRlIHRoZSBl
c3BlYWt1cCBhbmQgc291bmQgcGFja2FnZXMgc28geW91IGNvdWxkIGhhdmUKPiBzcGVlY2ggZHVy
aW5nIHRoaXMgcHJvY2Vzcz/CoCBJIG15c2VsZiBhbHNvIHVzZSB0aGlzIGVuY3J5cHRpb24gZmVh
dHVyZSBhbmQgYXMKPiB5b3UgY291bGQgYWx3YXlzIGNyZWF0ZSBhIGtleSBmaWxlIGFuZCBhZGQg
aXQgdG8gYW5vdGhlciBsdWtzIHNsb3QgSSB3b3VsZCBub3QKPiByYXRoZXIgaGF2ZSB0byBkbyB0
aGlzIGFzIEkgYW0gbm90IHN1cmUgaWYgdGhlcmUgaXMgYSB0aW1lb3V0IHdoZW4gdGhhdCBwcm9t
cHQKPiBhcHBlYXJzIGFmdGVyIGJvb3RpbmcuwqAgSXQgd291bGQgYmUgbmljZSB0byBoYXZlIHNw
ZWVjaCBkdXJpbmcgdGhhdCBwcm9jZXNzIG9yCj4gaWYgYSBCcmFpbGxlIGRpc3BsYXkgd2FzIGNv
bm5lY3RlZCBCcmFpbGxlIHN1cHBvcnQgb3IgYmV0dGVyIHlldCBib3RoLsKgIE5pY2sKPiBHYXdy
b25za2kKPiAKPiBPbiAzLzExLzIwMjIgMjo0NSBQTSwgRGlkaWVyIFNwYWllciB3cm90ZToKPj4g
SGkgQ3Jpc3RpYW4sCj4+Cj4+IEkgaGF2ZSByZXF1ZXN0ZWQgdGhhdCB0byB1cHN0cmVhbSAoZ3J1
Yi1kZXZlbCBtYWlsaW5nIGxpc3QpLCB3aXRob3V0IHN1Y2Nlc3M6Cj4+IGh0dHBzOi8vbGlzdHMu
Z251Lm9yZy9hcmNoaXZlL2h0bWwvZ3J1Yi1kZXZlbC8yMDIxLTAyL21zZzAwMDAyLmh0bWwKPj4K
Pj4gQ2hlZXJzLAo+PiBEaWRpZXIKPj4KPj4gTGUgMTEvMDMvMjAyMiDDoCAxOTozOSwgQ2hyaXN0
aWFuIFNjaG9lcHBsZWluIGEgw6ljcml0wqA6Cj4+PiBIaSwKPj4+Cj4+PiBJIGhhdmUgdG8gY3J5
cHQgbXkgaGFyZGRpc2sgZm9yIG15IHdvcmtpbmcgbGFwdG9wLiBBbGx0aG91Z2ggaXQgaXMgbm8g
YmlnCj4+PiBwcm9ibGVtIHRvIGVudGVyIHRoZSBlbmNyeXB0aW9uIHBhc3N3b3JkIHNvbWUgc2Vj
b25kcyBhZnRlciBncnViIEkgd29uZGVyIGlmIGEKPj4+IGFjdXN0aWNhbCBzaWduYWwgY291bGQg
YmUgcGxheWVkIHRoYXQgdGVsbHMgbWUgdGhhdCB0aGUgcGFzc3dvcmQgcHJvbXB0IGlzCj4+PiBk
aXNwbGF5ZWQuIEFsc28gYSBzaWduYWwgYWJvdXQgc3VjY2Vzc2Z1bGx5IGVudGVyZWQgdGhlIHBh
c3N3b3JkIG9yIG5vdCB3b3VsZCBiZQo+Pj4gcmVhbGx5IGNvb2wuCj4+Pgo+Pj4gRG9lcyBhbnlv
bmUga25vdyBpZiBhY3VzdGljYWwgc2lnbmFscyBhcmUgcG9zc2libGUgZm9yIHRoZSBkZXNjcmli
ZWQgc2l0dWF0aW9uPwo+Pj4gQmVlcCB0b25lcyBsaWtlIGZvciBncnViIHdvdWxkIGJlIGFic29s
dXRlbHkgZW5vdWdoLgo+Pj4KPj4+IENoZWVycywKPj4+Cj4+PiDCoMKgIFNjaG9lcHAKPj4+Cj4g
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

