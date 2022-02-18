Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4794BC03F
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 20:27:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645212435;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HMk5VLtvlTmDKP2OC4ZsLgnFgAh8Tc5G21KNQ+s36ok=;
	b=dWRoif3Z7YWlmxzf9i0zFb3zl6JIH2g04Q15YB+QRr8p+xcP/Cek/f9Hq0yZmlwkEp3KwE
	eC2ig34Wf14nt8QLgFyqB6GQkFTc4+2Mm6VIxSXlNiuwVs/PF84Zw5dnQK6Jg1ulqlQxZz
	eaWoLKFefekUk2D74j1Sohe/1gepmLE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-526-nandRcD7M9e_IvJ1UX1RMA-1; Fri, 18 Feb 2022 14:27:14 -0500
X-MC-Unique: nandRcD7M9e_IvJ1UX1RMA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F00621006AA0;
	Fri, 18 Feb 2022 19:27:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E770045D93;
	Fri, 18 Feb 2022 19:27:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D61011806D1C;
	Fri, 18 Feb 2022 19:27:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IJR4ra000642 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 14:27:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 04421140EBFE; Fri, 18 Feb 2022 19:27:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0063C15230B0
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 19:27:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C9C6A2A5954C
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 19:27:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-26-H-fC_DxYNcSeacyG8jK1MA-1; Fri, 18 Feb 2022 14:27:02 -0500
X-MC-Unique: H-fC_DxYNcSeacyG8jK1MA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K0hXP3S7GzLm4
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 14:27:01 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K0hXP2b75zcbc; Fri, 18 Feb 2022 14:27:01 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K0hXP28QlzcbP
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 14:27:01 -0500 (EST)
Date: Fri, 18 Feb 2022 14:27:01 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <8c364cb-a27b-bfc1-692-60bed09fe233@brandt-slint.local>
Message-ID: <da65fc-344a-9e1d-835e-417e8b11c0a3@panix.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
	<05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
	<ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
	<98ef81f8-d366-cb87-303d-2d52e4167a2c@gmail.com>
	<b4ac119d-cdf-7148-bc49-ab67e2ee751b@panix.com>
	<8c364cb-a27b-bfc1-692-60bed09fe233@brandt-slint.local>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21IJR4ra000642
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgeW91IGluc3RhbGwgZXNwZWFrLW5nIGluIGV4dHJhIHBhY2thZ2VzIHRoZW4gaW4gdGhlIGNo
cm9vdCBlbnZpcm9ubWVudDoKc3lzY3RsIGRpc2FibGUgZmVucmlyCnRoZW4gc3lzY3RsIGVuYWJs
ZSBlc3BlYWsKYmVmb3JlIHJlYm9vdGluZyB0aGF0IHNob3VsZCBhdCBsZWFzdCBwdXQgYW4gZW5k
IHRvIGZlbnJpciBldmVudHVhbGx5LgpUaGUgZmVucmlyIHNwZWVjaCBzcGVlZCBpcyB0b28gZmFz
dDsgaXQgY2FuIGJlIGFkanVzdGVkIGRvd253YXJkIGJ1dCBJCnRoaW5rIG5ldmVyIG91Z2h0IHRv
IGhhdmUgYmVlbiBzZXQgdGhhdCBmYXN0IGZvciBpbnN0YWxsYXRpb24gb3IKcG9zdC1pbnN0YWxs
IHVzZS4gIE1heWJlIHNwZWVjaC1yYXRlPTAuNSB3b3VsZCBiZSBiZXR0ZXIgYW5kIGF0IHRoZSBz
cGVlZAplc3BlYWsgdXNlcyBieSBkZWZhdWx0LgoKCk9uIEZyaSwgMTggRmViIDIwMjIsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IFRoZSBpc3N1ZSBpcyB0aGF0
IGl0J3MgYWxyZWFkeSBvbiBhIGRlc2t0b3AsIHVzdWFsbHkgTWF0ZS4KPgo+IElmIEkgaW5zdGFs
bCBpdCBhZ2FpbiwgSSdtIGluc3RhbGxpbmcgaXQgY29uc29sZSBvbmx5LCBhbmQgdGhlbiBidWls
ZGluZyBpdCBhcwo+IEkgc2VlIGZpdCwgd2hpY2ggd291bGQgYmUgd2l0aCByYXRwb2lzb24gb25s
eS4KPgo+IFdpbGwgcHJvYmFibHkgZ28gdG8gQXJjaCBkaXJlY3RseSBhbnl3YXkuIFdoeSBnZXQg
c29tZXRoaW5nIHRoYXQsIGZpcnN0bHkKPiBzcGVha3Mgd2l0aCBhIFNjcmVlbiByZWFkZXIgSSBu
ZXZlciBib3RoZXJlZCB0byBsZWFybiwgc2luY2UgU3BlYWt1cCB3b3Jrcwo+IHdlbGwgZW5vdWdo
IGZvciBteSBuZWVkcywgc2Vjb25kbHkgc3BlYWtzIHNvIGRhcm4gZmFzdCBubyBodW1hbiBjYW4g
dW5kZXJzdGFuZAo+IHRoZSB0aGluZywgZXNwZWNpYWxseSBpZiwgbGlrZSBtZSB5b3UgY2FuIGhh
cmRseSBoZWFyIGFueXRoaW5nIGFueW1vcmUgYW55d2F5Pwo+Cj4gSSBjYW4gYnVpbGQgbXkgc3lz
dGVtIGluIHZhbmlsbGEgQXJjaCBhcyB3ZWxsIGFzIHdpdGggYW55dGhpbmcgZWxzZS4gSSwgZm9y
Cj4gZXhhbXBsZSB3b3VsZG4ndCBpbnN0YWxsIEZpcmVmb3ggYXQgYWxsLCBidXQgcHJvYmFibHkg
b25lIG9mIHRoZSBDaHJvbWl1bQo+IGJhc2VkIGJyb3dzZXJzIHBsdXMgZWxpbmtzIGZvciB3aGVu
IEknbSBiZWVpbmcgbGF6eSBhbmQgd2FudCB0byBzdGF5IG9uIGEKPiBjb25zb2xlLgo+Cj4gV2Fy
bSByZWdhcmRzLAo+Cj4gQnJhbmR0IFN0ZWVua2FtcAo+Cj4gU2VudCBmcm9tIHRoZSBTbGludCBj
b25zb2xlIHVzaW5nIEFscGluZQo+Cj4gT24gRnJpLCAxOCBGZWIgMjAyMiwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPgo+ID4gRGF0ZTogRnJpLCAxOCBGZWIgMjAy
MiAxMzo0MToxOSAtMDUwMAo+ID4gRnJvbTogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPiA+IFRvOiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+ID4gU3ViamVjdDogUmU6
IEFjY2Vzc2liaWxpdHkgb2YgaW5zdGFsbGluZyBEaXN0cm9zPwo+ID4KPiA+IEhhdmUgeW91IHRy
aWVkIHJ1bm5pbmcgc3RhcnR4IHRvIHR1cm4gb3JjYSBvbj8gIFlvdSBtYXkgZmluZCB0aGF0IHdv
cmtzLgo+ID4KPiA+Cj4gPiBPbiBGcmksIDE4IEZlYiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4KPiA+PiBTb21ldGltZXMgaXQgd291bGQgZmluaXNo
IHRoZSBpbnN0YWxsLCB0aGVuIHJlYm9vdCwgYW5kIGNvbWUgdXAgc3BlYWtpbmcKPiA+PiB3aXRo
Cj4gPj4gRmVucmlyIHdpdGggYSB2ZXJ5IGFubm95aW5nIHZvaWNlLCBlc3BlY2lhbGx5IGlmIHlv
dSwgbGlrZSBtZSBpcyBsZWdhbGx5Cj4gPj4gZGVhZmJsaW5kLCB0aGVuIGFmdGVyIHR5cGluZyB5
b3VyIHVzZXJuYW1lIGFuZCBwYXNzd29yZCwgRmVucmlyIHdvdWxkIGp1c3QKPiA+PiBkaWUKPiA+
PiBhbmQgeW91IGFyZSBzdHVjaywgSSBrbm93IGl0J3MgYSBkZXNrdG9wIGVudmlyb25tZW50LCBi
dXQgbm90aGluZyB0dXJucwo+ID4+IG9yY2EKPiA+PiBvbi4KPiA+Pgo+ID4+Cj4gPj4gU28gbXVj
aCBmb3IgYW4gYWNjZXNzaWJsZSBkaXN0cm8uCj4gPj4KPiA+Pgo+ID4+IFRoaXMgaXMgd2h5IEkg
bG92ZSBTbGludC4gSXQgZG9lcyBleGFjdGx5IHdoYXQgInlvdSIsIHRlbGwgaXQgdG8gZG8sIG5v
dAo+ID4+IHRoZQo+ID4+IGRldi4KPiA+Pgo+ID4+Cj4gPj4gTm8gZGlzcmVzcGVjdCB0byBNci4g
TmFzaCwgSSdtIHN1cmUgaGUncyBhIHBlcmZlY3RseSBuaWNlIGd1eSwgbm90IHRoYXQKPiA+PiBJ
J3ZlCj4gPj4gZXZlciBzcG9rZW4gdG8gaGltIHRob3VnaC4KPiA+Pgo+ID4+IFdhcm0gcmVnYXJk
cywKPiA+Pgo+ID4+IEJyYW5kdCBTdGVlbmthbXAKPiA+Pgo+ID4+IFNlbnQgZnJvbSB0aGUgU2xp
bnQgbWFjaGluZSB1c2luZyBUaHVuZGVyYmlyZAo+ID4+Cj4gPj4gT24gMjAyMi8wMi8xOCAxNzox
MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+PiA+IE1ha2Vz
IGF0IGxlYXN0IHR3byBvZiB1cy7CoCBUaGUgaW5zdGFsbGVyIGFsd2F5cyBmb3VuZCBpdHNlbGYg
bG9vcGluZyBhbmQKPiA+PiA+IHJlcGVhdGluZyBmYWlsZWQgcGFja2FnZSByZXRyaWV2YWwuCj4g
Pj4gPgo+ID4+ID4KPiA+PiA+Cj4gPj4gPiBDaGVlcnMsCj4gPj4gPgo+ID4+ID4KPiA+PiA+Cj4g
Pj4gPiBEYXZlCj4gPj4gPgo+ID4+ID4KPiA+PiA+Cj4gPj4gPgo+ID4+ID4gT24gMi8xNy8yMiAx
MzoxMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+PiA+PiBJ
IGNvdWxkIG5ldmVyIGdldCBKZW51eCB0byB3b3JrIGNvcnJlY3RseSBvbiBteSBzZXR1cC4KPiA+
PiA+Cj4gPj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ID4+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gPj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4gPj4KPiA+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ID4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiA+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4gPj4KPiA+Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

