Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 143C24FC45A
	for <lists+blinux-list@lfdr.de>; Mon, 11 Apr 2022 20:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649702894;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hDcM3h0t+8Whq0QHVh0EafxmzVcv1EKowB7wLQPFQwI=;
	b=VydQWtNSUddSJ5yH1jWBAdYRN5DNCsaUE3DdBnj+3GNBHpg9g4zn0jXEkQxH1y7eK9u3BM
	KWN1fgMgs7c8+p97n2Q6fDmuu5dO7La1hYBm5qICJzG/ArBNYd8G6MpfHtBz5QYO1jDVIg
	jqBvOw1IUyZH+LkReiC3zvYkDFuJqgs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-9-gZ_Ht12oMBy4uVhWh15ofw-1; Mon, 11 Apr 2022 14:48:11 -0400
X-MC-Unique: gZ_Ht12oMBy4uVhWh15ofw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64DD9811E78;
	Mon, 11 Apr 2022 18:48:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 50575111E410;
	Mon, 11 Apr 2022 18:48:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F39531940373;
	Mon, 11 Apr 2022 18:48:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 11 Apr 2022 19:48:01 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Dragonfm history vs show hidden
References: <425FD1FA-D2B3-4C49-9048-1CC65D43315F@linux-a11y.org>
 <mailman.7755.1649702589.111203.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7755.1649702589.111203.blinux-list@redhat.com>
Message-ID: <mailman.7960.1649702888.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIG5vdyBjYW4geW91IHJldmVydCB0aGF0IGNoYW5nZSB0byB0aGUgc2NyaXB0PyBJdCBidWls
dCBmaW5lIGJlZm9yZSBhbmQganVzdCBuZWVkZWQgdGhlIG5vdGlmeSBpbnN0YWxsZWQgdmlhIHBp
cCB0byBtYWtlIGl0IHdvcmssIGhvd2V2ZXIgSSBkdW5ubyBlbm91Z2ggYWJvdXQgdGhlIG90aGVy
IHB5dGhvbi1weW5vdGlmeSBwYWNrYWdlIGF0IGFsbCB0aG91Z2ggCgpPbiBNb24sIEFwciAxMSwg
MjAyMiBhdCAwODo0MzowNFBNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+IEhvd2R5LAo+IAo+IFdlbGwgSSBtIG5vdCB0aGUgbWFpbnRhaW5lciBvZiB0
aGUgcHl0aG9uLWlub3RpZnkgcGFja2FnZS4gSWYgaXQgZG9lcyBub3QgYnVpbGQgcGxlYXNlIGNv
bnRhY3QgdGhlIG1haW50YWluZXIuCj4gCj4gaHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNr
YWdlcy9weXRob24taW5vdGlmeQo+IAo+IE1heWJlIGkgd2lsbCByZXBsYWNlIHRoaXMgd2l0aCBw
eXRob24tcHlpbm90aWZ5IGFueXRpbWUuIFRoaXMgaXMgaW4gb2ZmaWNpYWwgYXJjaCBsaW51eCBy
ZXBvcy4KPiAKPiBDaGVlcnMgY2hyeXMKPiAKPiA+IEFtIDExLjA0LjIwMjIgdW0gMjA6Mjggc2No
cmllYiBMaW51eCBBMTF5IDxjaHJ5c0BsaW51eC1hMTF5Lm9yZz46Cj4gPiAKPiA+IO+7v0hvd2R5
LAo+ID4gCj4gPiBXZWxsIEkgbSBub3QgdGhlIG1haW50YWluZXIgb2YgdGhlIHB5dGhvbi1pbm90
aWZ5IHBhY2thZ2UuIElmIGl0IGRvZXMgbm90IGJ1aWxkIHBsZWFzZSBjb250YWN0IHRoZSBtYWlu
dGFpbmVyLgo+ID4gCj4gPiBodHRwczovL2F1ci5hcmNobGludXgub3JnL3BhY2thZ2VzL3B5dGhv
bi1pbm90aWZ5Cj4gPiAKPiA+IE1heWJlIGkgd2lsbCByZXBsYWNlIHRoaXMgd2l0aCBweXRob24t
cHlpbm90aWZ5IGFueXRpbWUuIFRoaXMgaXMgaW4gb2ZmaWNpYWwgYXJjaCBsaW51eCByZXBvcy4K
PiA+IAo+ID4gQ2hlZXJzIGNocnlzCj4gPiAKPiA+IFZvbiBtZWluZW0gaVBob25lIGdlc2VuZGV0
Cj4gPiAKPiA+Pj4gQW0gMTEuMDQuMjAyMiB1bSAyMDoxMSBzY2hyaWViIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+ID4+PiAKPiA+
PiDvu79GYWlsZWQgdG8gYnVpbGQgYW5kIG1ha2UgdGhlIHB5dGhvbiBpbm90aWZ5IGR1ZSB0byBw
eXRob24yLW5vc2UgaXMgd2hhdCBJJ20gZ2V0dGluZy4gQWRkaXRpb25hbGx5IHRoZSBweXRob24t
aW5vdGlmeSB5b3UncmUgdXNpbmcgZm9yIHRoZSBzY3JpcHQgaXMgbWFya2VkIG91dCBvZiBkYXRl
LiBJJ2xsIHRyeSBwdXR0aW5nIGlub3RpZnkgYmFjayB3aXRoIHBpcCBhbmQgc2VlIGlmIHRoYXQg
Z2V0cyBhcm91bmQgaXQgYWdhaW4sIHRob3VnaCBJJ20gbm90IHN1cmUgd2h5IGl0J3MgZmFpbGlu
ZyB0byBidWlsZC4KPiA+PiAKPiA+PiBBbnkgb3RoZXIgQXJjaCB1c2VycyBydW5uaW5nIGludG8g
dGhpcyBvciBpcyBpdCBqdXN0IG1lPwo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

