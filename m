Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 085C0460A5D
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 22:38:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638135480;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c7/7aP940YK30eyw/STIiL1RnK+JVV6xl/Oqr8cFYIw=;
	b=BBKtC1CEzy5sZt9Ugs+VKOJSaDB/tQtrQDLtcrVaATys6H+WHUzKY9UDCRJ+0ftipuYbu3
	TiegJMvXtyz9qJsYD5NG3ldHsPM1sqnlm5fi5+RJAjjBXTvSJnwFB5lP4e5WXpu9U9BQ+6
	mkC8YnJuYrEg5dWKVJmIx7GV6MDycaU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-592-haW90nudOgGz9N8mp3P56g-1; Sun, 28 Nov 2021 16:37:56 -0500
X-MC-Unique: haW90nudOgGz9N8mp3P56g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 998C9DC22;
	Sun, 28 Nov 2021 21:37:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 373BF694BF;
	Sun, 28 Nov 2021 21:37:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6B9AC4BB7C;
	Sun, 28 Nov 2021 21:37:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASLanZS024463 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 16:36:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DE9E340CFD13; Sun, 28 Nov 2021 21:36:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D952F40CFD0A
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 21:36:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BEFCA811E76
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 21:36:48 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-211-9P8We94LPeWiUS5OQv5sRw-1;
	Sun, 28 Nov 2021 16:36:47 -0500
X-MC-Unique: 9P8We94LPeWiUS5OQv5sRw-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id CB128A3EE7
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:36:04 +0100 (CET)
Message-ID: <03bc670f-b0ff-dab1-302d-e80e2423349e@slint.fr>
Date: Sun, 28 Nov 2021 22:36:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
To: blinux-list@redhat.com
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
	<ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
	<91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
	<c692751c-9531-b44d-4f30-324fed10f80b@slint.fr>
	<Pine.LNX.4.64.2111281548330.113324@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2111281548330.113324@server2.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ASLanZS024463
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

S2FyZW4KTGUgMjgvMTEvMjAyMSDDoCAyMTo1OCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBhIMOpY3JpdMKgOgo+IERpZGllciwKPiBPbiBTdW4sIDI4IE5vdiAyMDIxLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBQUyBhbmQgT1Q6IE15IGZy
aWVuZCwgaXNuJ3QgaXQgdGltZSBlbm91Z2ggdGhhdCB5b3UgbWFuYWdlIHlvdXIgTGludXggCj4+
IHN5c3RlbQo+PiB5b3Vyc2VsZiBtb3N0IG9mIHRoZSB0aW1lLCBub3QgcmVseWluZyBvbiB5b3Vy
IExpbnV4IHNwZWNpYWxpc3Qgb3IgTGludXgKPj4gcGVyc29uLCBob3dldmVyIHlvdSBjYWxsIHRo
ZXk/Cj4gTWF5IEkgYXNrIGhvdyB5b3UgY2FuIG1ha2UgYSBzdGF0ZW1lbnQgYWJvdXQgdGhlIGxp
ZmUgc2l0dWF0aW9uIG9mIAo+IGFub3RoZXIgcGVyc29uPwo+IFVubGVzcyB5b3UgYXJlIHRoaW5r
aW5nIHRoYXQgZXZlcnkgTGludXggdXNlciBpcyBsaWtlIHlvdXJzZWxmIG9mIGNvdXJzZS4KPiBU
aGUgY28td29ya2luZyBzcGFjZSB3aGVyZSBteSBUb3JvbnRvIG9mZmljZSBpcyBiYXNlZCBoYXMg
YSB0ZWNobmljaWFuIAo+IHdobyB3ZSBhbGzCoCByZWx5IG9uIHRvIG1hbmFnZSB0aGUgbWFueSBk
aWZmZXJlbnQgdG9vbHMgaW5kaXZpZHVhbHMgdXNlIAo+IG9uIGEgZGFpbHkgYmFzaXMuLi5zbyB3
ZSBjYW4gZ2V0IG9uIHdpdGggdGhlIGJ1c2luZXNzIG9mIGRvaW5nIG91ciBqb2JzLgo+IExpa2V3
aXNlIEkgcGVyc29uYWxseSByZWx5IG9uIHRoZSBwcm9mZXNzaW9uYWwgZXhwZXJ0aXNlwqAgb2Yg
dGhvc2Ugd2hvIAo+IG1hbmFnZSBzaGVsbHdvcmxkLCBzbyBJIGNhbiBnZXQgb24gd2l0aCB3aGF0
IEkgYW0gZXhwZXJ0IGluLCBjcml0aWNhbCAKPiB3aGVuIHNvbWVvbmUgc2VlbXMgdG8gZG8gd2hh
dCB5b3UgYXJlIHN1Z2dlc3RpbmcsIHByb2plY3TCoCB0aGVpciAKPiBwZXJzb25hbCB1bmRlcnN0
YW5kaW5nwqAgb2YgTGludXggb250b8KgIHRoaXMgc2VydmljZS7CoCBTb21lb25lIGhhcyAKPiBk
YW1hZ2VkIGEgY3JpdGljYWwgcHJvZ3JhbcKgIHRoYXQgd2UgYXJlIGFsbCBmb3JjZWQgdG8gZGVh
bCB3aXRoIGF0IHRoZSAKPiB0aW1lLgo+IFdlIGhhdmUgZW5nYWdlZCBpbiB0aGlzIGRpc2N1c3Np
b24gYmVmb3JlLgo+IE9uZSByZWFzb24gc3BlYWtpbmcgcGVyc29uYWxseSB3aHkgSSBmZWVsIExp
bnV4IGVuam95cyBsZXNzIG9mIHRoZSAKPiBjb21tZXJjaWFsIG1hcmtldMKgIGlzIGJlY2F1c2Us
IHRvIHJlYWxseSBtYWtlIGl0IHdvcmssIHlvdSBtdXN0IGJlIGEgCj4gcHJvZ3JhbW1lci7CoCBF
c3BlY2lhbGx5IGdpdmVuIGFsbCB0aGUgbGF5ZXJzIG9mIHRoZSBkaXN0cmlidXRpb25zLCBhbmQg
Cj4gdGhlIG1hbnkgZGlzdHJpYnV0aW9ucyBpbnZvbHZlZC4KPiBJZiBjaGltZSBoYXMgbWFuYWdl
ZCB0byBmaW5kIHNvbWVvbmUgaW50ZXJlc3RlZCBlbm91Z2ggdG8gd3JpdGUgc2NyaXB0cyAKPiBm
b3IgaGltLCBhbmTCoMKgIGluY29ycG9yYXRlIExpbnV4IGVsZW1lbnRzIGZvciBoaW0sIHdobyBh
cmUgeW91IHRvIGp1ZGdlPwo+IEhpcyBsaWZlLCBoaXMgbWFjaGluZSwgYW5kIGhpcyByZXNvdXJj
ZXMuCj4gS2FyZW4KCkNoaW1lLCBJIGFtIHNvcnJ5IGlmIHlvdSB0b29rIG15IHN0YXRlbWVudCBh
cyBhIGp1ZGdtZW50IGFuZCBhcG9sb2dpemUuCgpJIHdyb3RlIGl0IGJlY2F1c2UgZnJvbSBvdXIg
cHJldmlvdXMgZW1haWwgZXhjaGFuZ2VzIEkgYW0gdW5kZXIgdGhlIAppbXByZXNzaW9uCnRoYXQg
eW91IGhhdmUgZW5vdWdoIHNraWxscyB0byBkbyB0aGluZ3MgdGhhdCB5b3VyIGxpbnV4IHBlcnNv
biBkb2VzIGZvciB5b3UKYW5kIHJlbWVtYmVyaW5nIHRoZSBvbGQgc2F5aW5nOiBpZiB5b3UgZ2l2
ZSBzb21lb25lIGEgZmlzaCB5b3UgZmVlZCB0aGVtIApmb3IgYQpkYXksIGJ1dCBpZiB5b3UgdGVh
Y2ggdGhlbSB0byBmaXNoLCB5b3UgZmVlZCB0aGVtIGZvcmV2ZXIiLiBJIGFtIG5vdCBhCnByb2dy
YW1tZXIgbXlzZWxmLCBhbmQgZG8gYXNrIGZvciBoZWxwIHdoZW4gbmVlZGVkLgoKQnV0IHRoYXQn
cyBqdXN0IG15IHdheSBhbmQgYW55d2F5IEkgcmVhbGl6ZSB0aGF0IEkgc2hvdWxkIG5vdCBoYXZl
IApwb3N0ZWQgaW4gYQpwdWJsaWMgbWFpbGluZyBsaXN0IHNvLCBhZ2FpbiwgSSBhcG9sb2dpemUu
CgpLYXJlbiwgYWJvdXQgTGludXg6IEkgcGVyc29uYWxseSBwcmVmZXIgRnJlZUJTRCAoaGF2aW5n
IGluc3RhbGxlZCBHaG9zdEJTRCwKd2hpY2ggaXMgZWFzaWVyKSwgYnV0IHdpbGwgY29udGludWUg
dG8gYmFzZSBTbGludCBvbiBTbGFja3dhcmUgaWYgSSBjYW4gYXMKTGludXggaGFzIGEgd2lkZXIg
aGFyZHdhcmUgc3VwcG9ydC4gQnV0IEkgYWdyZWUgdGhlcmUgYXJlIHRvbyBtYW55IExpbnV4CmRp
c3RyaWJ1dGlvbnMsIGRlc2t0b3BzLCBwYWNrYWdlcyBmb3JtYXRzIGV0Yy4KClBTIEkgd291bGRu
J3QgaGF2ZSBhZGRlZCB0byB0aGlzIGRpc3BlcnNpb24gb2YgZWZmb3J0cyBjcmVhdGluZyBTbGlu
dCwgCndvdWxkIG15CnByb3Bvc2FsIHRvIGhlbHAgaW50ZXJuYXRpb25hbGl6ZSBTbGFja3dhcmUg
YW5kIG1ha2UgaXQgbW9yZSBhY2Nlc3NpYmxlIGhhZApiZWVuIGFjY2VwdGVkLgoKQ2hlZXJzLApE
aWRpZXIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

