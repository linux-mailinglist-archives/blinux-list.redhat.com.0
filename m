Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 410384FC7B6
	for <lists+blinux-list@lfdr.de>; Tue, 12 Apr 2022 00:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649716411;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QYO2LwDpleTjfDe9E+QHlLg6OZmtoFP3MQkdZq90Nfc=;
	b=PaD51PlMUQuxroOX7dMC925OWCYKP47MbZqLKu+uNFTmB8sDCN+s+8uWkXL/LAZcyfR15L
	CqaL5jvKuULFMVtnD5I/TwY97KFOui69LyfYEIxhWUTfGC1VldVZsL4UqVUKNDcv8//xam
	FucTlLaMPgYoHEE/L/WR0Dx6GJnZO6k=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-176-MFDrrmGWN42EeIx5YnKmRQ-1; Mon, 11 Apr 2022 18:33:28 -0400
X-MC-Unique: MFDrrmGWN42EeIx5YnKmRQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72E4D29AA2EA;
	Mon, 11 Apr 2022 22:33:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EC616C44B1D;
	Mon, 11 Apr 2022 22:33:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7EB991940377;
	Mon, 11 Apr 2022 22:33:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 11 Apr 2022 23:33:18 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Dragonfm history vs show hidden
References: <mailman.7960.1649702888.111201.blinux-list@redhat.com>
 <mailman.7756.1649704345.111203.blinux-list@redhat.com>
 <mailman.7889.1649704507.111206.blinux-list@redhat.com>
 <mailman.7805.1649715330.111209.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7805.1649715330.111209.blinux-list@redhat.com>
Message-ID: <mailman.7833.1649716404.111204.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCB3b3JrcyBmaW5lLCBjYW4gaW5zdGFsbCBub3cuIE5vdyBiYWNrIHRvIHRpbmtlcmluZyB3
aXRoIFN0cnljaGluaW5lIHNvIEkgY2FuIGhhdmUgaXQgb3BlbiBEcmFnb25GTSB3aXRoIGEga2V5
IHNob3J0Y3V0IGluc3RlYWQgb2YgcGNtYW5mbSBhcyB3ZWxsCgpPbiBUdWUsIEFwciAxMiwgMjAy
MiBhdCAxMjoxNToyMUFNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+IEhvd2R5LAo+IAo+IEhhaGEsIEknbSBsaXRlcmFseSBhIGJlZXIgdG8gY29kZSBj
b252ZXJ0ZXIgWEQuCj4gCj4gMS4gaSB3cm90ZSB0aGUgcGFja2FnZSBtYWludGFpbmVyIG9mIHB5
dGhvbi1pbm90aWZ5LiBsZXRzIHNlZSB3aGF0IGhhcHBlbnMKPiBoZXJlLgo+IGh0dHBzOi8vYXVy
LmFyY2hsaW51eC5vcmcvcGFja2FnZXMvcHl0aG9uLWlub3RpZnkjY29tbWVudC04NjA3OTMKPiAy
LiBpIGNvbnZlcnRlZCB0aGUgY29kZSB0byBweXRob24taW5vdGlmeS1zaW1wbGUuIFRoaXMgY2Fu
IGRvIGFsbW9zdCB0aGUKPiBzYW1lLiBCdXQgaXMgYSBsaXR0bGUgc2xvdyB3aGlsZSB1bnJlZ2lz
dGVyIHdhdGNoZXMuIHNvIGNsb3NpbmcgdGFicyBjYW4KPiBoYXZlIHNvbWV0aW1lcyBhIHNtYWxs
IGRlbGF5LiBweXRob24taW5vdGlmeSBpcyBhIGxvdCBmYXN0ZXIuIEkgY2hvb3NlCj4gcHl0aG9u
LWlub3RpZnktc2ltcGxlIGluc3RlYWQgb2YgdGhlIGFsdGVybmF0aXZlIHB5dGhvbi1weWlub3Rp
ZnkgYmVjYXVzZQo+IGxhc3Qgb25lIGxvb2tzIGxpa2UgY3JhcCB0byBtZS7CoCBhbHNvIGxhc3Qg
dXBkYXRlIHdhcyBhYm91dCAxMCB5ZWFycyBhZ28uCj4gaHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9y
Zy9wYWNrYWdlcy9weXRob24taW5vdGlmeS1zaW1wbGUKPiAzLiBpIHVwZGF0ZWQgdGhlIEFVUiBQ
S0dCVUlMRCB0byBtYXRjaCB0aGUgbmV3IGRlcGVuZGVuY3kuIHdlIHdpbGwgcmV2ZXJ0Cj4gdGhp
cyBhcyBzb29uIGFzIHRoZSBtYWludGFpbmVyIG9mIHB5dGhvbi1pbm90aWZ5IHJlYWN0ZWQsIGJl
Y2F1c2UgdGhlCj4gcGVyZm9ybWFuY2UgaGVyZSBpcyBiZXR0ZXIuCj4gCj4gbG9uZyBzdG9yeSBz
aG9ydDogZm9yIG5vdywgeW91IHNob3VsZCBiZSBhYmxlIHRvIGluc3RhbGwgaXQgZnJvbSBBVVIg
YW5kIGFsbAo+IHNob3VsZCB3b3JrIGFzIGJlZm9yZSAoYnV0IGEgbGl0dGxlIG1vcmUgYmFkIHBl
cmZvcm1hbmNlIHdoaWxlIGNsb3NlIHRhYnMpCj4gCj4gY2hlZXJzIGNocnlzCj4gCj4gQW0gMTEu
MDQuMjIgdW0gMjE6MTUgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
Ogo+ID4gRHJ1bmsgY29kaW5nIGlzIG5vdCByZWFsbHkgYWR2aXNlYWJsZSwgbG9sLgo+ID4gCj4g
PiBJJ20gbm90IHN1cmUgd2hpY2ggd291bGQgd29yayBiZXN0IGFjdHVhbGx5LCByZXZlcnQgYW5k
IGhhdmUgZm9sa3MgbWFudWFsbHkgaW5zdGFsbCBpbm90aWZ5IG9yIHRyeSBjb252ZXJ0aW5nIHRv
IHB5dGhvbi1weWlub3RpZnkgdGhvdWdoCj4gPiAKPiA+IE9uIE1vbiwgQXByIDExLCAyMDIyIGF0
IDA5OjEyOjE3UE0gKzAyMDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4gPiA+IEhvd2R5LAo+ID4gPiAKPiA+ID4gU3VyZSBjYW4gcmV2ZXJ0IGl0IHRpbCB0aGUg
ZGVwZW5kZW5jeSBpc3N1ZSBpcyBmaXhlZC4gQnV0IGl0IG1pZ2h0IHRha2UgYSB3aGlsZSwgaeKA
mG0gY3VycmVudGx5IGF0IGFuIGJhciBkcmluayBzb21lIGNvbGQgYmVlci4KPiA+ID4gCj4gPiA+
IE1heWJlIGkgY2FuIHJld29yayBpdCB0byB1c2UgcHl0aG9uLXB5aW5vdGlmeSBpbnN0ZWFkIG9m
IHB5dGhvbi1pbm90aWZ5LiBUaGlzIGlzIGluIG9mZmljaWFsIEFyY2ggUmVwb3NpdG9yeS4KPiA+
ID4gCj4gPiA+IAo+ID4gPiBDaGVlcnMgY2hyeXMKPiA+ID4gCj4gPiA+ID4gQW0gMTEuMDQuMjAy
MiB1bSAyMDo0OCBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+Ogo+ID4gPiA+IAo+ID4gPiA+IO+7v0ZvciBub3cgY2FuIHlv
dSByZXZlcnQgdGhhdCBjaGFuZ2UgdG8gdGhlIHNjcmlwdD8gSXQgYnVpbHQgZmluZSBiZWZvcmUg
YW5kIGp1c3QgbmVlZGVkIHRoZSBub3RpZnkgaW5zdGFsbGVkIHZpYSBwaXAgdG8gbWFrZSBpdCB3
b3JrLCBob3dldmVyIEkgZHVubm8gZW5vdWdoIGFib3V0IHRoZSBvdGhlciBweXRob24tcHlub3Rp
ZnkgcGFja2FnZSBhdCBhbGwgdGhvdWdoCj4gPiA+ID4gCj4gPiA+ID4gPiBPbiBNb24sIEFwciAx
MSwgMjAyMiBhdCAwODo0MzowNFBNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+ID4gPiA+ID4gSG93ZHksCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFdlbGwg
SSBtIG5vdCB0aGUgbWFpbnRhaW5lciBvZiB0aGUgcHl0aG9uLWlub3RpZnkgcGFja2FnZS4gSWYg
aXQgZG9lcyBub3QgYnVpbGQgcGxlYXNlIGNvbnRhY3QgdGhlIG1haW50YWluZXIuCj4gPiA+ID4g
PiAKPiA+ID4gPiA+IGh0dHBzOi8vYXVyLmFyY2hsaW51eC5vcmcvcGFja2FnZXMvcHl0aG9uLWlu
b3RpZnkKPiA+ID4gPiA+IAo+ID4gPiA+ID4gTWF5YmUgaSB3aWxsIHJlcGxhY2UgdGhpcyB3aXRo
IHB5dGhvbi1weWlub3RpZnkgYW55dGltZS4gVGhpcyBpcyBpbiBvZmZpY2lhbCBhcmNoIGxpbnV4
IHJlcG9zLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBDaGVlcnMgY2hyeXMKPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiA+IEFtIDExLjA0LjIwMjIgdW0gMjA6Mjggc2NocmllYiBMaW51eCBBMTF5IDxjaHJ5
c0BsaW51eC1hMTF5Lm9yZz46Cj4gPiA+ID4gPiA+IO+7v0hvd2R5LAo+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gV2VsbCBJIG0gbm90IHRoZSBtYWludGFpbmVyIG9mIHRoZSBweXRob24taW5vdGlm
eSBwYWNrYWdlLiBJZiBpdCBkb2VzIG5vdCBidWlsZCBwbGVhc2UgY29udGFjdCB0aGUgbWFpbnRh
aW5lci4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGh0dHBzOi8vYXVyLmFyY2hsaW51eC5vcmcv
cGFja2FnZXMvcHl0aG9uLWlub3RpZnkKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IE1heWJlIGkg
d2lsbCByZXBsYWNlIHRoaXMgd2l0aCBweXRob24tcHlpbm90aWZ5IGFueXRpbWUuIFRoaXMgaXMg
aW4gb2ZmaWNpYWwgYXJjaCBsaW51eCByZXBvcy4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IENo
ZWVycyBjaHJ5cwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVm9uIG1laW5lbSBpUGhvbmUgZ2Vz
ZW5kZXQKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiBBbSAxMS4wNC4yMDIyIHVtIDIwOjEx
IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RA
cmVkaGF0LmNvbT46Cj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiDvu79GYWlsZWQgdG8g
YnVpbGQgYW5kIG1ha2UgdGhlIHB5dGhvbiBpbm90aWZ5IGR1ZSB0byBweXRob24yLW5vc2UgaXMg
d2hhdCBJJ20gZ2V0dGluZy4gQWRkaXRpb25hbGx5IHRoZSBweXRob24taW5vdGlmeSB5b3UncmUg
dXNpbmcgZm9yIHRoZSBzY3JpcHQgaXMgbWFya2VkIG91dCBvZiBkYXRlLiBJJ2xsIHRyeSBwdXR0
aW5nIGlub3RpZnkgYmFjayB3aXRoIHBpcCBhbmQgc2VlIGlmIHRoYXQgZ2V0cyBhcm91bmQgaXQg
YWdhaW4sIHRob3VnaCBJJ20gbm90IHN1cmUgd2h5IGl0J3MgZmFpbGluZyB0byBidWlsZC4KPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBBbnkgb3RoZXIgQXJjaCB1c2VycyBydW5uaW5nIGlu
dG8gdGhpcyBvciBpcyBpdCBqdXN0IG1lPwo+ID4gPiA+ID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gPiA+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+ID4gPiA+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gPiA+ID4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4gPiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+ID4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiA+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4g
PiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiA+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiA+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

