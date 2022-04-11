Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3064B4FC46F
	for <lists+blinux-list@lfdr.de>; Mon, 11 Apr 2022 20:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649703248;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GwUtTfjFIuiIcNDjhrS8Ptgvdx4z48s7keMhkJel5RY=;
	b=WSul4JwgvIlIDwFm7P4vZCqkVB0tgfxpUxDPbYWYy61JaRsFc6ZOiBu71wm4OjlPj1wWLR
	6pRnzmGJ4WHMCJotECjPO2TIdmmD6QXOlPdPPYARM31k2n9poD3caBqSAPiaW/upn90UIQ
	AwWCST9PVv+BP/VVRMDVpOrQVCypAeM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-412-H9ziQTghMgS5eu_1x1o5Lw-1; Mon, 11 Apr 2022 14:54:06 -0400
X-MC-Unique: H9ziQTghMgS5eu_1x1o5Lw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0713618E528B;
	Mon, 11 Apr 2022 18:54:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3FFC04292C2;
	Mon, 11 Apr 2022 18:54:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 693481940376;
	Mon, 11 Apr 2022 18:54:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 11 Apr 2022 19:53:47 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Dragonfm history vs show hidden
References: <425FD1FA-D2B3-4C49-9048-1CC65D43315F@linux-a11y.org>
 <mailman.7755.1649702589.111203.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7755.1649702589.111203.blinux-list@redhat.com>
Message-ID: <mailman.7826.1649703242.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2hlY2tlZCB0aGUgQVVyIGFuZCB0aGF0IHBhY2thZ2UgaXMgZmxhZ2dlZCBvdXQgb2YgZGF0ZS4g
UHl0aG9uMi1ub3NlIGRvZXNuJ3Qgc2VlbSogZnJvbSBhIHF1aWNrIGxvb2sgdG8gYmUgaW4gdGhl
IHJlcG9zIGFueXdoZXJlLiBObyB5b3UncmUgbm90IHRoZSBtYWludGFpbmVyIGJ1dCBpdCBtYWtl
cyBpdCBpbXBvc3NpYmxlIHRvIGJ1aWxkIGF0IHByZXNlbnQgZHVlIHRvIG1pc3NpbmcgZGVwZW5k
ZW5jaWVzIHRoYXQgYXJlIG5vdCBpeSB0aGUgQVVSIG9yIHJlcG9zLCBzbyBoZW5jZSB3aHkgSSBh
c2tlZCBpbiBteSBsYXN0IG1lc3NhZ2UgdG8gcmV2ZXJ0IHRoZSBzY3JpcHQgYW5kIHNlZSBpZiBj
aGFuZ2luZyB0byB0aGUgcHl0aG9uLXBpbm90aWZ5IG9uZSB3b3VsZCB3b3JrIHdpdGhvdXQgdG9v
IG11Y2ggcmV0b29saW5nIGhvd2V2ZXIgc2luY2UgSSdtIG5vdCBmYW1pbGlhciB3aXRoIHRoYXQg
cGFja2FnZSBhdCBhbGwuCgpPbiBNb24sIEFwciAxMSwgMjAyMiBhdCAwODo0MzowNFBNICswMjAw
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhvd2R5LAo+IAo+
IFdlbGwgSSBtIG5vdCB0aGUgbWFpbnRhaW5lciBvZiB0aGUgcHl0aG9uLWlub3RpZnkgcGFja2Fn
ZS4gSWYgaXQgZG9lcyBub3QgYnVpbGQgcGxlYXNlIGNvbnRhY3QgdGhlIG1haW50YWluZXIuCj4g
Cj4gaHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdlcy9weXRob24taW5vdGlmeQo+IAo+
IE1heWJlIGkgd2lsbCByZXBsYWNlIHRoaXMgd2l0aCBweXRob24tcHlpbm90aWZ5IGFueXRpbWUu
IFRoaXMgaXMgaW4gb2ZmaWNpYWwgYXJjaCBsaW51eCByZXBvcy4KPiAKPiBDaGVlcnMgY2hyeXMK
PiAKPiA+IEFtIDExLjA0LjIwMjIgdW0gMjA6Mjggc2NocmllYiBMaW51eCBBMTF5IDxjaHJ5c0Bs
aW51eC1hMTF5Lm9yZz46Cj4gPiAKPiA+IO+7v0hvd2R5LAo+ID4gCj4gPiBXZWxsIEkgbSBub3Qg
dGhlIG1haW50YWluZXIgb2YgdGhlIHB5dGhvbi1pbm90aWZ5IHBhY2thZ2UuIElmIGl0IGRvZXMg
bm90IGJ1aWxkIHBsZWFzZSBjb250YWN0IHRoZSBtYWludGFpbmVyLgo+ID4gCj4gPiBodHRwczov
L2F1ci5hcmNobGludXgub3JnL3BhY2thZ2VzL3B5dGhvbi1pbm90aWZ5Cj4gPiAKPiA+IE1heWJl
IGkgd2lsbCByZXBsYWNlIHRoaXMgd2l0aCBweXRob24tcHlpbm90aWZ5IGFueXRpbWUuIFRoaXMg
aXMgaW4gb2ZmaWNpYWwgYXJjaCBsaW51eCByZXBvcy4KPiA+IAo+ID4gQ2hlZXJzIGNocnlzCj4g
PiAKPiA+IFZvbiBtZWluZW0gaVBob25lIGdlc2VuZGV0Cj4gPiAKPiA+Pj4gQW0gMTEuMDQuMjAy
MiB1bSAyMDoxMSBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+Ogo+ID4+PiAKPiA+PiDvu79GYWlsZWQgdG8gYnVpbGQgYW5k
IG1ha2UgdGhlIHB5dGhvbiBpbm90aWZ5IGR1ZSB0byBweXRob24yLW5vc2UgaXMgd2hhdCBJJ20g
Z2V0dGluZy4gQWRkaXRpb25hbGx5IHRoZSBweXRob24taW5vdGlmeSB5b3UncmUgdXNpbmcgZm9y
IHRoZSBzY3JpcHQgaXMgbWFya2VkIG91dCBvZiBkYXRlLiBJJ2xsIHRyeSBwdXR0aW5nIGlub3Rp
ZnkgYmFjayB3aXRoIHBpcCBhbmQgc2VlIGlmIHRoYXQgZ2V0cyBhcm91bmQgaXQgYWdhaW4sIHRo
b3VnaCBJJ20gbm90IHN1cmUgd2h5IGl0J3MgZmFpbGluZyB0byBidWlsZC4KPiA+PiAKPiA+PiBB
bnkgb3RoZXIgQXJjaCB1c2VycyBydW5uaW5nIGludG8gdGhpcyBvciBpcyBpdCBqdXN0IG1lPwo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

