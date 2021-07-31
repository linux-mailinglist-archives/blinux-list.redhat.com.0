Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D7B093DC215
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 02:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627692165;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R16zzyPhLkZu+w6GHig5gcM4TX7PTzzmY8fCI/Wmlk8=;
	b=GiNB+LlXdAxi0yiXWwe1oqflAo1Vp7C7fFR9A6s2fb1EICSUO1ccy7Roljn39BsObGmCpI
	GUXmWXcINPXUYiUEnc+NX0QYnnOkstJsWodalC7lVkne+SCjtwsJDryn30ldS1LsQHGFfL
	d9yWSn2X7iOzFOKe2DR1D/pcR6qk2iY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-588-oIIC3xKvOLKTg8IRWdRpaA-1; Fri, 30 Jul 2021 20:42:43 -0400
X-MC-Unique: oIIC3xKvOLKTg8IRWdRpaA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BDE59107ACF5;
	Sat, 31 Jul 2021 00:42:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92ACA5C232;
	Sat, 31 Jul 2021 00:42:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 42CE64BB7B;
	Sat, 31 Jul 2021 00:42:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16V0gFqJ007994 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Jul 2021 20:42:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7E6322126723; Sat, 31 Jul 2021 00:42:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A38721202CE
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 00:42:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 183E489B841
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 00:42:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-155-UT68Y0v_OfaAYBhU4GnOgg-1; Fri, 30 Jul 2021 20:42:10 -0400
X-MC-Unique: UT68Y0v_OfaAYBhU4GnOgg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Gc57k3LcYzFXg
	for <blinux-list@redhat.com>; Fri, 30 Jul 2021 20:42:10 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Gc57k2lW4zcbc; Fri, 30 Jul 2021 20:42:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Gc57k2JyQzcbW
	for <blinux-list@redhat.com>; Fri, 30 Jul 2021 20:42:10 -0400 (EDT)
Date: Fri, 30 Jul 2021 20:42:10 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Solus and Broken Speech
In-Reply-To: <6fbf8e0f-bfb0-92ea-8b0b-7e271cb3a4a1@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107302039530.29234@panix1.panix.com>
References: <6fbf8e0f-bfb0-92ea-8b0b-7e271cb3a4a1@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16V0gFqJ007994
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGlkIHlvdSBydW4gc3BkLWNvbmYgaW4gdXNlciBhY2NvdW50IGRpcmVjdG9yeSB5ZXQ/ICBJZiBu
b3QsIHlvdSBtYXkgd2FudAp0byBkbyB0aGF0LiAgVGhlIHNwZC1zYXkgaGFzIGEgZGVmYXVsdCBv
ZiBwdWxzZWF1ZGlvIGFzIG91dHB1dCBhbmQgaWYKbWVtb3J5IHNlcnZlcyBzbGludCBoYXMgaGFk
IGJldHRlciBsdWNrIHVzaW5nIGxpYmFvIHJhdGhlciB0aGFuIHB1bHNlLgoKCk9uIEZyaSwgMzAg
SnVsIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhp
LAo+Cj4KPiBJIGdhdmUgdGhlIGxhdGVzdCBNYXRlIHNwaW4gb2YgdGhpcyBkaXN0cm8gYSBsb29r
LCBhbmQgbGlrZSB3aGF0IEkgc2VlLCBpbgo+IGdlbmVyYWw7IG1heSBwdXQgaXQgb250byBvbmUg
b2YgbXkgbWFjaGluZXMuwqAgSXQgc2VlbXMgdG8gb2ZmZXIgdGhlIGVhc2UgYW5kCj4gY29udmVu
aWVuY2Ugb2Ygc29tZXRoaW5nIGxpa2UgVWJ1bnR1LCBidXQsIGl0J3MgYSByb2xsaW5nIHJlbGVh
c2UuwqAgT24gdGhlCj4gbGl2ZSBzeXN0ZW0sIEkgbm90aXNlIGEgcGVyc2lzdGVudCBjaG9wcGlu
ZXNzIG9yIHNjcmF0Y2hpbmVzcyBvZiB0aGUgc3BlZWNoLsKgCj4gTWF5YmUgc29tZXRoaW5nIHdp
dGggc3BlZWNoIGRpc3BhdGNoZXIgYW5kIHRoZSBhdWRpbyBzeXN0ZW0/wqAgT3RoZXIgYXVkaW8g
aXMKPiBub3QgY2hvcHB5LsKgIE1heWJlIHBlb3BsZSB3aG8gYXJlIHVzaW5nIFNvbHVzLCBvbiBh
IHJlZ3VsYXIgYmFzaXMsIGNhbiBzdWdnZXN0Cj4gY29uZmlndXJhdGlvbiBjaGFuZ2VzLCBhZnRl
ciB0aGUgaW5zdGFsbCwgdG8gc29sdmUgdGhlIHNwZWVjaCBwcm9ibGVtPwo+Cj4KPgo+IFRoYW5r
cywKPgo+Cj4KPiBEYXZlwqAgSC4KPgo+Cj4gU2VudCB3aXRoIFRodW5kZXJiaXJkIGFuZCBTbGlu
dAo+Cj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

