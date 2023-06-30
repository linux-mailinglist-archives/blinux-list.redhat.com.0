Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDDC743CCA
	for <lists+blinux-list@lfdr.de>; Fri, 30 Jun 2023 15:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1688131814;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XKvmj/tBW7SPWmSEMw5+mRf0EFFKL1RQ+O0jacJitdM=;
	b=AL0c2jFo7c5sIz1wMXeSxqt1VuFub4rOVuIHoNmljCn3OfwAeLOdb2//3KOlxvwqQTeFXq
	5r3lLPIn0/Q29femC7LAR+edl4Op2gRqrSgA4DiVBqkOc3Gr2uspDVHVm3n35uzpYoKR9d
	Czl2yYmcCdRQP6PUXPL+qAralisgqLA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-237-odVBHqUGMyex45_3Hazrkg-1; Fri, 30 Jun 2023 09:30:12 -0400
X-MC-Unique: odVBHqUGMyex45_3Hazrkg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 36CF98C76A8;
	Fri, 30 Jun 2023 13:30:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 642A34CD0C5;
	Fri, 30 Jun 2023 13:30:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DB31E1946A61;
	Fri, 30 Jun 2023 13:30:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: The Weirdness Just Keeps on Coming (was Can I run a .bat file
 from basica
Date: Fri, 30 Jun 2023 09:25:52 -0400
References: <mailman.1171.1688059538.3098363.blinux-list@redhat.com>
In-Reply-To: <mailman.1171.1688059538.3098363.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.1464.1688131802.3098369.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Tm8gbmVlZCBmb3IgYW55IG9mIHRoaXMuICBPcGVuIHVwIHRoZSBwcm9ncmFtIGluIGJhc2ljYS4g
IFRoZW4gdHlwZSBzYXZlIOKAnHByb2cuYmFz4oCdLGEgYW5kIHlvdSBnZXQgYW4gYXNjaWkgdmVy
c2lvbiBvZiB0aGUgcHJvZ3JhbSBzYXZlZCB0byBkaXNrLgoKU2VudCBmcm9tIG15IGlQaG9uZQoK
PiBPbiBKdW4gMjksIDIwMjMsIGF0IDE6MjUgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0kgdGhpbmsg
SSBoYXZlIGp1c3QgZm91bmQgYSB3YXkgdG8gc2F2ZSB5b3UgYSB0b24gb2YgdHJvdWJsZS4KPiAK
PiBodHRwczovL2dpdGh1Yi5jb20vcnd0b2RkL2Jhc2NhdAo+IAo+IFRoaXMgZG9lcyBzYXkgdGhh
dCBpdCBpcyB3cml0dGVuIGluIHBvd2Vyc2hlbGwsIGJ1dCBvdGhlciBicmFuY2hlcyBhcmUgbWVu
dGlvbmVkIHRoYXQgZG8gdGhlIHNhbWUgdGhpbmcgaW4gb3RoZXIgbGFuZ3VhZ2VzLiBZb3UgbWF5
IGJlIGVzcGVjaWFsbHkgaW50ZXJlc3RlZCBpbiB0aGUgYnJhbmNoIGNhbGxlZCBydXN0LXZlcnNp
b24uIEFsdGhvdWdoIHRoaXMgaXMgbGlzdGVkIGFzIGEgc3RhbGUgYnJhbmNoLCBpdCBtb3N0IGxp
a2VseSB3aWxsIHN0aWxsIGRvIHdoYXQgeW91IG5lZWQuCj4gCj4gCj4gWW91IG1heSBhbHNvIGJl
IGFibGUgdG8gdXNlIGEgZ3diYXNpYyBkZWNvZGVyIHRvIGNvbnZlcnQgdGhlIHByb2dyYW0gdG8g
dGV4dCwgYXMgZ3diYXNpYyBhbmQgYmFzaWNhIEkgYmVsaWV2ZSBhcmUgc2ltaWxhci4gVGhlIG9y
aWdpbmFsIGd3YmFzaWMgc291cmNlIGNvZGUgdGhhdCBNaWNyb3NvZnQgcmVsZWFzZWQgaW4gMjAy
MCBpcyB0aGUgYXNzZW1ibHkgY29kZSBmcm9tIHRoZSAxOTgzIHZlcnNpb24sIGFuZCBnd2Jhc2lj
IGFuZCBiYXNpY2EgYXJlIHNhaWQgdG8gYmUgZnVuY3Rpb25hbGx5IGlkZW50aWNhbCwgc28gYWx0
aG91Z2ggeW91ciBtaWxlYWdlIG1heSB2YXJ5LCBpdCBqdXN0IG1heSB3b3JrLiBJbmNpZGVudGFs
bHksIGd3YmFzaWMgaGFzIGFscmVhZHkgYmVlbiBidWlsdCB0byBydW4gb24gRnJlZURPUywgYW5k
IHRoZXJlZm9yZSBzaG91bGQgYWxzbyBydW4gb24gZG9zZW11IGFzIHdlbGwuCj4gCj4gfkt5bGUK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

