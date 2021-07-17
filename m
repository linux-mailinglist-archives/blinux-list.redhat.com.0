Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4D30D3CC5E9
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 21:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626550492;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8FMvWz3J4g2ThSJ3SbUntt52wZ6fh3OnbZ2iVaRROSo=;
	b=Yeqq96cOkDgksAORy8vvvqVilMLTcXRi0VR5Uvp8t1DaS9CYnEONj5JtQtemv1gChi44p7
	ra983QmNgPnw/HwNAZoS7Iolq9LXCRvFJR3lfFrJPKGheLseFYtnckbB2rWojceqOjlnLN
	Wrqwv3wQIIVVLRcOHEx9GS7kS0lp5sI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-V7OkiOrVNsGUIvUOhjcoSQ-1; Sat, 17 Jul 2021 15:34:50 -0400
X-MC-Unique: V7OkiOrVNsGUIvUOhjcoSQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B66C801AC5;
	Sat, 17 Jul 2021 19:34:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D7325604CC;
	Sat, 17 Jul 2021 19:34:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 533901809C99;
	Sat, 17 Jul 2021 19:34:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16HJSZTo027521 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Jul 2021 15:28:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5859C2162383; Sat, 17 Jul 2021 19:28:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53C9D2166B26
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 19:28:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64DCB800FFB
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 19:28:32 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-484-9XFZpSKgO6CzNF683bWchg-1; Sat, 17 Jul 2021 15:28:29 -0400
X-MC-Unique: 9XFZpSKgO6CzNF683bWchg-1
Received: by mail-qt1-f178.google.com with SMTP id v14so9835867qtc.8
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 12:28:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=aK+eBjYlPZHw8/sN6gqCJ4tJ+djd13VZsn8i50Kxhcs=;
	b=HTTR86O8Q1i3AKTX2UV/1RcryPXV7Wc+O7AhxO7h3jhhqobdliVVSIJszmFXacx9xS
	+EIhRrN8xFOuXRuiFHQRXFDLU5LQ+6Bqb9mw/CUIq6rmZud3Jlx9wyrTP5pcXNdr8WE8
	PXlZR3RsVzBNfHrYiLTTvTLn3N+BArD2Sd913f+R1uoynQJwd9nHvoQFOblf0f2F+jp4
	cpOSz5nufeVRUIrx4UufjQGGF8fOdcwa3kfZsobozL7oG0kjIbBNpg9U8nf1+VfvPzqg
	v8Gw1QJ02b0McozlSzBWMaOCXRXTtRePl47E+YSpqRb6IWVWvvNRCogOHX58Eu7S8ucr
	+Gcg==
X-Gm-Message-State: AOAM530d+kG+kwhtl+vb9dKxgt6p9HD2x5NR3AfeI2GDonkvjDAwX0hM
	xo2jGVKwkXCfQVlifxapc3lVLeqHBh90xrZV4sGYmzhG
X-Google-Smtp-Source: ABdhPJz9blpBr6dDPOopYSGNpd9/vKkAfAybiyT5Vl3nH94DrTvjQCl2aTljNBL7okcExvPjKueq2Zvm2KkW0c7ttSQ=
X-Received: by 2002:ac8:7613:: with SMTP id t19mr5910536qtq.78.1626550108952; 
	Sat, 17 Jul 2021 12:28:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddS4g1jpYPKc_35ziy700JXbS+W2P95XYToAyULNeAAmpg@mail.gmail.com>
	<0671f3ab-3695-f330-5261-3f45531a4a9a@slint.fr>
	<CAD_4ddR+NxQ5Tjd4c0Kpiwk=2m2bRfBO+Mio2KDswbKmxv_aVQ@mail.gmail.com>
	<c5b8b31c-5b2d-e90e-9903-f054b9127a50@slint.fr>
In-Reply-To: <c5b8b31c-5b2d-e90e-9903-f054b9127a50@slint.fr>
Date: Sat, 17 Jul 2021 21:28:17 +0000
Message-ID: <CAD_4ddQJnm6Bfj_FJWdYF8-8pZCobkevOwbAPZ-X6s1jPMeBfg@mail.gmail.com>
Subject: Re: recommended OCR solutions on Arch Linux
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdGhlcmUsCgpJIGFwcHJlY2lhdGUgeW91ciBoZWxwIHNvIG11Y2gsIHRoYW5rcyEKV2Vs
bCB0aGVuLCBJIGhhdmUgdG8gaW5zdGFsbCBhbiBJUkMgY2xpZW50IGFmdGVyIGFsbCwgSSdsbCBn
byB3aXRoIHBpam9uLApvciBob3dldmVyIHlvdSBzcGVsbCBpdCwgSSd2ZSBoZWFyZCB0aGF0J3Mg
YW4gYWNjZXNzaWJsZSBHVUkgYXBwbGljYXRpb24uCklzIHRoYXQgdHJ1ZT8KQmVzdCByZWdhcmRz
LgpGcmFuY2lzY28uCgpPbiBTYXQsIEp1bCAxNywgMjAyMSBhdCA3OjIxIFBNIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPApibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
Cj4gSSdkIHN1c3BlY3QgYW4gaXNzdWUgd2l0aCB5b3VyIHZlcnNpb24gb2YgcHl0aG9uLWdvYmpl
Y3QsIGJ1dCBiZXR0ZXIgYXNrCj4gQ2hyeXMKPiBkaXJlY3RseS4gWW91IGNhbiBvZnRlbiB0aW1l
cyBmaW5kIGhpbSBpbiAjYTExeSBAIGlyYy5saW51eC1hMTF5Lm9yZywKPiBidXQgbm90Cj4gcmln
aHQgbm93Lgo+Cj4gRGlkaWVyCj4KPiBMZSAxNy8wNy8yMDIxIMOgIDIyOjU0LCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPiA+IEhlbGxvIHRoZXJlLAo+ID4K
PiA+IEkgaGF2ZSBpbnN0YWxsZWQgbGlvcy1naXQsIGJ1dCB3aGVuIEkgdHJ5IHJ1bm5pbmcgaXQg
ZnJvbSBteSBHVUksIGl0Cj4gPiBkb2Vzbid0LCB3aGlsZSB3aGVuIEkgdHJ5IHJ1bm5pbmcgaXQg
ZnJvbSB0ZXJtaW5hbCwgdGhlIGNvbW1hbmQgSSB0cmllZAo+IHdhcwo+ID4gbGlvcwo+ID4gdGhp
cyBpcyB0aGUgb3V0cHV0IEkgZ2V0LCBhbHRob3VnaCBJIGFtIHN1cmUgYWxsIHRoZSBkZXBzIGFy
ZSBzYXRpc2ZpZWQuCj4gPgo+ID4gW2ZyYW5jaXNjb0BCbHVlYmxpbmsgfl0kIGxpb3MKPiA+IC91
c3IvbGliL3B5dGhvbjMuOS9zaXRlLXBhY2thZ2VzL2xpb3MvdWkvZ3RrL3RleHRfdmlldy5weToy
MToKPiBQeUdJV2FybmluZzoKPiA+IEd0ayB3YXMgaW1wb3J0ZWQgd2l0aG91dCBzcGVjaWZ5aW5n
IGEgdmVyc2lvbiBmaXJzdC4gVXNlCj4gPiBnaS5yZXF1aXJlX3ZlcnNpb24oJ0d0aycsICc0LjAn
KSBiZWZvcmUgaW1wb3J0IHRvIGVuc3VyZSB0aGF0IHRoZSByaWdodAo+ID4gdmVyc2lvbiBnZXRz
IGxvYWRlZC4KPiA+ICAgIGZyb20gZ2kucmVwb3NpdG9yeSBpbXBvcnQgR3RrCj4gPiAvdXNyL2xp
Yi9weXRob24zLjkvc2l0ZS1wYWNrYWdlcy9saW9zL3VpL2d0ay93aWRnZXQucHk6MjQ6IFB5R0lX
YXJuaW5nOgo+IEF0awo+ID4gd2FzIGltcG9ydGVkIHdpdGhvdXQgc3BlY2lmeWluZyBhIHZlcnNp
b24gZmlyc3QuIFVzZQo+ID4gZ2kucmVxdWlyZV92ZXJzaW9uKCdBdGsnLCAnMS4wJykgYmVmb3Jl
IGltcG9ydCB0byBlbnN1cmUgdGhhdCB0aGUgcmlnaHQKPiA+IHZlcnNpb24gZ2V0cyBsb2FkZWQu
Cj4gPiAgICBmcm9tIGdpLnJlcG9zaXRvcnkgaW1wb3J0IEF0awo+ID4gVHJhY2ViYWNrIChtb3N0
IHJlY2VudCBjYWxsIGxhc3QpOgo+ID4gICAgRmlsZSAiL3Vzci9iaW4vbGlvcyIsIGxpbmUgMTks
IGluIDxtb2R1bGU+Cj4gPiAgICAgIGZyb20gbGlvcy5tYWluIGltcG9ydCAqCj4gPiAgICBGaWxl
ICIvdXNyL2xpYi9weXRob24zLjkvc2l0ZS1wYWNrYWdlcy9saW9zL21haW4ucHkiLCBsaW5lIDI3
LCBpbgo+ID4gPG1vZHVsZT4gICAgZnJvbSBsaW9zIGltcG9ydCBzY2FubmVyLCBlZGl0b3IsIGlt
YWdldmlldywgY2FtLCBvY3IsCj4gPiBwcmVmZXJlbmNlcywgc3BlZWNoCj4gPiAgICBGaWxlICIv
dXNyL2xpYi9weXRob24zLjkvc2l0ZS1wYWNrYWdlcy9saW9zL2VkaXRvci5weSIsIGxpbmUgMjAs
IGluCj4gPiA8bW9kdWxlPgo+ID4gICAgICBmcm9tIGxpb3MudWkuZ3RrIGltcG9ydCB0ZXh0X3Zp
ZXcsIHRyZWVfdmlldywgd2lkZ2V0LCBkaWFsb2csCj4gPiBmaWxlX2Nob29zZXIsCj4gPiBjb250
YWluZXJzLCB3aW5kb3cKPiA+ICAgIEZpbGUgIi91c3IvbGliL3B5dGhvbjMuOS9zaXRlLXBhY2th
Z2VzL2xpb3MvdWkvZ3RrL3dpZGdldC5weSIsIGxpbmUKPiAxNjYsCj4gPiBpbiA8bW9kdWxlPgo+
ID4gICAgICBjbGFzcyBTZXBhcmF0b3IoR3RrLkhTZXBhcmF0b3IpOgo+ID4gICAgRmlsZSAiL3Vz
ci9saWIvcHl0aG9uMy45L3NpdGUtcGFja2FnZXMvZ2kvb3ZlcnJpZGVzL19faW5pdF9fLnB5Iiwg
bGluZQo+ID4gMzIsIGluIF9fZ2V0YXR0cl9fCj4gPiAgICAgIHJldHVybiBnZXRhdHRyKHNlbGYu
X2ludHJvc3BlY3Rpb25fbW9kdWxlLCBuYW1lKQo+ID4gICAgRmlsZSAiL3Vzci9saWIvcHl0aG9u
My45L3NpdGUtcGFja2FnZXMvZ2kvbW9kdWxlLnB5IiwgbGluZSAxMjMsIGluCj4gPiBfX2dldGF0
dHJfXwo+ID4gICAgICAgIHJhaXNlIEF0dHJpYnV0ZUVycm9yKCIlciBvYmplY3QgaGFzIG5vIGF0
dHJpYnV0ZSAlciIgJSAoCj4gPiBBdHRyaWJ1dGVFcnJvcjogJ2dpLnJlcG9zaXRvcnkuR3RrJyBv
YmplY3QgaGFzIG5vIGF0dHJpYnV0ZSAnSFNlcGFyYXRvcicKPiA+IFtmcmFuY2lzY29AQmx1ZWJs
aW5rIH5dJAo+ID4gRG9lcyBhbnlvbmUga25vdyB3aGF0IHRoaXMgaXMgYW5kIGhvdyB0byBmaXgg
aXQ/Cj4gPiBUaGFua3MgZm9yIGFueSBhbnN3ZXIuCj4gPiBCZXN0IHJlZ2FyZHMuCj4gPiBGcmFu
Y2lzY28uCj4gPgo+ID4gT24gU2F0LCBKdWwgMTcsIDIwMjEgYXQgNjozNyBQTSBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPiA+IGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdy
b3RlOgo+ID4KPiA+PiBodHRwczovL2F1ci5hcmNobGludXgub3JnL3BhY2thZ2VzL2xpb3MtZ2l0
Lwo+ID4+Cj4gPj4gRGlkaWVyCj4gPj4gLS0KPiA+PiBEaWRpZXIgU3BhaWVyCj4gPj4gU2xpbnQg
bWFpbnRhaW5lcgo+ID4+IGh0dHBzOi8vc2xpbnQuZnIKPiA+PiBkaWRpZXJhdHNsaW50ZG90ZnIK
PiA+Pgo+ID4+IExlIDE3LzA3LzIwMjEgw6AgMjI6MjUsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+ID4+PiBIZWxsbyBldmVyeW9uZSwKPiA+Pj4KPiA+Pj4g
SSBkbyBub3Qga25vdyBpZiB0aGlzIHF1ZXN0aW9uIGhhcyBiZWVuIGFza2VkIGluIHRoZSBwYXN0
LCBzbyBJIGFtCj4gc29ycnkKPiA+PiBpZgo+ID4+PiBJIG1pZ2h0IGJlIGJyaW5naW5nIHVwIHNv
bWV0aGluZyB0aGF0IG1pZ2h0IGhhdmUgYWxyZWFkeSBiZWVuCj4gZGlzY3Vzc2VkLgo+ID4+PiBN
eSBxdWVzdGlvbiBpcywgd2hhdCBHVUkgdGVzc2VyYWN0IG9yIGN1bmVpZm9ybSBmcm9udCBlbmRz
IHdvdWxkIHlvdQo+ID4+PiByZWNvbW1lbmQgdG8gYSBmYWlybHkgbmV3IGFyY2ggdXNlciwgd2hv
IHdhbnRzIHNvbWV0aGluZyByZWNvZ25pemVkIGluCj4gPj4+IGRpZmZlcmVudCBsYW5ndWFnZXMs
IGFuZCBuZWVkcyB0aGUgYWJpbGl0eSB0byB1c2UgYSBzY2FubmVyPwo+ID4+PiBUaGFua3MgZm9y
IGFueSBhbnN3ZXIuCj4gPj4+IEJlc3QgcmVnYXJkcy4KPiA+Pj4gRnJhbmNpc2NvLgo+Cj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

