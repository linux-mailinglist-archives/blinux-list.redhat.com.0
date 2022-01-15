Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4C048F9A3
	for <lists+blinux-list@lfdr.de>; Sat, 15 Jan 2022 23:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642285365;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3iDBY+JDJd3J5AN6wqhPc6izz9uu+jwzqHNxWJfDA/U=;
	b=g+0T44WJSa23QMX5Lk6VhzEvg9DCG6o0mvzWKeZi8j6gV0yO7RrqUl89x3vjXMjNDvbrgi
	I/pz4pvIfDFc+15RgmpyGqTaPvSyBw21ffDG6nzJSCGmuO13+MEAN6jIrxfONMZJdUUUjT
	Jh5R/8pG7EhawwDcXQJZ2pOIm01JEME=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-653-rhdn7f5xPlSHXEd7izBgnQ-1; Sat, 15 Jan 2022 17:22:42 -0500
X-MC-Unique: rhdn7f5xPlSHXEd7izBgnQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8EA75652;
	Sat, 15 Jan 2022 22:22:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 980E25ED40;
	Sat, 15 Jan 2022 22:22:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6BF224BB7B;
	Sat, 15 Jan 2022 22:22:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20FMI5hl026605 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 Jan 2022 17:18:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 10380217B404; Sat, 15 Jan 2022 22:18:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AF15217B403
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 22:17:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28246101A52D
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 22:17:59 +0000 (UTC)
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch
	[185.70.43.27]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-184-pSfvkyBpO06Ac3WjVWmnHg-1; Sat, 15 Jan 2022 17:17:57 -0500
X-MC-Unique: pSfvkyBpO06Ac3WjVWmnHg-1
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com
	[188.165.51.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by mail-4321.protonmail.ch (Postfix) with ESMTPS id 4JbsqF3zc4z4xDr1
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 22:12:41 +0000 (UTC)
Date: Sat, 15 Jan 2022 22:12:28 +0000
To: blinux-list@redhat.com
Subject: Re: OCRdesktop 3.0 Released
Message-ID: <39fc22f1-042c-5fe9-f00f-d6c59c1fcd46@protonmail.com>
In-Reply-To: <357e9c39-17b9-74cd-3b83-085af1adc4fc@linux-a11y.org>
References: <357e9c39-17b9-74cd-3b83-085af1adc4fc@linux-a11y.org>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20FMI5hl026605
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQ2hyeXMsCgphaCwgZ3JlYXQgbmV3cyEgSSBjb25zaWRlciB0aGlzIGF3ZXNvbWUgcHJv
amVjdCB0byBiZSBhIGZ1bmRhbWVudGFsIGFuZAphYnNvbHV0ZWx5IGNyaXRpY2FsIHBhcnQgb2Yg
TGludXggYWNjZXNzaWJpbGl0eS4gVW5mb3J0dW5hdGVseSwgZGVzcGl0ZQpoaWdoIGVmZm9ydHMg
dG8gbWFrZSBzb2Z0d2FyZSBhcyBhY2Nlc3NpYmxlIGFzIHBvc3NpYmxlLCB0aGVyZSB3aWxsIGJl
CnN0aWxsIG1hbnkgaW5hY2Nlc3NpYmxlIGFwcGxpY2F0aW9ucyBvbiBhbGwgcGxhdGZvcm1zLCBm
b3IgcXVpdGUgYSBzb21lCnRpbWUuCgpUaGVyZWZvcmUsIGFuIE9DUiBzb2x1dGlvbiBmb3IgdGhl
c2UgY2FzZXMgaXMgYW4gYWJzb2x1dGUgbXVzdCBoYXZlIGZvcgphbGwgc2VyaW91cyBibGluZCB1
c2VycywgYW5kIEknZCBsaWtlIHRvIHRoYW5rIHlvdSB0aGF0IHlvdSdyZSBrZWVwaW5nCnRoaXMg
YWxpdmUgb24gTGludXgsIGFsb25nIGFsbCB0aGUgb3RoZXIgZ3JlYXQgd29yayB5b3UncmUgZG9p
bmcuCgoKT0NSRGVza3RvcCBjYW4gYmUgaW5zYW5lbHkgaGFuZHksIEkndmUgdXNlZCBpdCBpbiBt
YW55IGFyZWFzIGZyb20KYWNjZXNzaWJpbGl0eSBvZiBub3JtYWwgTGludXggYXBwcywgdGhyb3Vn
aCBpbnN0YWxsaW5nIHNvZnR3YXJlIHVzaW5nCndpbmUgdG8gZmlyaW5nIHVwIHZpcnR1YWwgbWFj
aGluZXMsIHdoaWNoIHdvdWxkIGJlIGltcG9zc2libGUgd2l0aG91dCBhbgplcXVpcG1lbnQgbGlr
ZSB0aGlzLgoKClNvIGFnYWluLCB0aGFuayB5b3UhCgoKS2VlcCB1cCB0aGUgZ3JlYXQgam9iIQoK
CkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMTIuIDEuIDIwMjIgbyAyMjoxMiBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IEhvd2R5IExpc3Qs
Cj4KPiBzb3JyeSBmb3IgY3Jvc3MgcG9zdGluZywgYnV0IEkgdGhvdWdodCB5b3UgbWlnaHQgYmUg
aW50ZXJlc3RlZCBpbnRvIHRoYXQuCj4gSSBqdXN0IHJlbGVhc2VkIE9DUmRlc2t0b3AgMy4wIHdp
dGggc29tZSB2ZXJ5IG5pY2Ugc3R1ZmYgOikuCj4gRm9yIHRob3NlIHdobyBkb24ndCBrbm93IGFi
b3V0IE9DUmRlc2t0b3A6Cj4gaHR0cHM6Ly93aWtpLmFyY2hsaW51eC5vcmcvdGl0bGUvT2NyZGVz
a3RvcAo+Cj4gMS4gaSByZW1vdmVkIHVubWFpbnRhaW5lZCAidGVzc2Vyd3JhcCIgYmluZGluZ3Mg
YW5kIHVzZSAicHl0ZXNzZXJhY3QiCj4gbm93LiBUaGlzIGlzIHZlcnkgZ29vZCBtYWludGFpbmVk
IGFuZCBpcyBhYmxlIHRvIHVzZSBUZXNzZXJhY3QgNC4xLnggYW5kCj4gVGVzc2VyYWN0IDUuMC4g
TGFzdCBkaWRudCB3b3JrIHdpdGggdGVzc2Vyd3JhcCBhbnltb3JlIGNhdXNlIGJ5IGJyb2tlbiBB
UEkuCj4gMi4gUmVtb3ZlZCBhbGwgZGVwcmVjYXRpb24gd2FybmluZ3MsIE1vZGVybml6ZSB0aGUg
Y29kZSwgdXNlIHNwYWNlcwo+IGluc3RlYWQgb2YgVGFiIGFuZCBhbGwga2luZCBvZiBjbGVhbnVw
IGdvb2RuZXNzLgo+IDMuIGkgYWRkZWQgYW4gdmVyeSBuaWNlIG5ldyBmZWF0dXJlIHRvIGFuYWx5
emUgdGhlIGNvbG9yIG9mIGFuIGdpdmVuCj4gVGV4dCBhbmQgaXRzIGJhY2tncm91bmQuIFNvIHlv
dSBjYW4gZmlndXJlIHdoYXQgdGV4dCBpcyBoaWdobGlnaHRlZCwgaGFzCj4gdGhlIGZvY3VzIGFu
ZCBhbGwga2luZCBvZiB1c2VmdWwgc3R1ZmYuIGl0cyBvZmYgYnkgZGVmYXVsdCBhbmQgY291bGQg
YmUKPiB1c2VkIGJ5ICItTyIgZmxhZyBhcyBwYXJhbWV0ZXIuIEZvciB0aGlzIHdlIG5lZWQgc29t
ZSBuZXcgZGVwZW5kZW5jeQo+IHdlYmNvbG9yIGFuZCBzY2lweS4KPgo+IFNlZSB0aGUgZnVsbCBz
dG9yeSBoZXJlOgo+IGh0dHBzOi8vd3d3LnBhdHJlb24uY29tL3Bvc3RzL29jci1kZXNrdG9wLTYw
ODk1MjkyCj4gaHR0cHM6Ly93d3cucGF0cmVvbi5jb20vcG9zdHMvY29sb3ItYW5hbHl6aW5nLTYw
OTg4NTU1Cj4KPiBXaGVyZSB0byBnZXQ6Cj4KPiBodHRwczovL2dpdGh1Yi5jb20vY2hyeXM4Ny9v
Y3JkZXNrdG9wL3JlbGVhc2VzL3RhZy92My4wCj4KPiBEZXBlbmN5czoKPiAtIHB5dGhvbjMKPiAt
IHRlc3NlcmFjdAo+IC0gdGVzc2VyYWN0LWxhbmctPHlvdXJMYW5ndWFnZUNvZGU+Cj4gLSBweXRo
b24zLXBpbGxvdwo+IC0gcHl0aG9uLWF0c3BpCj4gLSBweXRob24tcHl0ZXNzZXJhY3QKPiAtIGxp
YnduY2szCj4gLSBHVEszCj4gT3B0aW9uYWwgRGVwZW5jeXMKPiAtIHB5dGhvbi1zY2lweSAoZm9y
IGNvbG9yIGRldGVjdGlvbikKPiAtIHB5dGhvbi13ZWJjb2xvcnMgKGZvciBjb2xvciBkZXRlY3Rp
b24pCj4KPiBJIGhvcGUgeW91IGhhdmUgYXMgbXVjaCBmdW4gd2hpbGUgdXNpbmcgaXQgYXMgaSBo
YWQgd2hpbGUgd29ya2luZyBvbiBpdCA6KS4KPiBoYXZlIGEgZ29vZCBkYXkgYW5kIHN0YXkgaGVh
bHRoeSBpbiB0aG9zZSBjcmF6eSB0aW1lcy4KPgo+IGNoZWVycyBjaHJ5cwo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

