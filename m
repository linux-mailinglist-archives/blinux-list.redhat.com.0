Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAF357E707
	for <lists+blinux-list@lfdr.de>; Fri, 22 Jul 2022 21:08:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658516908;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4BeJM0krlBE+eqq/84bj0OH8wR+KDPonOjdFU2FfOD0=;
	b=XAVxwKQjK5b9/FdZFYPYCSq5JBecccV8fEafHfZzTMNNELwh5rFvI6HXdRscO2ZxIGmJ4y
	U567O0XgY2UN2eZVMP1DEsgr0e6awapGort+JMTIkUqFTr3+h0u1/Kg8vMynk66GBPEvRR
	1W2mp5xpAyxN8qglGcAkhMK0FBwUvWQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-112-uqSWgS1LM9iIO4Ty78MPog-1; Fri, 22 Jul 2022 15:08:25 -0400
X-MC-Unique: uqSWgS1LM9iIO4Ty78MPog-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 11DF3811E75;
	Fri, 22 Jul 2022 19:08:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0BA6D2026D64;
	Fri, 22 Jul 2022 19:08:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DDCEB1947BBD;
	Fri, 22 Jul 2022 19:08:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
References: <mailman.35571.1658501727.111207.blinux-list@redhat.com>
 <1764ad6f-992a-3067-5432-cdd7d9118064@hubert-humphrey.com>
 <mailman.35980.1658504582.111209.blinux-list@redhat.com>
 <mailman.7471.1658507923.3475251.blinux-list@redhat.com>
 <mailman.35751.1658510592.111205.blinux-list@redhat.com>
 <mailman.36108.1658511328.111208.blinux-list@redhat.com>
 <mailman.35873.1658512716.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.35873.1658512716.111210.blinux-list@redhat.com>
Subject: A question about how to install Lennix as a second operating system
 on a modern Dell laptop?
Date: Fri, 22 Jul 2022 12:07:59 -0700
MIME-Version: 1.0
thread-index: Adid/ls9qOOkZEDJQJiaGjlcRf17pw==
Message-ID: <mailman.35612.1658516884.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R29vZCBhZnRlcm5vb24gZXZlcnlvbmUsIEkgYW0gd29uZGVyaW5nIGlzIHRoZXJlIGEgd2F5IGZv
ciBibGluZCBwZXJzb24gdG8gaW5zdGFsbCBhbnkgdmVyc2lvbiBvZiBMZW5uaXggb24gYSBtb2Rl
cm4gRGVsbCBsYXB0b3Agd2l0aG91dCBjaXRlZCBhc3Npc3RhbmNlPwoKVGhlIGJpZyBjYXZlYXQg
aGVyZSBpcyB0aGF0IHRoZXJlIGlzIGEgd2F5IHRvIGRvIGl0IGluIHN1Y2ggYSBtYW5uZXIgdGhh
dCB0aGUgbWFpbiBvcGVyYXRpbmcgc3lzdGVtIGluIHRoaXMgY2FzZSBXaW5kb3dzIDExIHdpbGwg
bm90IGJlIGRpc3R1cmJlZD8gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgZ29vZCBzdWdnZXN0aW9ucyBm
b3IgaG93IHRvIGRvIHRoaXM/IEkgZG8gaGF2ZSBhIFVidW50dSBkaXNrIGltYWdlIHNpdHRpbmcg
b24gbXkgaGFyZCBkcml2ZS4gSSBiZWxpZXZlIGl0IGlzIHRoZSBjdXJyZW50IHZlcnNpb24gb2Yg
dGhpcyBMZW5uaXggZGlzdHJpYnV0aW9uLgoKU2luY2VyZWx5IE1hdXJpY2UgbWluZXMuCgotLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQpGcm9tOiBCbGludXgtbGlzdCA8YmxpbnV4LWxpc3QtYm91
bmNlc0ByZWRoYXQuY29tPiBPbiBCZWhhbGYgT2YgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbgpTZW50OiBGcmlkYXksIEp1bHkgMjIsIDIwMjIgMTA6NTkgQU0KVG86IGJsaW51eC1s
aXN0QHJlZGhhdC5jb20KU3ViamVjdDogUmU6IFtzbGludF0gUmU6IFRoZSBSZWdpc3RlcjogVGF2
aXMgT3JtYW5keSBwb3J0cyBXb3JkUGVyZmVjdCBmb3IgVU5JWCB0byBMaW51eCAoZndkKQoKTm8K
RGlkaWVyCgoKTGUgMjIvMDcvMjAyMiDDoCAxOTozNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4gVGhhbmtzIGFsb3QgRGlkaWVyLiBJcyB0aGVpciBhbiBl
YXN5IHdheSBvZiBjb252ZXJ0aW5nIGFuIGkzODYgdG8gYW4gCj4gYW1iNjQ/IGRwa2cgZGlkbid0
IGxpa2UgdGhpcyBvbmUuCj4gQ2hpbWUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

