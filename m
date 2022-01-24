Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6954976CC
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jan 2022 01:51:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642985517;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IDJ+1gxF8i0Y12ImcYQ/IqrPMS2zM39Iiy6/HU2Dc+4=;
	b=WHRoN8d6gn98QJD1oXvjRsfDVSeGKEeKf5cnKUmgIM8QuDKjKf2h/Y2jTMXwagMcZEVNQo
	/mKnYuie8YvZRre1GJ+95rr3Wp/u8FfRDLz3ISWkO3LAbxzLl4KLpeKT2HKazlg4GGcs4o
	zia7BQ/LqmsXluoRAj2zmleOBXnZ9xI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-570-509cM0qeOhednJtTLMvmsg-1; Sun, 23 Jan 2022 19:51:53 -0500
X-MC-Unique: 509cM0qeOhednJtTLMvmsg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CD6D1853020;
	Mon, 24 Jan 2022 00:51:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9C5C78DD4;
	Mon, 24 Jan 2022 00:51:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2986B4BB7B;
	Mon, 24 Jan 2022 00:51:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20O0pVjq014397 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 19:51:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5D5681402407; Mon, 24 Jan 2022 00:51:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59DE61402403
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 00:51:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 20DBC80A0B1
	for <blinux-list@redhat.com>; Mon, 24 Jan 2022 00:51:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-14-SptxCJ_4MZqv4jSzYhLSNQ-1; Sun, 23 Jan 2022 19:51:29 -0500
X-MC-Unique: SptxCJ_4MZqv4jSzYhLSNQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jhrym2LHtz3lZr
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 19:51:28 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jhrym1GH5zcbc; Sun, 23 Jan 2022 19:51:28 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jhrym0fn8zcbP
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 19:51:28 -0500 (EST)
Date: Sun, 23 Jan 2022 19:51:27 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Configuring ratpoison
In-Reply-To: <64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
Message-ID: <e0e9740-3cd8-37ee-936-575e53672dc2@panix.com>
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
	<64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20O0pVjq014397
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBnb3QgcmF0cG9pc29uIGFuZCBzdHJ5Y2huaW5lIGluc3RhbGxlZCBhbmQgcmFuIHRoZSBzZXR1
cC5zaCBzY3JpcHQgaW4Kc3RyeWNobmluZS4gIFRoZSBmaXJzdCBzY3JlZW4gb2Ygb3B0aW9ucyBJ
IGRpZG4ndCB1bmRlcnN0YW5kIHNvIGhpdCBlbnRlcgpvbiB0aGF0IHNjcmVlbiB3aXRob3V0IHNl
bGVjdGluZyBhbnl0aGluZy4gIElmIEkgaGFkIHRvIGd1ZXNzLCBJJ2QgZ3Vlc3MKdGhhdCB3YXMg
YSBsYW5ndWFnZSBzZWxlY3Rpb24gc2NyZWVuIGJ1dCBlbmdsaXNoIHNvIGZhciBhcyBJIGNvdWxk
IHRlbGwKd2Fzbid0IG9uIHRoYXQgc2NyZWVuLgoKCk9uIFN1biwgMjMgSmFuIDIwMjIsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhpIEJyYW5kdCwKPgo+IEkg
Zm9yd2FyZGVkIHlvdXIgcXVlc3Rpb24gdG8gbXkgZnJpZW5kIFN0b3JtIERyYWdvbiBvbiBJUkMg
YW5kIGhlcmUgaGlzIGhpcyBhbnN3ZXI6Cj4gKDE2OjI0OjIwKSBzdG9ybTogRGlkaWVyU3BhaWVy
OiBodHRwczovL2dpdC4ybWIuY29kZXMvfnN0b3JtZHJhZ29uMjk3Ni9zdHJ5Y2huaW5lCj4gKDE2
OjI1OjA5KSBzdG9ybTogVGhhdCdzIG15IHNjcmlwdCB0aGF0IGNyZWF0ZXMgYSAucmF0cG9pc29u
cmMuIEl0J3Mgd2hhdCBJIHVzZQo+IGV2ZXJ5IGRheSBmb3IgbXkgWCBzZXNzaW9uLgo+Cj4gQ2hl
ZXJzLAo+IERpZGllcgo+IC0tCj4gRGlkaWVyIFNwYWllcgo+IFNsaW50IG1haW50YWluZXIKPgo+
IExlIDIzLzAxLzIwMjIgPyAxNDo0MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhID9jcml0wqA6Cj4gPiBIaSBhbGwuCj4gPgo+ID4KPiA+IEkgaW5zdGFsbGVkIHJhdHBvaXNv
biBvbiBteSBTbGludCBzeXN0ZW0sIGFuZCBkb24ndCBoYXZlIGVpdGhlciB+Ly5yYXRwb2lzb25y
Ywo+ID4gb3IgL2V0Yy9yYXRwb2lzb24uCj4gPgo+ID4KPiA+IFdoZXJlIGNhbiBJIGdldCBhIGdv
b2QgcmF0cG9pc29uIGNvbmZpZyBmaWxlPyBEb2VzIG9uZSBvZiB0aGUgT3JjYSB1c2VycywgSSdk
Cj4gPiBhc3N1bWUgdGhhdCB3b3VsZCBiZSBtb3N0IG9mIHVzLCBoYXZlIG9uZSBvbiBnaXRodWIg
b3Igc29tZXdhcmU/Cj4gPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

