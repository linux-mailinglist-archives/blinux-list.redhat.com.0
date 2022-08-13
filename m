Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EA2591C54
	for <lists+blinux-list@lfdr.de>; Sat, 13 Aug 2022 20:47:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660416474;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q1yzkchXsmMl77T+dqbx/6gvYNqvZizTiLxgYnVP8xk=;
	b=Nps8XsGgxBqIC8g0JvhRUer2f3wuPy857X4HHXM9qmecDFSCpzR4uKoLdUZRW9EwCvcnl8
	V3gG04EbS4/iq6j7/cDtz2BsS9WTyjD92DHKyXQ949U9uFDsC/j2hpEi5Rjrs++tB7nOfN
	9CFxpZQHV74zHOMsBOwWtlgOgh7Zx7Y=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-644-jlhRBeycMsiPvEjWVJScIQ-1; Sat, 13 Aug 2022 14:47:51 -0400
X-MC-Unique: jlhRBeycMsiPvEjWVJScIQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D616229AA3B7;
	Sat, 13 Aug 2022 18:47:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 12EB340D282E;
	Sat, 13 Aug 2022 18:47:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9EFEA1946A52;
	Sat, 13 Aug 2022 18:47:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 13 Aug 2022 14:47:43 -0400 (EDT)
To: K0LNY_Glenn <glenn@ervin.email>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <02e001d8af3c$0d4cdfb0$80ffa8c0@Win7VM>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net><1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com><Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net>
 <871qtkrs03.fsf@zamazal.org> <02e001d8af3c$0d4cdfb0$80ffa8c0@Win7VM>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.443.1660416467.10506.blinux-list@redhat.com>
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
Cc: Milan Zamazal <pdm@zamazal.org>, Blinux-list@redhat.com,
 speakup@linux-speakup.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2VsbCB0ZWNobmljYWxseSBmcmVlZG9tIHNjaWVudGlmaWMgZG9lcyBub3QgZXhpc3QgYW55IGxv
bmdlciwgYmVpbmcgYm91Z2h0IApieSBhbm90aGVyIGNvbXBhbnkuClN0aWxsLCBJIGNhbiByZXNw
ZWN0IHdoeSB0aGV5LCBvciBudmRhIGhhdmUgbm90IGNyZWF0ZWQgdGhlaXIgdG9vbHMgZm9yIApM
aW51eC4KVGhhdCBpcyBiZWNhdXNlIGFzIEkgdW5kZXJzdGFuZCBpdCwgTGludXggaXMgIHF1aXRl
IGxpa2UgY2xheS4gWW91IGNhbiAKbW9sZCBhIGRpc3RyaWJ1dGlvbiBpbnRvIGFsbW9zdCBhbnl0
aGluZy4gdGhlcmUgYXJlIHZhcmlvdXMgCnBlcnNvbmlmaWNhdGlvbnMgb2YgdGhlIHN5c3RlbSwg
YWxsIHNvcnRzIG9mIHdheXMgYW5kIGNoYW5nZXMgYW5kIG9wdGlvbnMgCmZvciBjcmVhdGl2aXR5
Lgpob3dldmVyIGFkYXB0aXZlIHRvb2xzIGFyZSBvZnRlbiBleHRlbnNpb25zIG9mIHBoeXNpY2Fs
IGNoYXJhY3RlcmlzdGljcywgCmhhbmRzLCBleWVzLCBlYXJzLCBicmFpbnMsIGNvbWJpbmF0aW9u
cyBvZiB0aGVzZS4KVG8gYnVpbGQgc29saWQgYXNzaXN0aXZlIHRvb2xzIG9uZSBtdXN0IGhhdmUg
YSBzb2xpZCAgZm91bmRhdGlvbiBhcyBpdCAKd2VyZS4gIHRoYXQgaXMgcGFydCBvZiB3aHkgdGhl
cmUgaGF2ZSBuZWVkZWQgdG8gYmUgc28gZmV3IEFwcGxlICBlZmZvcnRzIGF0IAppbmNsdXNpb24s
IHRoZXkgIGNyZWF0ZWQgIHdpdGgsIGFuZCB0aGVuIGNyZWF0ZWQgaW4taG91c2UgYWRhcHRpdmUg
dG9vbHMgCmZvciB2YXJpb3VzICBwb3B1bGF0aW9ucyB0aGF0IHdlcmUgYnVpbHQgaW50byB0aGUg
c3lzdGVtLgpBbHRob3VnaCBNaWNyb3NvZnQgZGlkIG5vdCBib3RoZXIgdW50aWwgbXVjaCBsYXRl
ciwgaW4gdGhlb3J5IGF0IGxlYXN0LCB0aGUgCmNvbnNpc3RlbmN5IG9mIHdpbmRvd3MgaXMgd2hh
dCBtYWtlcyBpdCBwb3NzaWJsZSBmb3IgZnJlZWRvbSBvciB0aGUgZm9ybWVyIApndyAgbWljcm8g
b3IgbnZkYSB0byBjcmVhdGUgc29tZXRoaW5nIHRoYXQgY2FuIGluIHRoZW9yeSAgd29yay4KRmxv
b3IgZm9yIHRoZSBmdXJuaXR1cmUgaXMgc29tZXdoYXQgc29saWQuCkp1c3QgbXkgdGhvdWdodHMs
CgoKCk9uIFNhdCwgMTMgQXVnIDIwMjIsIEswTE5ZX0dsZW5uIHdyb3RlOgoKPiBJIHdvdWxkIGxp
a2UgdG8gc2VlIEZyZWVkb20gU2NpZW50aWZpYyBtYWtlIGEgSmF3cyBGb3IgTGludXguCj4gSkZM
Cj4gSSdkIGNlcnRhaW5seSBwYXkgdGhlIHllYXJseSByZW50YWwgZmVlIGZvciBpdCwgYW5kIGl0
IHdvdWxkIGJyaW5nIG1hbnkgbW9yZQo+IHVzZXJzIGludG8gTGludXguCj4gRlMgY291bGQsIHdp
dGggaXRzIHJlc291cmNlcywgcG9zc2libHkgbWFrZSBpdCBtb3JlIHJvYnVzdCB0aGFuIE9yY2Eu
Cj4KPiBHbGVubgo+IC0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0KPiBGcm9tOiAiTWlsYW4g
WmFtYXphbCIgPHBkbUB6YW1hemFsLm9yZz4KPiBUbzogPHNwZWFrdXBAbGludXgtc3BlYWt1cC5v
cmc+Cj4gQ2M6IDxCbGludXgtbGlzdEByZWRoYXQuY29tPgo+IFNlbnQ6IFNhdHVyZGF5LCBBdWd1
c3QgMTMsIDIwMjIgMTI6MDggUE0KPiBTdWJqZWN0OiBSZTogIkFjY2Vzc2liaWxpdHkgaW4gRmVk
b3JhIFdvcmtzdGF0aW9uIiAoZndkKQo+Cj4KPj4+Pj4+ICJLTCIgPT0gS2FyZW4gTGV3ZWxsZW4g
PGtsZXdlbGxlbkBzaGVsbHdvcmxkLm5ldD4gd3JpdGVzOgo+Cj4gICAgS0w+IFdoYXQgYm90aGVy
cyBtZSBtb3N0IGFyZSBoaXMgbGFjayBvZiBhY3R1YWwgcXVhbGlmaWNhdGlvbnMsIGFuZAo+ICAg
IEtMPiBhYnNvbHV0ZSBkaXNtaXNzYWwgb2Ygd2hhdCBoZSBoYXMgbm90IGV4cGVyaWVuY2VkLi5h
cyBpZiBoZQo+ICAgIEtMPiBkZWZpbmVzIExpbnV4IHVzYWdlIGZvciBldmVyeW9uZS4gIFRoYXQg
YXR0aXR1ZGUgaXMgZGFuZ2Vyb3VzLAo+ICAgIEtMPiBiZWNhdXNlIGhlIGlzIGVkdWNhdGluZyB0
aG9zZSBvdXRzaWRlIG9mIHRoZSBhY2Nlc3NpYmlsaXR5Cj4gICAgS0w+IGV4cGVyaWVuY2VzLCB3
aG8gd2lsbCBiZWxpZXZlIGhpcyBpZ25vcmFuY2UgaXMgZmFjdHVhbC4gIGhlIGhhcwo+ICAgIEtM
PiB0byBiZSBleHBlcnQsIGl0IGlzIGhpcyBqb2IuCj4KPiBIaSBLYXJlbiwKPgo+IEkga25vdyBM
dWthcyBwZXJzb25hbGx5IGFuZCBJIGFkbWlyZSBoaXMgc2tpbGxzIGFuZCBxdWFsaWZpY2F0aW9u
cy4gIEkKPiBhbHNvIGtub3cgZmlyc3QgaGFuZCB0aGF0IGhlIGlzIG9wZW4gdG8gY29uc3RydWN0
aXZlIGZlZWRiYWNrIGFuZCBJCj4gYmVsaWV2ZSBoZeKAmWQgYmUgaGFwcHkgdG8gYmUgY29ycmVj
dGVkIGFib3V0IHBvc3NpYmxlIHRlY2huaWNhbAo+IGluYWNjdXJhY2llcyBpbiB0aGUgaW50ZXJ2
aWV3LiAgSXQgbWF5IGJlIGFsc28gYSBnb29kIG9wcG9ydHVuaXR5IHRvCj4gZmluZCBvdXQgd2hh
dOKAmXMgcG9zc2libHkgbWlzc2luZyBpbiBtYWtpbmcgYW55Ym9keSBiZXR0ZXIgaW5mb3JtZWQu
Cj4KPiBBcyBmb3Ig4oCcYWJzb2x1dGUgZGlzbWlzc2FsIG9mIHdoYXQgaGUgaGFzIG5vdCBleHBl
cmllbmNlZOKAnSwgd2hhdAo+IHJlYXNvbmFibGUgZnJlZSBzb2Z0d2FyZSBhbHRlcm5hdGl2ZXMg
dG8gYSBsZXNzIG9yIG1vcmUgc3RhbmRhcmQgZGVza3RvcAo+IHdpdGggT3JjYSBhbmQgYSBzb2Z0
d2FyZSBzeW50aGVzaXplciBjYW4geW91IHNlZSBmb3IgYSBjb21tb24gYmxpbmQgdXNlcgo+IHdo
byBuZWVkcyB0byB1c2UgYSBmdWxseSB3b3JraW5nIHdlYiBicm93c2VyLCB0byByZWFkIGFuZCBw
cm9jZXNzIHRleHQKPiBkb2N1bWVudHMsIHRvIGJlIGNvbXBhdGlibGUgd2l0aCBvdGhlciBjb21w
dXRlciB1c2VycywgZXRjLj8KPgo+IEFuZCBsZXTigJlzIGJlIHJlYWxpc3RpYy4gIFdlIGNlbGVi
cmF0ZSBldmVyeSBzaW5nbGUgZGV2ZWxvcGVyIGhpcmVkIHRvCj4gaW1wcm92ZSBhY2Nlc3NpYmls
aXR5LiAgVGhpcyB0ZWxscyBzb21ldGhpbmcgYWJvdXQgdGhlIHN0YXRlIG9mIHRoZQo+IG1hdHRl
cnMuICBXZSBjYW5ub3QgZXhwZWN0IHRoYXQgYSBzaW5nbGUgcGVyc29uIHdpbGwgZml4IGFsbCB0
aGUga2luZHMKPiBvZiBhY2Nlc3NpYmlsaXR5IHByb2JsZW1zIGluIGFsbCB0aGUgZW52aXJvbm1l
bnRzLiAgTHVrYXMgd29ya3MgYXQgaGlzCj4gam9iIGZvY3VzaW5nIG9uIGNlcnRhaW4gYXJlYXMg
Y3VycmVudGx5IHNlZW4gdGhlcmUgYXMgdXJnZW50IG9uZXMgYW5kIEkKPiBhcHByZWNpYXRlIHRo
aXMgb3Bwb3J0dW5pdHkuICBBbnlib2R5IGVsc2Ugc2VlaW5nIGEgbmVlZCB0byB3b3JrIG9uCj4g
b3RoZXIgYXJlYXMgaXMgd2VsY29tZSB0byBjb250cmlidXRlIHRvIHdoYXRldmVyIHNlZXMgZml0
LCBhcyBJIGRvLgo+Cj4gUmVnYXJkcywKPiBNaWxhbgo+Cj4KPgo+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

