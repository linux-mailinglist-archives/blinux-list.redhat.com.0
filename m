Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 22B78341117
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 00:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616110521;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c9u1nrzoHbg/lKTgwod78lcF81WpwmsfvCD3nRwHKMc=;
	b=HbahYrCWGV5M0c5woDEi1EcOJU1PIPbaKflLnCStFB0h2aMM/4PFeJlX0HQrPleychCKoY
	OyL4d6sR7OGIcSxfeA4iD5f9VK0x/pWjYaNV5JVt9Z3nwz2GigA6KZ26x/+bxZ/SeYAnl8
	dAWfRWSPOzSrV+4cxTi6XoeH34qQ+uY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-500-ce5gP5V4Nk-sphjnNzFp0Q-1; Thu, 18 Mar 2021 19:35:19 -0400
X-MC-Unique: ce5gP5V4Nk-sphjnNzFp0Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C1B9881276;
	Thu, 18 Mar 2021 23:35:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36D9D1000358;
	Thu, 18 Mar 2021 23:35:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 036464BB7C;
	Thu, 18 Mar 2021 23:35:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12INZBYo025567 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 19:35:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 90285F809B; Thu, 18 Mar 2021 23:35:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B0D1F97F0
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:35:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1BB25185A79C
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 23:35:09 +0000 (UTC)
Received: from mail2.protonmail.ch (mail2.protonmail.ch [185.70.40.22])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-17-41Lb2_dQNqe-3UuWN0O-vA-1; Thu, 18 Mar 2021 19:35:06 -0400
X-MC-Unique: 41Lb2_dQNqe-3UuWN0O-vA-1
Date: Thu, 18 Mar 2021 23:34:55 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Are Their Any Other Graphical Screen-Readers in Linux,
	Other than ORCA?
Message-ID: <7fad9a07-f428-f096-1a4e-2ef5589a1388@protonmail.com>
In-Reply-To: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
References: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12INZBYo025567
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgphcyBmb3IgdGhlIGRpZmZlcmVudCBzY3JlZW5yZWFkZXJzIHBhcnQsIEkgcGVyc29u
YWxseSBkb24ndCBrbm93IGFib3V0CmFueSBmb3IgZ3VpLCBidXQgdGhlIHRydXRoIGlzIHRoYXQg
SSdtIHN0aWxsIHJhdGhlciBuZXcgb24gdGhlIGZyZWUKcGxhdGZvcm0gKHdpbGwgYmUgYSB5ZWFy
IGluIHRoZSBlbmQgb2YgYXByaWwpLCBzbyBJIG1heSBoYXZlIG1pc3NlZApzb21ldGhpbmcuCgoK
QXMgZm9yIHRoZSBleHBlcmllbmNlIHBhcnQsIHBlcmhhcHMgaXQgY291bGQgaGVscCBleHBsYWlu
aW5nIGEgYml0LCB3aGF0CmFyZSB5b3Ugbm90IGNvbmZvcnRhYmxlIHdpdGgsIGFuZCB3aGF0IGFy
ZSB5b3VyIGV4cGVjdGF0aW9ucz8KCgpGb3IgZXhhbXBsZSwgYXMgc29tZW9uZSBjb21pbmcgZnJv
bSBXaW5kb3dzLCBpdCB3YXMgYSB2ZXJ5IG5pY2Ugc3VycHJpc2UKZm9yIG1lIHRvIHNlZSBhIGZv
bGRlcnMgZXhwbG9yZXIsIHdoaWNoIGRvZXNuJ3QgdGhyb3cgbWUgdG8gdGhlIHVuaXZlcnNlCmV2
ZXJ5IHRpbWUgSSBvcGVuIHNvbWV0aGluZy4gOikKCgpUaGUgaW50ZXJmYWNlIGlzIGdlbmVyYWxs
eSBxdWl0ZSBmYXN0LCBoYXMgYWxtb3N0IG5vIHVud2FudGVkIGVsZW1lbnRzCmFuZCBoYWQgYWxs
IHRoZSBmdW5jdGlvbnMgSSBuZWVkZWQgc28gZmFyLgoKTm90ZSB0aGF0IEknbSBydW5uaW5nIFVi
dW50dSBtYXRlIDIwLjA0LCA2NC1iaXQuCgoKQnV0IGV2ZXJ5b25lIGhhcyBkaWZmZXJlbnQgdGFz
dGVzLCB0aHVzIHNwZWNpZnlpbmcgdGhlIGV4YWN0IHByb2JsZW1zCmNhbiBoZWxwIHRvIGZpbmQg
YXBwcm9wcmlhdGUgc29sdXRpb25zIChpZiB0aGV5IGRvIGV4aXN0KS4KCgpCZXN0IHJlZ2FyZHMK
CgpSYXN0aXNsYXYKCgpExYhhIDE5LiAzLiAyMDIxIG8gMDoxNCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IFdlbGwsIDEgb2YgbXkgc2lnaHRlZCBMaW51
eCBmcmllbmRzIHRoaW5rcyB0aGUgcmVhc29uIEkgYW0gbm90IGNvbWZvcnRhYmxlIGluCj4gT1JD
QSBoYXMgbW9yZSB0byBkbyB3aXRoIGFzIGhlIGNhbGxzIGl0LCAidHlsaW5nIiBIZSB0aGlua3Mg
YW5vdGhlciBkZXNrdG9wCj4gbWlnaHQgYmUgdGhlIHRyaWNrPyBTb21lIGJhY2tncm91bmQsIHdo
ZW4gSSB3YXMgcHJhY3RpY2x5IGRyYWdnZWQKPiBga2lja2luZy1hbmQtc2NyZWFtaW5nIGluIHRv
IHdpbmRvd3MgaW4gbGF0ZSAxOTk3LCBJIGRpZCBtYW5hZ2UgdG8gZ2V0IGEgZmVlbAo+IGZvciBh
IHdpbjk1Lzk4IGRlc2t0b3AsIHdoZXJlIGV2ZXJ5dGhpbmcgd2FzIHVwLWFuZC1kb3duLiBCdXQg
b25jZSB0aGV5Cj4gc3dpdGNoZWQgdG8gd2luZG93cyBleHBsb3JlciwgdGhleSBiYXNpY2x5IGxv
c3QgbWUuIFNvIGFuIG9idmlvdXMgMiBxdWVzdGlvbnM/Cj4gQXJlIHRoZWlyIGFueSBvdGhlciBh
bHRlcm5hdGl2ZXMgdG8gT1JDQT8gQW5kIGlmIHRoYXQgd2VyZSBhbiBvbmx5IGNob2ljZSwgYXJl
Cj4gdGhlaXIgc2ltcGxlciBkZXNrdG9wcyB3aGljaCB3b3VsZCBoYXZlIG1vcmUgb2YgIGEgZmVl
bCBJIGFtIG1vcmUgdXNlZCB0bz8gQW4KPiBvbmx5IG90aGVyIGNob2ljZSwgd2hpY2ggd29uJ3Qg
Y29tcGlsZSBub3cgaXMgTFNSIGZyb20gYXJvdW5kIDIwMDcuCj4gSSBhbSBjZXJ0YWlubHkgcmF0
aGVyIGNvbnRlbnRlZCB3aXRoIGEgc3RyYWlnaHQgY29uc29sZSwgYnV0IGZvciBtYW55IHNpdGVz
LAo+IGdyYXBoaWNhbCBtYXkgYmUgYW4gYWx0ZXJuYXRpdmUsIHdoaWNoIGEgQ2hyb21lYm9vayB3
aXRoIENocm9tZXZveCBoYXMgbm90Cj4gcmVhbGx5IG9mZmVyZWQuIFRoYW5rcyBzbyBtdWNoIGlu
IGFkdmFuY2UgZm9yIHlvdXIgYW5hbHlzaXMuIEFsc28sIEkgdHJ1c3QKPiB0aGVyZSBhcmUgbWFu
eSBtb3JlIGhpZXIgcXVhbGl0eSB2b2ljZXMgaW4gZ3JhcGhpY2FsPwo+IENoaW1lCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

