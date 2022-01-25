Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3985949BC04
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jan 2022 20:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643138721;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Fh+alfej+LeiUv8A3h6QC/gMMk2UH4R6AwcmZOztSks=;
	b=Sgssaj1nKx9hSgQfznrMiRqwPdnmdPRmiy+4bI0Gpn3kJ0IppHvq6LWjD7gLhHwmLhPihL
	cvrI/SUxBoo51sxC3HIfOHHEwCW+uVJ07kHl7T7QUJJBEH2GsoPTTICNw8qm5jbKaIDxOS
	vvAx5aWoW8BKQtJPIhPw+veDNYMP6+s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-182-6OPGt8VpPJ2w-Ez17lcKCw-1; Tue, 25 Jan 2022 14:25:17 -0500
X-MC-Unique: 6OPGt8VpPJ2w-Ez17lcKCw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89553343C9;
	Tue, 25 Jan 2022 19:25:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D2BF608BA;
	Tue, 25 Jan 2022 19:25:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A5DB4BB7C;
	Tue, 25 Jan 2022 19:25:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20PJP5e7018490 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Jan 2022 14:25:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A7629400E109; Tue, 25 Jan 2022 19:25:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A32EC400E105
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 19:25:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89242101A52D
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 19:25:05 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-479-mRp9lmr0OF6QX7l5wDnQRg-1; Tue, 25 Jan 2022 14:25:02 -0500
X-MC-Unique: mRp9lmr0OF6QX7l5wDnQRg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JjxdB0f2WzQBH
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 14:25:02 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jjxd96tYMzcbc; Tue, 25 Jan 2022 14:25:01 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jjxd96X71zcbC
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 14:25:01 -0500 (EST)
Date: Tue, 25 Jan 2022 14:25:01 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Configuring ratpoison
In-Reply-To: <87zgnjodji.fsf@yahoo.com>
Message-ID: <748d48e0-526a-937e-c2a8-2ef4775c132f@panix.com>
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
	<64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
	<e0e9740-3cd8-37ee-936-575e53672dc2@panix.com>
	<ad8c5f38-8730-f5e2-bb6e-812803897cc9@gmail.com>
	<b2a26ce7-cd2c-93c1-bf4-aae041f468fa@panix.com>
	<87zgnjodji.fsf@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20PJP5e7018490
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBnb3QgYWx0LWYxIHdvcmtpbmcgd2l0aCBzdHJ5Y2huaW5lIGFuZCByYXRwb2lzb24gb24gc2xp
bnQgYW5kIGRpZG4ndAppbnN0YWxsIHFlbXUuCgoKT24gVHVlLCAyNSBKYW4gMjAyMiwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gSGksCj4KPiBJIGluc3RhbGxl
ZCBSYXRwb2lzb24gYWxvbmcgd2l0aCB0aGUgU3RyeWNobmluZSBhbmQgdHJpZWQgdG8gZm9sbG93
IHRoZQo+IGd1aWRlbGluZXMuIFdoaWxlIHRoaXMgc2VlbXMgdG8gYmUgYSBncmVhdCBvZmZlcmlu
ZywgSSBzZWVtIHRvIGhhdmUKPiBpc3N1ZXMgd2l0aCB0aGUgQUxUK0YxIG1lbnU6IGl0IGRvZXMg
bm90IHN0YXJ0IHRoZSBtYWluIG1lbnUuIEkgcmVtb3ZlZAo+IHRoZSBxZW11LmRlc2t0b3AgZnJv
bSB0aGUgL3Vzci9zaGFyZS9hcHBsaWNhdGlvbnMsIGJ1dCBzdGlsbCBPcmNhIGRvZXMKPiBub3Qg
YW5ub3VuY2UgdGhlIG1lbnUuCj4KPiBBbnkgaGludHMgb24gaG93IGVsc2UgdG8gcHJvY2VlZD8K
Pgo+Cj4gT24gTW9uLCBKYW4gMjQsIDIwMjIgYXQgMDg6MjIgIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24KPiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiBUaGFu
a3MsIEkgYWxtb3N0IGdvdCB0aGF0IGNvcnJlY3QuICBJJ2xsIHJlbW92ZSB0aGUgLnJhdHBvaXNv
bnJjIGZpbGUgYW5kCj4gPiBydW4gdGhlIHNldHVwLnNoIHNjcmlwdCBhZ2Fpbi4KPiA+Cj4gPgo+
ID4gT24gTW9uLCAyNCBKYW4gMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiA+Cj4gPj4gUmlnaHQuIEl0IHNob3VsZCBnbyBsaWtlIHRoaXM6Cj4gPj4KPiA+
PiBTZWxlY3QgeW91ciBSYXRwb2lzb24ga2V5LiBJdCBjb21lcyB1cCB3aXRoIGEgYnVuY2ggb2Yg
b3B0aW9ucy4gQy0gaXMKPiA+PiBjb250cm9sLAo+ID4+IE0gaXMgZWl0aGVyIGFsdCBvciBzaGlm
dAo+ID4+Cj4gPj4gU3VwZXJfTCBpcyB3aGF0IEkgZ28gZm9yLCBsZWZ0IFN1cGVyIGtleQo+ID4+
IFRoZW4gaWYgeW91IGdvdCBtdWx0aXBsZSBicm93c2VycywgdGV4dCBlZGl0b3JzIGFuZCBzbyBv
biBpdCdsbCBhc2sgeW91Cj4gPj4gd2hpY2gKPiA+PiBvbmUsIHRoZW4gaXQnbGwgYXNrIGlmIHlv
dSB3YW50IFJhdHBvaXNvbiB0byBtYWtlIHNvdW5kcywgaG93IG1hbnkKPiA+PiB3b3Jrc3BhY2Vz
LAo+ID4+IGFuZCBpZiB5b3Ugd2FudCBicmFpbGxlLCB0aGVuIGFmdGVyIHRoYXQgeW91J2xsIGhh
dmUgYSAucmF0cG9pc29ucmMgZmlsZQo+ID4+Cj4gPj4gTmV4dCwgZWl0aGVyIGJhY2sgdXAgeW91
ciBleGlzdGluZyB4aW5pdHJjIHNvbWV3aGVyZSBzYWZlLCBvciBkbyAuL3NldHVwLnNoCj4gPj4g
LXgKPiA+PiB0byBtYWtlIGEgbmV3IC54aW5pdHJjIHdpdGggUmF0cG9pc29uIHNldHRpbmdzIHRo
ZW4gZG8gc3RhcnR4Cj4gPj4KPiA+PiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+ID4+ID4gSSBnb3QgcmF0cG9pc29uIGFuZCBzdHJ5Y2huaW5lIGluc3RhbGxlZCBh
bmQgcmFuIHRoZSBzZXR1cC5zaCBzY3JpcHQgaW4KPiA+PiA+IHN0cnljaG5pbmUuICBUaGUgZmly
c3Qgc2NyZWVuIG9mIG9wdGlvbnMgSSBkaWRuJ3QgdW5kZXJzdGFuZCBzbyBoaXQgZW50ZXIKPiA+
PiA+IG9uIHRoYXQgc2NyZWVuIHdpdGhvdXQgc2VsZWN0aW5nIGFueXRoaW5nLiAgSWYgSSBoYWQg
dG8gZ3Vlc3MsIEknZCBndWVzcwo+ID4+ID4gdGhhdCB3YXMgYSBsYW5ndWFnZSBzZWxlY3Rpb24g
c2NyZWVuIGJ1dCBlbmdsaXNoIHNvIGZhciBhcyBJIGNvdWxkIHRlbGwKPiA+PiA+IHdhc24ndCBv
biB0aGF0IHNjcmVlbi4KPiA+PiA+Cj4gPj4gPgo+ID4+ID4gT24gU3VuLCAyMyBKYW4gMjAyMiwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+PiA+Cj4gPj4gPj4g
SGkgQnJhbmR0LAo+ID4+ID4+Cj4gPj4gPj4gSSBmb3J3YXJkZWQgeW91ciBxdWVzdGlvbiB0byBt
eSBmcmllbmQgU3Rvcm0gRHJhZ29uIG9uIElSQyBhbmQgaGVyZSBoaXMKPiA+PiA+PiBoaXMKPiA+
PiA+PiBhbnN3ZXI6Cj4gPj4gPj4gKDE2OjI0OjIwKSBzdG9ybTogRGlkaWVyU3BhaWVyOgo+ID4+
ID4+IGh0dHBzOi8vZ2l0LjJtYi5jb2Rlcy9+c3Rvcm1kcmFnb24yOTc2L3N0cnljaG5pbmUKPiA+
PiA+PiAoMTY6MjU6MDkpIHN0b3JtOiBUaGF0J3MgbXkgc2NyaXB0IHRoYXQgY3JlYXRlcyBhIC5y
YXRwb2lzb25yYy4gSXQncwo+ID4+ID4+IHdoYXQgSQo+ID4+ID4+IHVzZQo+ID4+ID4+IGV2ZXJ5
IGRheSBmb3IgbXkgWCBzZXNzaW9uLgo+ID4+ID4+Cj4gPj4gPj4gQ2hlZXJzLAo+ID4+ID4+IERp
ZGllcgo+ID4+ID4+IC0tCj4gPj4gPj4gRGlkaWVyIFNwYWllcgo+ID4+ID4+IFNsaW50IG1haW50
YWluZXIKPiA+PiA+Pgo+ID4+ID4+IExlIDIzLzAxLzIwMjIgPyAxNDo0MCwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhID9jcml0wqA6Cj4gPj4gPj4+IEhpIGFsbC4KPiA+PiA+
Pj4KPiA+PiA+Pj4KPiA+PiA+Pj4gSSBpbnN0YWxsZWQgcmF0cG9pc29uIG9uIG15IFNsaW50IHN5
c3RlbSwgYW5kIGRvbid0IGhhdmUgZWl0aGVyCj4gPj4gPj4+IH4vLnJhdHBvaXNvbnJjCj4gPj4g
Pj4+IG9yIC9ldGMvcmF0cG9pc29uLgo+ID4+ID4+Pgo+ID4+ID4+Pgo+ID4+ID4+PiBXaGVyZSBj
YW4gSSBnZXQgYSBnb29kIHJhdHBvaXNvbiBjb25maWcgZmlsZT8gRG9lcyBvbmUgb2YgdGhlIE9y
Y2EKPiA+PiA+Pj4gdXNlcnMsCj4gPj4gPj4+IEknZAo+ID4+ID4+PiBhc3N1bWUgdGhhdCB3b3Vs
ZCBiZSBtb3N0IG9mIHVzLCBoYXZlIG9uZSBvbiBnaXRodWIgb3Igc29tZXdhcmU/Cj4gPj4gPj4+
Cj4gPj4gPj4KPiA+PiA+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4+ID4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+ID4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiA+PiA+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4gPgo+ID4+ID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+ID4+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+ID4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Cj4gPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Cj4gPgo+ID4K
PiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+
Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

