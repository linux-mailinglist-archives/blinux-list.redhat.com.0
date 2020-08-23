Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id AC28024EF1D
	for <lists+blinux-list@lfdr.de>; Sun, 23 Aug 2020 20:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598205787;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aKlaJyN8m+CFnPsCVJo3flOZtstOne4IAk39Ai7/tZ8=;
	b=fQ2OXFW4Fc7WXDkWl0qGA8W2P0n5wXsCkC7j2MMkxWwB0O85caEz1NuZQtY1a05+t/Dkcv
	4Q6DOhL2i3lLzU2qbbjolBKCu0g1IszWDrTAlhnWZBxz4Eo83VQLQWSH+vm21Q1gUmIk5E
	GFOf+ggK2ANc4jDq2p7ilIzl3OMhACA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-341-5x61YWpAOieBtE1PcdGe3A-1; Sun, 23 Aug 2020 14:02:43 -0400
X-MC-Unique: 5x61YWpAOieBtE1PcdGe3A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 34B83801AB1;
	Sun, 23 Aug 2020 18:02:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C318239A52;
	Sun, 23 Aug 2020 18:02:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 931DA18408A0;
	Sun, 23 Aug 2020 18:02:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07NI2TEJ006794 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Aug 2020 14:02:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 310F42166BA3; Sun, 23 Aug 2020 18:02:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 150CA2166BA2
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 18:02:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DF148007D9
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 18:02:26 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
	[209.85.219.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-129-XjgBt-hZP-OsjMGnInTpUQ-1; Sun, 23 Aug 2020 14:02:24 -0400
X-MC-Unique: XjgBt-hZP-OsjMGnInTpUQ-1
Received: by mail-yb1-f178.google.com with SMTP id g3so3931577ybc.3
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 11:02:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=SURYTNkkjbrJZKJG0nT1yUMFGQ7ikS153e+NhSArqFo=;
	b=eDKgKVSxEhIs965aCYUvXo7Edx7R384TmkZ1mPBQb1wGcq483QLQFNkUmBtD7l4fK6
	Hrc9265BDODq/eVtEKGyZ8MImpXCb0pwYF9UmT17pFC8PQgM+DFiTakWyLU4yi7s1npo
	POrNbMj14gdVchjdbEc5qWSYuec1y4LDxwNo4Svc8y5K6vOokPBr/jI+9zl2JMuoRIn8
	SLJyX8PLfJ3r/nqbU77WBtdcR7+32GqX8UND11Jcgx2ZixUmw1R/KCx0RNKoKNKM6TrE
	90l54k8h6zD4G05PuIyp8Hs4C2/rOqjgZaupoVqEio0R3+jiit2UsVyTuzA6wCK/XNZH
	Bmgg==
X-Gm-Message-State: AOAM532XLGynzXU7pnr8TihhOlqujWxfHbW4SibC7Q2oSGKZVaMMSWoO
	lJRAdEZ8xrbbyZ3Emh3wZoHHlWL1JDwQGmcXGHGPdC12ydM=
X-Google-Smtp-Source: ABdhPJyPuzjb85ZUY2grqrPGbPKdPLuAvOdMjarnZpfV/d0rdFWjijQ5mRNgs3e4P7r0ayqJ6mP0BCAd8DozP1/XenA=
X-Received: by 2002:a25:d253:: with SMTP id j80mr3044618ybg.101.1598205743681; 
	Sun, 23 Aug 2020 11:02:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:168f:0:0:0:0 with HTTP; Sun, 23 Aug 2020 11:02:23
	-0700 (PDT)
In-Reply-To: <c9b747d3-e951-2673-9652-b27e58fd49da@slint.fr>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
	<f03d577f-f905-d7cc-78db-d7e125fe1cde@slint.fr>
	<alpine.NEB.2.23.451.2008231319160.21497@panix1.panix.com>
	<CAM+Q2c4OfNFveX90b3W0NNh88gjK5GoTkBvx78bOTzR26ESuVQ@mail.gmail.com>
	<c9b747d3-e951-2673-9652-b27e58fd49da@slint.fr>
Date: Sun, 23 Aug 2020 11:02:23 -0700
Message-ID: <CAM+Q2c7co8C=z=tJS_2PPk3NPbR+jHnbMHrhr76rcJdw_TadFw@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07NI2TEJ006794
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBkb24ndCBoYXZlIGEgcGkgYW55d2F5LCBzbyB0aGF0J3Mgbm90IGFuIGlzc3VlLiBUaGFua3Ms
IERpZGllci4KCk9uIDgvMjMvMjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IEhpLAo+Cj4gWW91IGNhbiBnZXQgaGVy
ZToKPiBodHRwOi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82NC9zbGludC0xNC4yLjEvbWluaXNs
aW50Lwo+Cj4gQnV0IGl0IHdvbid0IHdvcmsgb24gYSByYXNwYmVycnkgcGkgYXMgaXQncyBmb3Ig
YXJjaGl0ZWN0dXJlIHg3Nl82NCBvbmx5LAo+IHNvcnJ5Lgo+Cj4gQmVzdCByZWdhcmRzLAo+Cj4g
RGlkaWVyCj4KPiBMZSAyMy8wOC8yMDIwIMOgIDE5OjI1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IFdoZXJlIGNhbiBtaW5pIFNsaW50IGJlIG9idGFp
bmVkLCBwbGVhc2U/Cj4+Cj4+IE9uIDgvMjMvMjAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+IHdyb3RlOgo+Pj4gQ291bGQgYmUg
bWluaS1zbGludCBjb3VsZCBydW4gb24gdGhhdCByYXNwYmVycnkgcGkuICBJIGRvbid0IGhhdmUg
b25lCj4+PiB5ZXQgc28gaGF2ZW4ndCB0cmllZCB0aGF0IG9uZSB5ZXQuICBUaGUgbWluaS1zbGlu
dCBpcyBhIGNvbW1hbmQgbGluZQo+Pj4gZW52aXJvbm1lbnQgdGhlIHdheSBpdCBzdGFydHMgb3V0
IGFmdGVyIGluc3RhbGxhdGlvbi4KPj4+Cj4+PiBPbiBTYXQsIDIyIEF1ZyAyMDIwLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4KPj4+PiBEYXRlOiBTYXQsIDIy
IEF1ZyAyMDIwIDE2OjQ5OjUxCj4+Pj4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+PiBUbzogYmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4+IFN1YmplY3Q6IFJlOiBBY2Nlc3NpYmxlIERpc3Ryb3MgZm9yIGEgYmVnaW5u
ZXI/Cj4+Pj4KPj4+PiBIZWxsbywKPj4+Pgo+Pj4+IEkgYW5zd2VyIGlubGluZSB0byB0aGUgcGFy
dHMgb2YgeW91ciBtZXNzYWdlIHF1b3RlZCBiZWxvdzoKPj4+Pgo+Pj4+IExlIDIyLzA4LzIwMjAg
PyAyMToyMCwgU0wgIGEgP2NyaXTCoDoKPj4+Pj4gSSBkb24ndCBrbm93IGlmIEkgd291bGQgYWxz
byBuZWVkIHRvIGNvbXBpbGUgc291cmNlIGZpbGVzIGZvciBTbGludAo+Pj4+PiB3aGVuCj4+Pj4+
IEknbSBnZXR0aW5nIHN0YXJ0ZWQgd2l0aCB0aGUgT1M/Cj4+Pj4KPj4+PiBObyBuZWVkIHRvIGRv
IHRoYXQuIFlvdSBnZXQgYSBsb3Qgb2Ygc29mdHdhcmUgb3V0IG9mIHRoZSBib3hlcywgYW5kIGNh
bgo+Pj4+IGdldCBtb3JlIGp1c3QgdHlwaW5nIGEgZmV3IGNvbW1hbmRzLCBhcyB3aXRoIG1hbnkg
b3RoZXIgTGludXgKPj4+PiBkaXN0cmlidXRpb25zLCBlaXRoZXIgcHJlLWJ1aWx0IG9yIGNvbXBp
bGVkIGFuZCBpbnN0YWxsZWQgdHlwaW5nIGp1c3QKPj4+PiBvbmUKPj4+PiBjb21tYW5kLgo+Pj4+
Cj4+Pj4+IEJ1dCBpZiBTbGludCBzdGFydHMgc3BlYWtpbmcgb3V0IG9mIHRoZSBib3ggbW9yZSBv
ciBsZXNzLCBtYXliZSBJIHdvdWxkCj4+Pj4+IHN0YXJ0IHdpdGggdGhhdC4KPj4+PiBTbGludCBz
dGFydHMgc3BlYWtpbmcgZnJvbSB0aGUgdmVyeSBiZWdpbm5pbmcgb2YgaW5zdGFsbGF0aW9uIGFu
ZCBzcGVha3MKPj4+PiBpbiBhbGwgY29udGV4dHM7IGNvbnNvbGUgYXMgZ3JhcGhpY2FsIGVudmly
b25tZW50cyBpbmNsdWRpbmcgTWF0ZSwgdGhlCj4+Pj4gZGVmYXVsdC4KPj4+Pgo+Pj4+IElmIHlv
dSBoYXZlIGEgaGFyZCBzeW50aGVzaXplciB5b3UgY2FuIHVzZSBpdCBhcyB3ZWxsLiBTbGludCBj
YW4KPj4+PiBwcmVzZXJ2ZQo+Pj4+IGFuZCByZXN0b3JlIHNwZWNpZmljIHNldHRpbmdzIGZvciBl
YWNoIHN5bnRoZXNpemVyIGlmIHlvdSB1c2Ugc2V2ZXJhbC4KPj4+Pgo+Pj4+IE9yY2EgaXMgaW5k
ZWVkIGF2YWlsYWJsZSBpbiBncmFwaGljYWwgZW52aXJvbm1lbnRzIGFuZCB5b3UgY2FuIHVzZSAo
YW5kCj4+Pj4gc3dpdGNoIGJldHdlZW4pIGNvbnNvbGUgc2NyZWVuIHJlYWRlcnM6IGVzcGVha3Vw
LCBzcGVlY2hkLXVwIGFuZCBmZW5yaXIuCj4+Pj4KPj4+PiBJbmRlZWQgYnJhaWxsZSBpcyBlbmFi
bGVkIGFzIHdlbGwgZnJvbSB0aGUgdmVyeSBiZWdpbm5pbmcgb2YKPj4+PiBpbnN0YWxsYXRpb24u
Cj4+Pj4KPj4+Pj4gSSBsaWtlIGhvdyBtYW55IGFjY2Vzc2liaWxpdHkgZmVhdHVyZXMgU2xpbnQg
aGFzLgo+Pj4+IFdlIHRyeSBoYXJkIHRvIHByb3ZpZGUgYXMgbWFueSBhcyBwb3NzaWJsZS4KPj4+
Pgo+Pj4+PiBBbmQgaWYgSSB3b3VsZG4ndCBuZWVkIHRvIGNvbXBpbGUgYSBsb3Qgb2Ygc291cmNl
IGZpbGVzLCBtYXliZSBTbGludAo+Pj4+PiB3b3VsZCBiZSBhIGdvb2QgY2hvaWNlLgo+Pj4+IElu
ZGVlZCA8c21pbGU+Cj4+Pj4KPj4+PiBBYm91dCBzdXBwb3J0OiB3ZSBhbnN3ZXIgYWxsIHF1ZXN0
aW9ucyBpbiB0aGUgU2xpbnQgbWFpbGluZyBsaXN0LCBhbmQKPj4+PiBiZWdpbm5lcnMgYXJlIHdl
bGNvbWUgdGhlcmUuCj4+Pj4KPj4+PiBTbyBJIHRoaW5rIHRoYXQgU2xpbnQgaXMgYSBnb29kIGNo
b2ljZSBmb3IgYSBsYXB0b3AgaW4geW91ciBzaXR1YXRpb24uCj4+Pj4KPj4+PiBTbGludCBkb24n
dCBzdXBwb3J0IHJhc3BiZXJyeSBQaSwgYnV0IGZvciB0aGF0IFN0b3JtdXggaXMgYSBnb29kIGNo
b2ljZS4KPj4+Pgo+Pj4+IFN0b3JtIERyYWdvbiwgaXRzIG1haW50YWluZXIsIGlzIGEgZnJpZW5k
IGFuZCB3ZSBkbyBjb29wZXJhdGUgZm9yIHRoZQo+Pj4+IGJlbmVmaXQgb2Ygb3VyIHVzZXJzLgo+
Pj4+Cj4+Pj4gRGlkaWVyCj4+Pj4gZGlkaWVyQHNsaW50LmZyCj4+Pj4KPj4+Pgo+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4+IC0tCj4+
Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pgo+Pgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgotLSAK
U3Vic2NyaWJlIHRvIGEgV29yZFByZXNzIGZvciBOZXdiaWVzIE1haWxpbmcgTGlzdCBieSBzZW5k
aW5nIGEgbWVzc2FnZSB0bzoKd3A0bmV3YnMtcmVxdWVzdEBmcmVlbGlzdHMub3JnIHdpdGggJ3N1
YnNjcmliZScgaW4gdGhlIFN1YmplY3QgZmllbGQgT1IgYnkKdmlzaXRpbmcgdGhlIGxpc3QgcGFn
ZSBhdCBodHRwOi8vd3d3LmZyZWVsaXN0cy5vcmcvbGlzdC93cDRuZXdicwomIGNoZWNrIG91dCBt
eSBzaXRlcyBhdCB3d3cuYnJpZ2h0c3RhcnN3ZWIuY29tICYgd3d3Lm15c2l0ZXNiZWVuaGFja2Vk
LmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

