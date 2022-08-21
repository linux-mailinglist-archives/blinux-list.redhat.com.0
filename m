Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CBF59B5A9
	for <lists+blinux-list@lfdr.de>; Sun, 21 Aug 2022 19:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661103541;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SgcCvsmkanZVUAvzUz9XsFBHiz0CNNFSktp/2CT3M6o=;
	b=Nl8vj55pnIZA6Iz6HEvznQ+PA1t0RCoY7TZ9TU0BE1jt6yezDjyJ777igIAaSw4A01jbLK
	ASeRfXdVIHy24WDLdS29C19agdLD2qqUnKdeoNFd+x/X0yxJ3NJWYsWvXCanck+dj5UM6R
	yMIWKNEC+gFrQrfdPn3cyy08h6U+8qA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-633-Ua0S8cBmMlWv3gWDvrt8rg-1; Sun, 21 Aug 2022 13:38:58 -0400
X-MC-Unique: Ua0S8cBmMlWv3gWDvrt8rg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8862D101A54E;
	Sun, 21 Aug 2022 17:38:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 24CFB40C1421;
	Sun, 21 Aug 2022 17:38:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 885B01946A4B;
	Sun, 21 Aug 2022 17:38:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Raspberry pi 3
Date: Sun, 21 Aug 2022 12:38:39 -0500
References: <mailman.2560.1661093757.10500.blinux-list@redhat.com>
In-Reply-To: <mailman.2560.1661093757.10500.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.2338.1661103530.10498.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V291bGQgeW91IG1pbmQgcHJvdmlkaW5nIG1lIHdpdGggdGhlIGVtYWlsIGFkZHJlc3MgdG8gc3Vi
c2NyaWJlIHRvIHRoaXMgZ3JvdXA/IEkgZG9u4oCZdCBzZWUgYW4gZW1haWwgYWRkcmVzcyBvbiB0
aGUgcGFnZSBmb3IgZ3JvdXBzLmlvLgoKQXNobGV5IEJyZWdlcgoKPiBPbiBBdWcgMjEsIDIwMjIs
IGF0IDk6NTYgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0hpIEFzaGxleSwKPiBTaGFyaW5nIGFuIGFs
dGVybmF0aXZlIHJlc291cmNlIGluIGNhc2Ugb3RoZXJzIGhlcmUgZG8gbm90IGNvbWUgdGhyb3Vn
aC4KPiBUaGVyZSBpcyBhIGxpc3QgY2FsbGVkIHJhc3BiZXJyeSB2aSwgYXMgaW4gdmlzdWFsIGlt
cGFpcmVkLiAgQSBzaXRlLCBhbG9uZyB3aXRoIEkgYmVsaWV2ZSBhIGdyb3Vwcy5pbyBjb21tdW5p
dHkuCj4gTWF5IHdpc2ggdG8gY29ubmVjdCB0aGVyZSwgc29tZSBvbiB0aGUgbGlzdCBhY3R1YWxs
eSBjcmVhdGUgaW1hZ2VzIGZvciBzdWNoIGNvbWJpbmVkIGVmZm9ydHMuCj4gZW5qb3kgdGhpcyBj
bGFzcywKPiBLYXJlCj4gCj4gCj4gCj4+IE9uIFNhdCwgMjAgQXVnIDIwMjIsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IAo+PiBIaSBndXlzLAo+PiBJIGFtIHRh
a2luZyBhIGNsYXNzIG9uIElPVCBhbmQgdGhleSBhcmUgc2F5aW5nIEkgbmVlZCB0byBvcmRlciBh
IHJhc3BiZXJyeSBwaSAzIENhbmFraXQgYW5kIGEgbW9uaXRvciB0byBkbyB0aGUgd29yayBpbiB0
aGUgY2xhc3MuIERvZXMgYW55b25lIGtub3cgaWYgdGhpcyBjb3VsZCBiZSBjb25uZWN0ZWQgaW50
byBhIHN5c3RlbSBydW5uaW5nIFNsaW50IHNvIEkgY2FuIGRvIG15IHdvcmsgb24gaXQ/Cj4+IEFu
eSBoZWxwIHdvdWxkIGJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQuCj4+IFRoYW5rIHlvdSwKPj4gCj4+
IEFzaGxleSBCcmVnZXIKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4gCj4+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

