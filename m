Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id AE29E1FA55A
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jun 2020 03:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592269397;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uRA5hG4RZRFZyi5owV7W9g2vd479GuZvXqb5VlhaNoQ=;
	b=GZQQLDpP+ECnVa8sJS01zWieGM0ocXmXVNlF9bawbUrUvoZZDcaX42yM1ujiwTFufc8iPW
	AvkjS+bV3Vb/YNp0S9zfXCWAQYdTibOtAF0BFjz4MRLUxZN2UMeNSmmCM43KBm2LtkHfpv
	DXKRLdfrh9NbRO3EfNvnTE9BpDtHse0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-307-xOw6NDfmNp-cZa34NgspnA-1; Mon, 15 Jun 2020 21:03:15 -0400
X-MC-Unique: xOw6NDfmNp-cZa34NgspnA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98A46184D15E;
	Tue, 16 Jun 2020 01:03:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A5D960C05;
	Tue, 16 Jun 2020 01:03:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E98AC833C8;
	Tue, 16 Jun 2020 01:03:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05G12qgn024384 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Jun 2020 21:02:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E827A111CD37; Tue, 16 Jun 2020 01:02:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E383C10F26EA
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 01:02:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFBAF833B47
	for <blinux-list@redhat.com>; Tue, 16 Jun 2020 01:02:49 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com
	[209.85.161.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-454-qSoZF_z-NviCrXehisivLQ-1; Mon, 15 Jun 2020 21:02:47 -0400
X-MC-Unique: qSoZF_z-NviCrXehisivLQ-1
Received: by mail-oo1-f53.google.com with SMTP id e8so3757077ooi.11
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 18:02:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=OoHuExWualQwBscUctSMlTbIegVAnjJ7+6ZbF8XCHHU=;
	b=hFGSReyrAzGR46mrKvY20A+tINZItW9zjRrOVPxmX2Ol5Mw1t6/jLhaDrjpYFy5vFp
	UTnPt+YGF5nHWmVy9ZyI4LZzvX3rassJjwdzb209y68nf5SyiOXHELJBMFTNPsy+XTf8
	XU8lkj6cJp4EsPTA5eudP2d8bGLOzyOcAbBQC1Jg8gQJwWaqTpC1FH/weKhNby1EwCWl
	/UHiOncSi/y2eUohGdLM0hgPZk8tXXK58uSOuPUvyV7VpfRp4nP46bnFwH6ZUgccNboU
	i20BHS7Gi+6p9cvAMHywXdnUndkSVa0SKSuWqt8R0qLcHvD48sXSxBzmfELneaO6L07J
	FGYw==
X-Gm-Message-State: AOAM5317jwQMWUhoN1jx26mUOPwpa1t9xa9HGRzXTvwxm7RQZl03tnQe
	pdvpwTPca1fkjoWPU4cecWgxgmMiT3vl9jFfTzpOlzoK
X-Google-Smtp-Source: ABdhPJy61gfdO2gnLj3jJXv4NdgLUzl8/+sEg0n0l54A/Oa5RGZfHzVs5wf1A7Wi+OIrHw2tSmUbIQjxicCLkY+Ki9Y=
X-Received: by 2002:a4a:d6c6:: with SMTP id j6mr518635oot.26.1592269366538;
	Mon, 15 Jun 2020 18:02:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:12d6:0:0:0:0:0 with HTTP; Mon, 15 Jun 2020 18:02:45
	-0700 (PDT)
In-Reply-To: <20200615100242.GC2180@rednote.net>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
Date: Mon, 15 Jun 2020 20:02:45 -0500
Message-ID: <CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05G12qgn024384
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T2theSwgc28gZm9yIGEgZnJlZSBMaW51eHkgT1MgcnVubmluZyBvbiBhbiBBbmRyb2lkIGRldmlj
ZSwgY2FuIGFueW9uZQpzdWdnZXN0IGEgc3RhcnRpbmcgcG9pbnQ/CgpBbWFuZGEKCk9uIDYvMTUv
MjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+IHdyb3RlOgo+IERpZGllcjoKPgo+IEknbSBzdXJlIEhhbnMsIG91ciBsaXN0IG93bmVy
IG9mIHJlY29yZCwgd291bGQgaGFwcGlseSBlbnRlcnRhaW4gYQo+IGJldHRlciBjb25maWd1cmF0
aW9uLiBQbGVhc2Ugbm90ZSB0aGlzIGxpc3QgcnVucyBvbiBSZWRoYXQncyBsaXN0Cj4gc2VydmVy
cyB3aGljaCBJIGJlbGlldmUgYXJlIHN0aWxsIG1haWxtYW4gYmFzZWQuIFNvLCBpdCdzIGEgcXVl
c3Rpb24gb2YKPiB3aGF0IFJlZGhhdCBoYXMgaW1wbGVtZW50ZWQgdXBzdHJlYW0uCj4KPiBJZiB5
b3Ugd2FudCBIYW5zJyBlbWFpbCwgSSBjYW4gcHJvYmFibHkgZGlnIGl0IHVwLgo+Cj4gQmVzdCwK
Pgo+IEphbmluYQo+Cj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cml0ZXM6
Cj4+IE9yLCB0aGlzIGlzIHRvIGF2b2lkIFNQRi9ES0lNIGF1dGhlbnRpY2F0aW9uIGZhaWx1cmUu
Cj4+Cj4+IEFzIGFuIGV4YW1wbGUsIEkgaGF2ZSBhbiBlbWFpbCBzZXJ2ZXIgd2l0aCBES0lNIGVu
YWJsZWQgZm9yIHRoZSBkb21haW4KPj4gbmFtZSBzbGludC5mciB0aGF0IEkgb3duIGFuZCB1c2Ug
Zm9yIHRoZSBTbGludCBkaXN0cmlidXRpb24sIGNmLjoKPj4gaHR0cHM6Ly9zbGludC5mcgo+Pgo+
PiBTbywgdGhlIHJlY2VpdmVyIG9mIGFuIGVtYWlsIHNlbnQgd2l0aCBhIEZyb206IGFkZHJlc3Mg
d2l0aCB0aGUgZG9tYWluCj4+IG5hbWUgc2xpbnQuZnIgY2FuIGF1dGhlbnRpY2F0ZSBpdCBjaGVj
a2luZyB0aGF0IHRoZSBlbWFpbCB3YXMgc2VudCBmcm9tCj4+IG15IHNlcnZlcidzIElQIGFkZHJl
c3MgYW5kIG5vdCBmdXJ0aGVyIG1vZGlmaWVkIGlmIHJlLXNlbnQgYnkgYSBtYWlsaW5nCj4+IGxp
c3QgdG8gYWxsIHJlZ2lzdGVyZWQgdXNlcnMuCj4+Cj4+IE1hbnkgbWFpbGluZyBsaXN0cyBrZWVw
IHRoZSBGcm9tOiBmaWVsZCBhcyBpcyAoZm9yIHRoaXMgZW1haWwgdGhhdCB3b3VsZAo+PiBiZTog
ZGlkaWVyQHNsaW50LmZyKSBidXQgbW9kaWZ5IGl0cyBjb250ZW50LCBsaWtlIHRvIGFkZCBhIGZv
b3Rlci4gVGhlbgo+PiB0aGUgZW1haWwgd2lsbCBmYWlsIHRoZSBhdXRoZW50aWNhdGlvbiBmYWls
dXJlIGJ5IHRoZSBzZXJ2ZXIgdGhhdAo+PiByZWNlaXZlcyB0aGUgZW1haWwgc2VudCBieSB0aGUg
bWFpbGluZyBsaXN0LCBhbmQgcG9zc2libHkgcmVqZWN0IGl0IG9yCj4+IHB1dCBpdCBpbiBhIHNw
YW0gZm9sZGVyLCBhY2NvcmRpbmcgdG8gdGhlaXIgcG9saWN5IGFuZCB0aGUgaW5zdHJ1Y3Rpb25z
Cj4+IGdpdmVuIGJ5IHRoZSBpbml0aWFsIHNlbmRpbmcgc2VydmVyLCB3cml0dGVuIGluIGEgRE1B
UkMgcmVjb3JkLgo+Pgo+PiBJIGRvbid0IGtub3cgaWYgdGhpcyB0aGUgbWFpbiByZWFzb24sIGJ1
dCBub3Qgd3JpdGluZyB0aGUgaW5pdGlhbAo+PiBwb3N0ZXIncyBlbWFpbCBhZGRyZXNzIGluIHRo
ZSBGcm9tOiBmaWVsZCBwcmV2ZW50cyBhdXRoZW50aWNhdGlvbgo+PiBmYWlsdXJlcy4KPj4KPj4g
VG8gY29wZSB3aXRoIHRoaXMgcG9saWN5LCBsZXQncyBpZGVudGlmeSBvdXJzZWx2ZXMgaW4gdGhl
IGJvZHkgb2YgdGhlCj4+IGVtYWlscyB3ZSBzZW50IHRvIHRoZSBsaXN0Lgo+Pgo+PiBJIGRvIGl0
IGJlbG93Ogo+PiBEaWRpZXIgU3BhaWVyCj4+IFNsaW50IG1haW50YWluZXIKPj4KPj4gTGUgMTQv
MDYvMjAyMCDDoCAyMjo1NiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOp
Y3JpdMKgOgo+PiA+IEkgdGhpbmsgbWFueSB5ZWFycyBhZ28gdGhlcmUgd2VyZSBsb3RzIG9mIHNw
YW0gd2hpY2ggY2FtZSB0aHJvdWdoIHRoaXMKPj4gPiBsaXN0LCBzbyB0aGV5IGFsdGVyZWQgdG8g
dGhpcyBjdXJyZW50IHdheQo+PiA+IENoaW1lCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gLS0KPgo+IEphbmluYSBTYWprYQo+Cj4gTGludXgg
Rm91bmRhdGlvbiBGZWxsb3cKPiBFeGVjdXRpdmUgQ2hhaXIsIEFjY2Vzc2liaWxpdHkgV29ya2dy
b3VwOglodHRwOi8vYTExeS5vcmcKPgo+IFRoZSBXb3JsZCBXaWRlIFdlYiBDb25zb3J0aXVtIChX
M0MpLCBXZWIgQWNjZXNzaWJpbGl0eSBJbml0aWF0aXZlIChXQUkpCj4gQ2hhaXIsIEFjY2Vzc2li
bGUgUGxhdGZvcm0gQXJjaGl0ZWN0dXJlcwlodHRwOi8vd3d3LnczLm9yZy93YWkvYXBhCj4KPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

