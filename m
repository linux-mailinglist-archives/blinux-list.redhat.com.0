Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B81E14459E6
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 19:42:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636051355;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pjXkOJysWVq7teDAycwad/ewOJcapSuMJESR+khOgnM=;
	b=a3VcDwT/uR3q/YVvCA8JK6A2M2fSU/NQBYa4EbIEjcFucoY76XGwETadVUcXgUgRc91GLO
	yEAW83Pk3n3TbmM2hULps6vmNfCSMG3TLaj2Vbfsbb1DuL4MhrW61nqMyWhqNoQluH42Cl
	Q5atfb0uudsKL66RQTSJVzaXR5oei6E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-i1vuU9qgOP-Tvn6xwX-t2w-1; Thu, 04 Nov 2021 14:42:32 -0400
X-MC-Unique: i1vuU9qgOP-Tvn6xwX-t2w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A5818042DF;
	Thu,  4 Nov 2021 18:42:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 610415C1D5;
	Thu,  4 Nov 2021 18:42:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EBCA64A703;
	Thu,  4 Nov 2021 18:42:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A4IesoO011739 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 14:40:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C3C214010FE5; Thu,  4 Nov 2021 18:40:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEA7340CFD0A
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 18:40:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A306A811E7A
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 18:40:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-469-AWxcxKELPkqUgHymhkGklg-1; Thu, 04 Nov 2021 14:40:53 -0400
X-MC-Unique: AWxcxKELPkqUgHymhkGklg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HlXX44W2Nz3lJH
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 14:40:52 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HlXX44PSszcbc; Thu,  4 Nov 2021 14:40:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HlXX44MDgzcbP
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 14:40:52 -0400 (EDT)
Date: Thu, 4 Nov 2021 14:40:52 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
In-Reply-To: <87825a97-2bc8-b8ed-38a6-87abeb41575f@seznam.cz>
Message-ID: <alpine.NEB.2.23.451.2111041439440.26686@panix1.panix.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<0156E832-953A-4EE3-BBC7-8ACB8FBE5DE3@icloud.com>
	<CAGJxbF4mikSfj9O8UVb3JJUhpOCwjzkB-G_vZPmMwaHMkRpmvA@mail.gmail.com>
	<Pine.LNX.4.64.2111041353520.673755@server2.shellworld.net>
	<87825a97-2bc8-b8ed-38a6-87abeb41575f@seznam.cz>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A4IesoO011739
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBpcyBsaWtlbHkgYWxwaGF3YXJlIGF0IGJlc3Qgbm93IGFuZCBhbHBoYSBjb21lcyBiZWZv
cmUgYmV0YSBmb3IgYQpyZWFzb24uCgoKT24gVGh1LCA0IE5vdiAyMDIxLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBIZWxsbywKPgo+IGFuZCBob3cgY2FuIEkg
aW5zdGFsbCB0aGlzIHNjcmVlbnJlYWRlciBvbiBVYnVudHUgTWF0ZT8gSXMgc29tZSB3YXkgdG8g
aGF2ZSBpdAo+IGluc3RhbGxlZCBpbiBScGk/Cj4KPiB0aGFua3MgYSBsb3QuCj4KPiBCZXN0IHJl
Z2FyZHMKPgo+IFZvanRhLgo+Cj4gRG5lIDA0LiAxMS4gMjEgdiAxODo1NSBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcHNhbChhKToKPiA+IC4uYW5kIG9ubHkgc29mdHdhcmUg
c291cmNlcywgd2hpY2ggYXJlIGluY29uc2lzdGVudD8KPiA+IFRoZWlyIGNsYWltIHdhcyB0byBw
cm92aWRlIGNob2ljZXMgSSBiZWxpZXZlLCBzbyBpZiB0aGV5IGFyZSBub3QgZG9pbmcgdGhhdAo+
ID4gbXVjaCwgd2hhdCBtYWtlcyBpdCBzbyB3b25kZXJmdWw/Cj4gPiBLYXJlbgo+ID4KPiA+Cj4g
Pgo+ID4gT24gVGh1LCA0IE5vdiAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+ID4KPiA+PiBJdCdzIHByb2JhYmx5IHVzaW5nIHNwZWVjaC1kaXNwYXRjaGVy
Lgo+ID4+IERldmluIFByYXRlcgo+ID4+IHIuZC50LnByYXRlckBnbWFpbC5jb20KPiA+Pgo+ID4+
Cj4gPj4KPiA+Pgo+ID4+IE9uIFRodSwgTm92IDQsIDIwMjEgYXQgODo1MCBBTSBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPiA+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPiA+Pgo+ID4+PiBIaSwKPiA+Pj4gSGF2ZSBhbnkgb2YgeW91IHRyaWVkIHRoaXMgbmV3
IHNjcmVlbiByZWFkZXI/Cj4gPj4+IElzIGl0IHVzaW5nIFNwZWFrPwo+ID4+Pgo+ID4+PiBUaGFu
a3MsCj4gPj4+IFJvYgo+ID4+Pgo+ID4+Pgo+ID4+Pj4gT24gTm92IDEsIDIwMjEsIGF0IDk6MjYg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPAo+ID4+PiBibGludXgtbGlz
dEByZWRoYXQuY29tPiB3cm90ZToKPiA+Pj4+Cj4gPj4+PiBGV0lXLCBJIGp1c3QgcmFuIGFjcm9z
cyB0aGlzIGluIEhhY2tlciBOZXdzLi4uCj4gPj4+Pgo+ID4+Pj4+IEFjY2Vzc2liaWxpdHkgb24g
TGludXggaGFzIGhpc3RvcmljYWxseSBiZWVuIHVuZGVyLWRldmVsb3BlZCwKPiA+Pj4gdW5kZXIt
bWFpbnRhaW5lZCwgYW5kLCB0aGVyZWZvcmUsIGdhaW5lZCBhIHJlcHV0YXRpb24gb2YgYmVpbmcg
cXVpdGUKPiA+Pj4gcGFpbmZ1bCB0byB1c2UgYXMgYSBkYWlseSBkcml2ZXIgYW1vbmcgZGlzYWJs
ZWQgcGVvcGxlLiBXZSB3YW50IHRvIGNoYW5nZQo+ID4+PiB0aGF0Lgo+ID4+Pj4+Cj4gPj4+Pj4g
WWdnZHJhc2lsIGlzIGEgbmV3IHByb2plY3QgdGhhdCBhaW1zIHRvIGNyZWF0ZSBhIGJldHRlciBM
aW51eCBzY3JlZW4KPiA+Pj4gcmVhZGVyLCB3cml0dGVuIGluIFJ1c3QuIFRocm91Z2ggdGhpcyBw
cm9qZWN0LCB3ZSBhaW0gdG8gcHJvdmlkZSBhIGJldHRlcgo+ID4+PiBzY3JlZW4gcmVhZGluZyBl
eHBlcmllbmNlIHRoYW4gdGhlIG9uZSB3ZSBjdXJyZW50bHkgaGF2ZSBpbiBPcmNhLiBBIHNjcmVl
bgo+ID4+PiByZWFkZXIgd2l0aCBhbGwgdGhlIG1vZGVybiBmZWF0dXJlcyBhIFdpbmRvd3Mgb3Ig
TWFjT1MgdXNlciB3b3VsZCBleHBlY3QKPiA+Pj4gZnJvbSB0aGVpciBjb21wdXRlcnMsIHNvbWUg
b2Ygd2hpY2ggYXJlIG91dGxpbmVkIGJlbG93Lgo+ID4+Pj4+Cj4gPj4+Pj4gwqDCoMKgwqAgPyBP
YmplY3QgbmF2aWdhdGlvbgo+ID4+Pj4+IMKgwqDCoMKgID8gT0NSCj4gPj4+Pj4gwqDCoMKgwqAg
PyBjdXN0b21pc2FibGUgbmF2aWdhdGlvbiBjb21tYW5kcwo+ID4+Pj4+IMKgwqDCoMKgID8gYSBw
b3dlcmZ1bCBhZGQtb24gbWVjaGFuaXNtCj4gPj4+Pj4gwqDCoMKgwqAgPyBhbmQgbW9yZS4KPiA+
Pj4+Cj4gPj4+PiBUaGUgWWdnZHJhc2lsIFNjcmVlbiBSZWFkZXIgUHJvamVjdAo+ID4+Pj4gaHR0
cHM6Ly95Z2dkcmFzaWwtc3IuZ2l0aHViLmlvLwo+ID4+Pj4gaHR0cHM6Ly9uZXdzLnljb21iaW5h
dG9yLmNvbS9pdGVtP2lkPTI5MDU2MTY4Cj4gPj4+Pgo+ID4+Pj4gLSBSaWNoIE1vcmluCj4gPj4+
Pgo+ID4+Pj4KPiA+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiA+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4KPiA+Pj4KPiA+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPgo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

