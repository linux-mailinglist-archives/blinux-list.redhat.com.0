Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 265902F44DB
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 08:10:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610521845;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=moUmPnJk9QW4OBc7Gi3Vy74AY8e45uvHdjk1LvbqPSM=;
	b=GicGTSMZI9oWR8o0rsFkscRuPOTMup4+78DAA9pZGMJJnZF/cOvlcb7f7kq5vaVpynHJxe
	bSR8JipqYrpoCYqx6rFIfztoWtfqm/h7l3NLAttDhZVQYYGp+DIPr9hcVUIz82mFoxHRCz
	CQVPj1QiIunbfU78RFYGyALDPe8B/Q4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-336-w050zQ1bOxaSFA-730qdQA-1; Wed, 13 Jan 2021 02:10:42 -0500
X-MC-Unique: w050zQ1bOxaSFA-730qdQA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 359158066E2;
	Wed, 13 Jan 2021 07:10:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F0AFA5C239;
	Wed, 13 Jan 2021 07:10:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 16FCF4BB7B;
	Wed, 13 Jan 2021 07:10:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10D7AVYj032063 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 02:10:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A76CB2166B2C; Wed, 13 Jan 2021 07:10:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A21FD2166B2B
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 07:10:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25339811E84
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 07:10:29 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-265-L4r3q0yYOjOeb3kCY1ZjxQ-1; Wed, 13 Jan 2021 02:10:26 -0500
X-MC-Unique: L4r3q0yYOjOeb3kCY1ZjxQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DFz9Z1WBYzSjc
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 02:10:26 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DFz9Z0vxNzcbc; Wed, 13 Jan 2021 02:10:26 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DFz9Z0MRvzcbW
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 02:10:26 -0500 (EST)
Date: Wed, 13 Jan 2021 02:10:25 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fwd: Does anyone on here read code in braille?
In-Reply-To: <alpine.NEB.2.23.451.2101130145520.19038@panix1.panix.com>
Message-ID: <alpine.NEB.2.23.451.2101130207450.27464@panix1.panix.com>
References: <198C0090-F028-4CA8-BE77-B90F609E3433@ivytech.edu>
	<A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
	<alpine.NEB.2.23.451.2101130145520.19038@panix1.panix.com>
MIME-Version: 1.0
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10D7AVYj032063
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhlIG9ubHkgbXVsdGktbGluZSBicmFpbGxlIGRpc3BsYXlzIGFyZSB2ZXJ5IGV4cGVuc2l2ZS4g
IEV2ZW4gdGhlIApzaW5nbGUtbGluZSBkaXNwbGF5cyBhcmUgZXhwZW5zaXZlIGJ1dCBtb3N0IGJy
YWlsbGUgZGlzcGxheXMgaW4gdXNlIGFuZCBvbiAKdGhlIG1hcmtldCBhcmUgc2luZ2xlLWxpbmUg
ZGlzcGxheXMuICBXaGVuIEkgcmVhZCBjb2RlIGFuZCBicmFpbGxlIEkgb25seSAKdXNlIG15IGZp
bmdlcnRpcHMgdG8gZG8gdGhhdCBhbmQgSSBkbyBub3QgaGF2ZSBnbHVjb3NlIHRlc3RpbmcgZG9u
ZSBvbiAKdGhvc2UgZmluZ2VycyBlaXRoZXIuICBHb29kIHdheSB0byBsb29zZSBzZW5zaXRpdml0
eSBoYXZpbmcgaW5kZXggZmluZ2VycyAKcG9rZWQuCgoKCk9uIFdlZCwgMTMgSmFuIDIwMjEsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IFllcywgSSByZWFkIGNv
ZGUgaW4gYnJhaWxsZS4gIEkgdXNlIGJyYWlsbGUgcGFwZXIgYXMgYSBkaXNwbGF5IHNpbmNlIGhh
dmVuJ3QgCj4gaGFkIHRoZSBmdW5kcyBmb3IgdGhlIGVsZWN0cm9uaWMgdmVyc2lvbnMuICBXaGVu
IEkgcmVhZCwgSSByZWFkIG9uZSBsaW5lIGF0IGEgCj4gdGltZS4KPgo+Cj4KPiBPbiBXZWQsIDEz
IEphbiAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Cj4+
IAo+Pgo+PiAgQXNobGV5Cj4+Cj4+ICBCZWdpbiBmb3J3YXJkZWQgbWVzc2FnZToKPj4KPj4+ICBG
cm9tOiBBc2hsZXkgQnJlZ2VyIDxhYnJlZ2VyQGl2eXRlY2guZWR1Pgo+Pj4gIERhdGU6IEphbnVh
cnkgMTMsIDIwMjEgYXQgMTI6MzU6MTkgQU0gQ1NUCj4+PiAgVG86IEFzaGxleSBCcmVnZXIgPGFz
aGJyZWdlckB5YWhvby5jb20+Cj4+PiAgU3ViamVjdDogRndkOiBEb2VzIGFueW9uZSBvbiBoZXJl
IHJlYWQgY29kZSBpbiBicmFpbGxlPwo+Pj4KPj4+Cj4+Pgo+Pj4gIEFzaGxleQo+Pj4KPj4+ICBC
ZWdpbiBmb3J3YXJkZWQgbWVzc2FnZToKPj4+Cj4+Pj4gIEZyb206IEFzaGxleSBCcmVnZXIgPGFi
cmVnZXJAaXZ5dGVjaC5lZHU+Cj4+Pj4gIERhdGU6IEphbnVhcnkgMTMsIDIwMjEgYXQgMTI6MjU6
MTEgQU0gQ1NUCj4+Pj4gIFRvOiBMaW51eCA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+PiAg
U3ViamVjdDogRG9lcyBhbnlvbmUgb24gaGVyZSByZWFkIGNvZGUgaW4gYnJhaWxsZT8KPj4+Pgo+
Pj4+ICDvu79IaSBndXlzIEkgd2FzIHdvbmRlcmluZyBpZiBhbnlvbmUgb24gaGVyZSByZWFkcyBj
b2RlIGluIGJyYWlsbGU/IElmIHNvCj4+Pj4gIGRvIHlvdSByZWFkIGl0IGxpbmUgYnkgbGluZSBv
ciBhcmUgeW91IGFibGUgdG8gcmVhZCBtdWx0aXBsZSBsaW5lcyBhdAo+Pj4+ICBvbmNlPyBBbmQg
d2hhdCBkaXNwbGF5cyBkbyB5b3UgdXNlIGZvciByZWFkaW5nIGNvZGU/Cj4+Pj4KPj4+Pgo+Pj4+
ICBBc2hsZXkKPj4gIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+ICBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gIEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPj4gIGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

