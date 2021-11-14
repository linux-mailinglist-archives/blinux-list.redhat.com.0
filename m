Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E97D844F647
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 04:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636859205;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+FjcdreccXvkEzWBPqEHPx75q2dOa7Q5ddAQFADR9as=;
	b=S4fKHyzAHtNTHTzVZY8tSazPVZ+AOCl5F6wrEYOC/CLMlkpNzDGUjzRU/e1x9ZlW73V0II
	cXi3W9jkhQ3hqxytC10S/r3VU0dO3ZukrHb56Qxc/9DC2a9XVl4ByG1SoS9d+rxE1WSB/O
	x5GxoFqVrqGR1l3mMtt3pFFfWMhhsOM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-417-qrh-HTREM1uoolwdp8avZw-1; Sat, 13 Nov 2021 22:06:41 -0500
X-MC-Unique: qrh-HTREM1uoolwdp8avZw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C83E104ECE6;
	Sun, 14 Nov 2021 03:06:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 868A8101E59B;
	Sun, 14 Nov 2021 03:06:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C4A8E181A1D0;
	Sun, 14 Nov 2021 03:06:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AE36Mgi020086 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 22:06:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 588AB1121319; Sun, 14 Nov 2021 03:06:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5387D112131B
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 03:06:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F2E68007B1
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 03:06:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-261-73KtMw6tM2CxDtdReH5tKA-1; Sat, 13 Nov 2021 22:06:17 -0500
X-MC-Unique: 73KtMw6tM2CxDtdReH5tKA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HsHK51snzz2jpG
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 22:06:17 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HsHK50yfxzcbc; Sat, 13 Nov 2021 22:06:17 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HsHK50bSQzcbP
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 22:06:17 -0500 (EST)
Date: Sat, 13 Nov 2021 22:06:16 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
In-Reply-To: <Pine.LNX.4.64.2111132009150.2138967@server2.shellworld.net>
Message-ID: <alpine.NEB.2.23.451.2111132205220.16348@panix1.panix.com>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
	<CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
	<Pine.LNX.4.64.2111131952300.2138967@server2.shellworld.net>
	<ed697912-0e80-3ceb-3de4-528157bdd61a@gmail.com>
	<Pine.LNX.4.64.2111132009150.2138967@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AE36Mgi020086
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

UHJvYmFibHkgZHJlYW1ob3N0IGNvdWxkIGRvIHdpdGggdXBkYXRlcyBvZiBhbGwgb2YgaXRzIHNo
ZWxsIHNvZnR3YXJlCmluY2x1ZGluZyBhbHBpbmUuCgoKT24gU2F0LCAxMyBOb3YgMjAyMSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gT2ggYnV0IG5vIQo+IFBp
bmUgd2FzIGNyZWF0ZWQgZmlyc3QsIGlzIHNwZWFraW5nIHBlcnNvbmFsbHksIGZhciBtb3JlIHN0
YWJsZSBmb3IgdGhhdAo+IHJlYXNvbi4KPiBhbHBpbmUgaXMgYSBjb250aW51YXRpb24gb2YgdGhl
IHBpbmUgcHJvamVjdCwgcHJvdmlkaW5nIGFkZGl0aW9uYWwgb3B0aW9ucywKPiBhbmQgYWJsZSB0
byBiZSBJbmNvcnBvcmF0ZWQgaW50byAgc29tZSBleHRyYSB0aGluZ3MgdGhlc2UgZGF5cyBsaWtl
ICB0aG9zZQo+IGtleXMgc29tZSBtYWlsIHNlcnZpY2VzIHVzZS4KPiBJIGtub3cgSSBhbSBub3Qg
b2JqZWN0aXZlLCBBbHBpbmUgYXMgaW5zdGFsbGVkIGFuZCBjb25maWd1cmVkIGJ5IGRyZWFtaG9z
dCBpcwo+IGZhciBsZXNzIHN0YWJsZSB0byBteSB0YXN0ZXMuCj4gSSBkYXJlIHNheSBpdCBpcyBh
IG1hdHRlciBvZiBwZXJzb25hbCBjaG9pY2VzLCBob3cgaW1wb3J0YW50IGl0IGlzIHRvIHlvdSB0
aGF0Cj4geW91ciBjbGllbnQgaXMgIHN0aWxsIHVuZGVyIGN1cnJlbnQgZGV2ZWxvcG1lbnQuCj4K
Pgo+Cj4gT24gU2F0LCAxMyBOb3YgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPgo+ID4gR29vZCBmb3IgeW91IGFuZCBQaW5lO8KgIExPTC7CoCBOb3Qgc3Vy
ZSBJIGtub3cgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBQaW5lCj4gPiBhbmQgQWxwaW5lOyB0aGV5
IGFyZSBpZGVudGljYWwgaW4gYWxsIHJlc3BlY3RzIEkgaGF2ZSBlbmNvdW50ZXJlZCwgYW55d2F5
LsKgCj4gPiBNYXliZSBpdCdzIGEgcXVlc3Rpb24gb2YgYnJhbmRzIG9yIGxpY2Vuc2luZz/CoCBF
bG0gaXMgYWxzbyBnb29kLCBhc3N1bWluZwo+ID4gaXQncyBzdGlsbCBhcm91bmQuCj4gPgo+ID4K
PiA+IC1EYXZlwqAgLQo+ID4KPiA+Cj4gPgo+ID4gT24gMTEvMTMvMjEgMTk6NTQsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4gIHVzaW5nIHBpbmUgcmlnaHQg
bm93IHRvIGNyZWF0ZSB0aGlzIGVtYWlsLMKgIGFuZCByZWNvbW1lbmQgaXQgdmVyeSBtdWNoCj4g
Pj4gIGluZGVlZC4KPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4gPgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==

