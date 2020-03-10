Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id C051717F100
	for <lists+blinux-list@lfdr.de>; Tue, 10 Mar 2020 08:27:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583825267;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GnmM94vv/BiMzWzr0q6dnOi7O2fb4p2nlhmuL4tnN3w=;
	b=EXSNzB+t28e+WIyGZb/CwfROUhYmVlIcFzVV0Ob/QmCS/C2elS38nd7napnZxQLBrxGE42
	lAdD/nm/9z84cdRcLoDOsHNPah9OUeWO2kflGvJLy6dOoC3SJ7KYQOPV4THzF/Rzcj5rs8
	6pABUxA+/9YhmTtRZKDLk+2BcN9BCjM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-383-JkhL0fH1Pz24Y4pzWK4_vg-1; Tue, 10 Mar 2020 03:27:45 -0400
X-MC-Unique: JkhL0fH1Pz24Y4pzWK4_vg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 032718017CC;
	Tue, 10 Mar 2020 07:27:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A671790A0E;
	Tue, 10 Mar 2020 07:27:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 61C7E18089C8;
	Tue, 10 Mar 2020 07:27:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02A7RQvl014854 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Mar 2020 03:27:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 784428850F; Tue, 10 Mar 2020 07:27:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73D5BA4845
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 07:27:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 971D58BA531
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 07:27:24 +0000 (UTC)
Received: from smtprelay08.ispgateway.de (smtprelay08.ispgateway.de
	[134.119.228.108]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-139-ZN7fdW7ONCuq68Rgtlwg_w-1; Tue, 10 Mar 2020 03:27:21 -0400
X-MC-Unique: ZN7fdW7ONCuq68Rgtlwg_w-1
Received: from [80.187.124.104] (helo=[10.158.65.232])
	by smtprelay08.ispgateway.de with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
	(envelope-from <chrys@linux-a11y.org>) id 1jBZIN-0001PS-S5
	for blinux-list@redhat.com; Tue, 10 Mar 2020 08:27:20 +0100
Mime-Version: 1.0 (1.0)
Subject: Re: Accessible PDF viewer
Date: Tue, 10 Mar 2020 08:27:18 +0100
Message-Id: <22C056FB-C623-4164-9EBE-A7BEBB3F69B4@linux-a11y.org>
References: <CAPo=n-9HbU7zg09v=fZKLkaq0Tu3M+CQi4FQgKoLN+feKJeiyg@mail.gmail.com>
In-Reply-To: <CAPo=n-9HbU7zg09v=fZKLkaq0Tu3M+CQi4FQgKoLN+feKJeiyg@mail.gmail.com>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02A7RQvl014854
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2UgdXNlIHRoZSBmaXJlZm94IGJ1aWxkaW4gUERGIHZpZXdlci4gU2FkbHkgdGhlIGRlc2t0b3Ag
ZG9jdW1lbnQgdmlld2VyIGFyZSBub3QgdGhlIGJlc3QgY2hvaWNlIGFjY2Vzc2liaWxpdHkgd2lz
ZS4gQXR0aWwgYW5kIGV2aW5jZSB3b3JrcyBhIHNvcnQgb2YsIGJ1dCBhcmUgbm90IHRoZSBiZXN0
IElNTy4KClZvbiBtZWluZW0gaVBob25lIGdlc2VuZGV0Cgo+IEFtIDEwLjAzLjIwMjAgdW0gMDY6
MzMgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlz
dEByZWRoYXQuY29tPjoKPiAKPiDvu79UaGUgYmVzdCBQREYgZXhwZXJpYW5jZSBJIGtub3cgYWJv
dXQgY3VycmVudGx5IGlzIGlmIHlvdSBydW4gT3JjYSBtYXN0ZXIKPiB3aXRoIHRoZSBsYXRlc3Qg
c25hcHNob3Qgb2YgY2hyb21pdW0gb3IgQ2hyb21lLiBUaGUgYnVpbHRpbiBQREYgcmVhZGVyIG9m
Cj4gQ2hyb21pdW0gaXMgdmVyeSBuaWNlLCBpdCBwbGFjZXMgZXZlcnkgcGFnZSB1bmRlciBhIGRp
ZmZlcmVudCBsYW5kbWFyayBzbwo+IHlvdSBjYW4gbmF2aWdhdGUgYmV0d2VlbiB0aGVtIHdpdGgg
bSBhbmQgc2hpZnQrbS4gSXQgZXZlbiBzdXBwb3J0IGEgZmV3IFBERgo+IHRhZ3MgYnkgY29udmVy
dGluZyB0aGVtIHRvIHRoZWlyIEhUTUwgZXF1aXZhbGVudHMsIGhlYWRpbmdzIGZvciBleGFtcGxl
Lgo+IAo+IFJlZ2FyZHMsCj4gCj4gUnluaGFyZHQKPiAKPj4gT24gVHVlLCAxMCBNYXIgMjAyMCwg
MDQ6MDcgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiwgPAo+PiBibGludXgtbGlz
dEByZWRoYXQuY29tPiB3cm90ZToKPj4gCj4+IFVidW50dSBNYXRlIERlc2t0b3Agc2VlbXMgdG8g
aGF2ZSBBdHJpbCBEb2N1bWVudCBWaWV3ZXIuICBJZiB5b3UgcHJlc3MKPj4gRjcgdG8gdHVybiBv
biBjYXJldCBicm93c2luZyBpdCBzZWVtcyB0byBiZSB1c2FibGUgd2l0aCBzb21lIFBERiBmaWxl
cy4KPj4gSSBoYXZlIG5vdCB1c2VkIGl0IGV4dGVuc2l2ZWx5LiAgWW91IGNhbiBhbHNvIHByZXNz
IGNvbnRyb2wtYSB0byBzZWxlY3QKPj4gdGhlIGVudGlyZSBkb2N1bWVudCBhbmQgcGFzdGUgaXQg
aW50byBhbiBFZGl0b3IuCj4+IAo+PiAKPj4gCj4+PiBPbiAzLzkvMjAyMCA1OjM2IFBNLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGVsbG8sCj4+PiAKPj4+
IAo+Pj4gaXMgdGhlcmUgYW55IGFjY2Vzc2libGUgcGRmIHZpZXdlciBvbiBMaW51eCB3aGljaCBj
YW4gYmUgdXNlZCB3aWh0Cj4+PiBPcmNhIHNjcmVlbiByZWFkZXI/Cj4+PiAKPj4+IAo+Pj4gRXZp
bmNlIHNlZW1zIG5vdCB0byBiZWxvbmcgdG8gdGhpcyBjYXRlZ29yeS4KPj4+IAo+Pj4gCj4+PiBU
aGFuayB5b3UgaW4gYWR2YW5jZSEKPj4+IAo+Pj4gVmxhZHlzbGF2Cj4+PiAKPj4+IAo+Pj4gCj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IAo+PiAK
Pj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0
dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

