Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8392E24EF08
	for <lists+blinux-list@lfdr.de>; Sun, 23 Aug 2020 19:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598203593;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jgB3ZQb5vnvONLGt+rrUfo9SJZL+I3HeILtcg1Br9DY=;
	b=J7m/Q1+/9hfDYGnEoHB6H4S50zkLYxKM5K4QHsf2vaGYLReiTO8zxnVGuUt6tB2w/NYu5J
	1CA8d0kyhZgkT+0PmHDS617fpePCK0MpYdQHXj2yyrTiqil2fSqHjhOpfYRuR8l5X33zNT
	SOtKXpwQs/+i0f3O/PeL/bc7EOaWNlE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-292-YnhJpVlpO9C-qOAOJ2eEog-1; Sun, 23 Aug 2020 13:26:09 -0400
X-MC-Unique: YnhJpVlpO9C-qOAOJ2eEog-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1FB6107465D;
	Sun, 23 Aug 2020 17:26:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6B4C2AABE;
	Sun, 23 Aug 2020 17:26:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9141318408A0;
	Sun, 23 Aug 2020 17:26:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07NHQ30x004302 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Aug 2020 13:26:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 88D411110293; Sun, 23 Aug 2020 17:26:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 84D7A111028D
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 17:26:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F45C811E79
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 17:26:00 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com
	[209.85.219.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-474-vOzkdwfsM5WHdhGp0iTrEg-1; Sun, 23 Aug 2020 13:25:57 -0400
X-MC-Unique: vOzkdwfsM5WHdhGp0iTrEg-1
Received: by mail-yb1-f182.google.com with SMTP id s195so3883037ybc.8
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 10:25:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=8UTl55ktgpInrhr84XRwyUxinhlRz8ON74ciVnNwjag=;
	b=pLlQE2PsZ9N0ErJKmx4YiOZr6ZCoCWGVPuYGhEirTQtZAE9BUWmIO/i4ggEeNiECYU
	afHyWrT/rxXzdabQK9bB6U5UXcXRoHQfj0ioFa6ddxjdqdBAAenHmIPbwXZlJH4zYX2W
	N3UqOW2TncWeHIwSGAqDiDD7mcEuxUnkXLmxykfZ3T+Rchinvt5vMa9/g9mdDZ1MEd+E
	CNiNv4lx4ZY/ErQ4EThgjFsvJvtjy/1gtj0dOlq4HpIJVEc71UNK+4B62/qu6JlDEm5+
	NzsmYJTcyaFBzwiLa2qBQWzjbKpdEyKvmbmlim5xu3L1nCojLFKNEtIQM0BBO9SBb9xZ
	bgPA==
X-Gm-Message-State: AOAM532KTo8iAmO8CmBi+Ep5rxnRZmXB5DeLXipzSi1pVxmGheJNROsd
	suRo492LXmVir52yGDOLr59fWjO0NojRybqTiWCuqqCEpc4=
X-Google-Smtp-Source: ABdhPJwIV4WvKDylmrCZ0S8aypOZVExdNsUJXNRWjQxWIcZ60+3qhwjPcAAXNx1qXmVDKQYh9N0pD/vEHgWoyzNZTNw=
X-Received: by 2002:a25:df02:: with SMTP id w2mr2420744ybg.189.1598203557018; 
	Sun, 23 Aug 2020 10:25:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:168f:0:0:0:0 with HTTP; Sun, 23 Aug 2020 10:25:56
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.23.451.2008231319160.21497@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
	<f03d577f-f905-d7cc-78db-d7e125fe1cde@slint.fr>
	<alpine.NEB.2.23.451.2008231319160.21497@panix1.panix.com>
Date: Sun, 23 Aug 2020 10:25:56 -0700
Message-ID: <CAM+Q2c4OfNFveX90b3W0NNh88gjK5GoTkBvx78bOTzR26ESuVQ@mail.gmail.com>
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07NHQ30x004302
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlcmUgY2FuIG1pbmkgU2xpbnQgYmUgb2J0YWluZWQsIHBsZWFzZT8KCk9uIDgvMjMvMjAsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+IENvdWxkIGJlIG1pbmktc2xpbnQgY291bGQgcnVuIG9uIHRoYXQgcmFzcGJlcnJ5
IHBpLiAgSSBkb24ndCBoYXZlIG9uZQo+IHlldCBzbyBoYXZlbid0IHRyaWVkIHRoYXQgb25lIHll
dC4gIFRoZSBtaW5pLXNsaW50IGlzIGEgY29tbWFuZCBsaW5lCj4gZW52aXJvbm1lbnQgdGhlIHdh
eSBpdCBzdGFydHMgb3V0IGFmdGVyIGluc3RhbGxhdGlvbi4KPgo+IE9uIFNhdCwgMjIgQXVnIDIw
MjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gRGF0ZTog
U2F0LCAyMiBBdWcgMjAyMCAxNjo0OTo1MQo+PiBGcm9tOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+PiBUbzogYmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiBTdWJqZWN0OiBSZTogQWNjZXNzaWJsZSBEaXN0cm9zIGZvciBhIGJlZ2lu
bmVyPwo+Pgo+PiBIZWxsbywKPj4KPj4gSSBhbnN3ZXIgaW5saW5lIHRvIHRoZSBwYXJ0cyBvZiB5
b3VyIG1lc3NhZ2UgcXVvdGVkIGJlbG93Ogo+Pgo+PiBMZSAyMi8wOC8yMDIwID8gMjE6MjAsIFNM
ICBhID9jcml0wqA6Cj4+ID4gSSBkb24ndCBrbm93IGlmIEkgd291bGQgYWxzbyBuZWVkIHRvIGNv
bXBpbGUgc291cmNlIGZpbGVzIGZvciBTbGludCB3aGVuCj4+ID4gSSdtIGdldHRpbmcgc3RhcnRl
ZCB3aXRoIHRoZSBPUz8KPj4KPj4gTm8gbmVlZCB0byBkbyB0aGF0LiBZb3UgZ2V0IGEgbG90IG9m
IHNvZnR3YXJlIG91dCBvZiB0aGUgYm94ZXMsIGFuZCBjYW4KPj4gZ2V0IG1vcmUganVzdCB0eXBp
bmcgYSBmZXcgY29tbWFuZHMsIGFzIHdpdGggbWFueSBvdGhlciBMaW51eAo+PiBkaXN0cmlidXRp
b25zLCBlaXRoZXIgcHJlLWJ1aWx0IG9yIGNvbXBpbGVkIGFuZCBpbnN0YWxsZWQgdHlwaW5nIGp1
c3Qgb25lCj4+IGNvbW1hbmQuCj4+Cj4+ID4gQnV0IGlmIFNsaW50IHN0YXJ0cyBzcGVha2luZyBv
dXQgb2YgdGhlIGJveCBtb3JlIG9yIGxlc3MsIG1heWJlIEkgd291bGQKPj4gPiBzdGFydCB3aXRo
IHRoYXQuCj4+IFNsaW50IHN0YXJ0cyBzcGVha2luZyBmcm9tIHRoZSB2ZXJ5IGJlZ2lubmluZyBv
ZiBpbnN0YWxsYXRpb24gYW5kIHNwZWFrcwo+PiBpbiBhbGwgY29udGV4dHM7IGNvbnNvbGUgYXMg
Z3JhcGhpY2FsIGVudmlyb25tZW50cyBpbmNsdWRpbmcgTWF0ZSwgdGhlCj4+IGRlZmF1bHQuCj4+
Cj4+IElmIHlvdSBoYXZlIGEgaGFyZCBzeW50aGVzaXplciB5b3UgY2FuIHVzZSBpdCBhcyB3ZWxs
LiBTbGludCBjYW4gcHJlc2VydmUKPj4gYW5kIHJlc3RvcmUgc3BlY2lmaWMgc2V0dGluZ3MgZm9y
IGVhY2ggc3ludGhlc2l6ZXIgaWYgeW91IHVzZSBzZXZlcmFsLgo+Pgo+PiBPcmNhIGlzIGluZGVl
ZCBhdmFpbGFibGUgaW4gZ3JhcGhpY2FsIGVudmlyb25tZW50cyBhbmQgeW91IGNhbiB1c2UgKGFu
ZAo+PiBzd2l0Y2ggYmV0d2VlbikgY29uc29sZSBzY3JlZW4gcmVhZGVyczogZXNwZWFrdXAsIHNw
ZWVjaGQtdXAgYW5kIGZlbnJpci4KPj4KPj4gSW5kZWVkIGJyYWlsbGUgaXMgZW5hYmxlZCBhcyB3
ZWxsIGZyb20gdGhlIHZlcnkgYmVnaW5uaW5nIG9mIGluc3RhbGxhdGlvbi4KPj4KPj4gPiBJIGxp
a2UgaG93IG1hbnkgYWNjZXNzaWJpbGl0eSBmZWF0dXJlcyBTbGludCBoYXMuCj4+IFdlIHRyeSBo
YXJkIHRvIHByb3ZpZGUgYXMgbWFueSBhcyBwb3NzaWJsZS4KPj4KPj4gPiBBbmQgaWYgSSB3b3Vs
ZG4ndCBuZWVkIHRvIGNvbXBpbGUgYSBsb3Qgb2Ygc291cmNlIGZpbGVzLCBtYXliZSBTbGludAo+
PiA+IHdvdWxkIGJlIGEgZ29vZCBjaG9pY2UuCj4+IEluZGVlZCA8c21pbGU+Cj4+Cj4+IEFib3V0
IHN1cHBvcnQ6IHdlIGFuc3dlciBhbGwgcXVlc3Rpb25zIGluIHRoZSBTbGludCBtYWlsaW5nIGxp
c3QsIGFuZAo+PiBiZWdpbm5lcnMgYXJlIHdlbGNvbWUgdGhlcmUuCj4+Cj4+IFNvIEkgdGhpbmsg
dGhhdCBTbGludCBpcyBhIGdvb2QgY2hvaWNlIGZvciBhIGxhcHRvcCBpbiB5b3VyIHNpdHVhdGlv
bi4KPj4KPj4gU2xpbnQgZG9uJ3Qgc3VwcG9ydCByYXNwYmVycnkgUGksIGJ1dCBmb3IgdGhhdCBT
dG9ybXV4IGlzIGEgZ29vZCBjaG9pY2UuCj4+Cj4+IFN0b3JtIERyYWdvbiwgaXRzIG1haW50YWlu
ZXIsIGlzIGEgZnJpZW5kIGFuZCB3ZSBkbyBjb29wZXJhdGUgZm9yIHRoZQo+PiBiZW5lZml0IG9m
IG91ciB1c2Vycy4KPj4KPj4gRGlkaWVyCj4+IGRpZGllckBzbGludC5mcgo+Pgo+Pgo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IC0tCj4KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKCi0tIApTdWJzY3JpYmUgdG8gYSBX
b3JkUHJlc3MgZm9yIE5ld2JpZXMgTWFpbGluZyBMaXN0IGJ5IHNlbmRpbmcgYSBtZXNzYWdlIHRv
Ogp3cDRuZXdicy1yZXF1ZXN0QGZyZWVsaXN0cy5vcmcgd2l0aCAnc3Vic2NyaWJlJyBpbiB0aGUg
U3ViamVjdCBmaWVsZCBPUiBieQp2aXNpdGluZyB0aGUgbGlzdCBwYWdlIGF0IGh0dHA6Ly93d3cu
ZnJlZWxpc3RzLm9yZy9saXN0L3dwNG5ld2JzCiYgY2hlY2sgb3V0IG15IHNpdGVzIGF0IHd3dy5i
cmlnaHRzdGFyc3dlYi5jb20gJiB3d3cubXlzaXRlc2JlZW5oYWNrZWQuY29tCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

