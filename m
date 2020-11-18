Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 438742B7363
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 01:52:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605660722;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DMV72rpPKHMSKo2We2iuMqojCXmG/a1MTRdHpS8hqzk=;
	b=TJJbShYGto5qROoIWYbvpR26WvD2GxSUhHUkBP5vkAz89G/vDoCZkjj1nam1VxhZB3HkDB
	K9AFSMWgoWsrFjz4QN/jzEDd8QcuoV4dAWVlhENtaOs1ghhEVgOJvfFSmUhGY3HTfI37ac
	IlIVk/auos+8uT2mSggwQ9qwCIMpdiw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-It1o-5QcM6yAsrt2xKInUQ-1; Tue, 17 Nov 2020 19:51:59 -0500
X-MC-Unique: It1o-5QcM6yAsrt2xKInUQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB96110074B1;
	Wed, 18 Nov 2020 00:51:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9274D5B4B6;
	Wed, 18 Nov 2020 00:51:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4133918199CD;
	Wed, 18 Nov 2020 00:51:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AI0ppbM022429 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Nov 2020 19:51:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5C7311102E05; Wed, 18 Nov 2020 00:51:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 584821102E03
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 00:51:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE3171021E16
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 00:51:48 +0000 (UTC)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
	[209.85.221.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-108-6Iwh64seMmmGFmKuUsN2ww-1; Tue, 17 Nov 2020 19:51:46 -0500
X-MC-Unique: 6Iwh64seMmmGFmKuUsN2ww-1
Received: by mail-vk1-f174.google.com with SMTP id i62so71175vkb.7
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 16:51:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=rFNkO9P5iQv0ILTD+5+zZwJyyAf2JTUy+BSTy6t7G2w=;
	b=eTQ6YCu1n2bQritzz3/oNZywP6fiz2LMEE288raJOPVaZgfJ7POzYfVp0kIrk0kufC
	6KbxCSnr34OIxi3LNGgfKG1G0P+Ta/QNwKu8qsUsR5M5FzDVBWoVhdq1cB+eCllUD2Pr
	fDQHdYa3+bqFgbm0A3VTy0PXU/MJSvtBzcDe9GBZ4UxLrmFFNOJny4OdFhtYDNjSJds3
	Fstt+pE8NiC27mLEEOrEVok94JpVAbOonEmeUg4z6y4oAhXOV7ngNl3eCZCRm2519Hxj
	H9wlvgPILtN83KHDUutDK0292IrEBOrpymctUGMQGuBhLMsBWDVvJC15g53EmC+bS1qw
	q7NQ==
X-Gm-Message-State: AOAM5303tVy9krzScPfrssfaItvZ34W5OSGu++AFlNgqz8mKTY2ipmb7
	qSQ3maK60MYyoAmXKW/do6IFTHiV6ZuQdQwAdkqUDo3r
X-Google-Smtp-Source: ABdhPJzbi/h53iONPdz6FlTNHtZ6NKFeyPzLP8C+AslhyGEYMv/agQT86gDi3fEOxofHZN8qSLKtedEtczyLpBL8HHs=
X-Received: by 2002:a1f:ccc5:: with SMTP id c188mr1688389vkg.4.1605660705269; 
	Tue, 17 Nov 2020 16:51:45 -0800 (PST)
MIME-Version: 1.0
References: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
	<CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
In-Reply-To: <CAN8Cudjc1YNLBu_MLC+MU5g51HBuqk4nh0i4osfyGETY-JPVUw@mail.gmail.com>
Date: Tue, 17 Nov 2020 19:51:33 -0500
Message-ID: <CAJKfDDG3bJqAjidbnyOouUo4kD8OKNkxiZe1cqzd4T-ATe-7Kw@mail.gmail.com>
Subject: Re: as I suspected
To: blinux-list <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SmVudXggaXMgYmFzZWQgb24gd2hpY2ggZGlzdHJpYnV0aW9uPz8/CgpMZSBtYXIuIDE3IG5vdi4g
MjAyMCAxOTozNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8CmJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IGEgw6ljcml0IDoKCj4gRGFuaWVsIE5hc2gsIHRoZSBtYWludGFpbmVy
IG9mIEplbnV4LCBpcyBhIGdvb2QgZnJpZW5kIG9mIG1pbmUgYW5kIGhlCj4gYWx3YXlzIHNlZW1z
IHRvIG1ha2Ugc3VyZSB0aGF0IHRoaW5ncyBzdGF5IHVwZGF0ZWQuIEhpcyBkZWRpY2F0aW9uIHRv
IHRoZQo+IExpbnV4IG9wZXJhdGluZyBzeXN0ZW0gYW5kIHRvIGhpcyB1c2VyIGJhc2UgaGFzIG5v
dCBiZWVuIGVxdWFsZWQgaW4gdGhlCj4gc3BhY2Ugb2YgdmlzdWFsbHkgaW1wYWlyZWQgTGludXgg
ZGlzdHJpYnV0aW9ucywgYXQgbGVhc3QgaW4gbXkgb3Bpbmlvbi4KPgo+IE9uIFR1ZSwgTm92IDE3
LCAyMDIwLCAxMTo0OCBBTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPiBi
bGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPgo+ID4gQSBuZXcgaXNvIHdhcyByZWxlYXNl
ZC4KPiA+IGh0dHBzOi8vbmFzaGNlbnRyYWwuZHVja2Rucy5vcmcvcHJvamVjdHMvSmVudXgtMjAy
MC4xMS4xNi1kdWFsLmlzbwo+ID4gZm9yIEplbnV4Lgo+ID4KPiA+Cj4gPiAtLQo+ID4gVW5pdGVk
IFN0YXRlcyBoYXMgNjMzIEJpbGxpb25haXJlcyB3aXRoIG9ubHkgMTAgZG9pbmcgYW55IGFubnVh
bAo+ID4gc2lnbmlmaWNhbnQgZ2l2aW5nLgo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4KPiA+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

