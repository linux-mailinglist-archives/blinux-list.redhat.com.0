Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AF2440C2B
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 00:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635633395;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3LOvUffGBaxR4toBLsEJnbaDdLbcCpAuxt3do1OqrJM=;
	b=CEat8ZwwHkcQp4UPSC6E34QzBb1qQhrR4rnlfF9T9Fd60zABnlfjOXQyWaIPNuVhl5vOPU
	TAHjUs87s5ZtvMjKlfpwA0Hs9rogn37PEBbLyUzxj7xIYnMPKg05lzanYkxHGUGvUjQgHx
	R3Bs1dbs4XxUEiGAadFoD8/XtCcoA5w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-559-MFoac4xiPcOCsycfYOc-bA-1; Sat, 30 Oct 2021 18:36:32 -0400
X-MC-Unique: MFoac4xiPcOCsycfYOc-bA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C0876180831D;
	Sat, 30 Oct 2021 22:36:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A6A2A5DEFA;
	Sat, 30 Oct 2021 22:36:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9D8A91801241;
	Sat, 30 Oct 2021 22:36:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UMaOAU030971 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 18:36:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E786240CFD10; Sat, 30 Oct 2021 22:36:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E255640CFD04
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:36:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C7B9F801E6E
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:36:23 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-219-WG66yJL_PSi39qlFCZ9vqQ-1; Sat, 30 Oct 2021 18:36:21 -0400
X-MC-Unique: WG66yJL_PSi39qlFCZ9vqQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HhZ051gjxz3xHW
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 18:36:21 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HhZ050gffzcbc; Sat, 30 Oct 2021 18:36:21 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HhZ050DLZzcbW
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 18:36:20 -0400 (EDT)
Date: Sat, 30 Oct 2021 18:36:20 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Coconut speech at startup
In-Reply-To: <578e1897-329a-e039-54cf-ca2869978df8@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2110301831520.776@panix1.panix.com>
References: <9F0E8E47-7471-495E-A98F-BCB9122EB801@gmail.com>
	<DA67F7C5-5947-4414-83A3-8E27FC9B60DB@gmail.com>
	<alpine.NEB.2.23.451.2110301529560.17098@panix1.panix.com>
	<578e1897-329a-e039-54cf-ca2869978df8@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19UMaOAU030971
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiB5b3UgcnVuIG5tdHVpLCB1c2UgdGhlIGFycm93IGtleXMgdG8gbmF2aWdhdGUgdXAgYW5k
IGRvd24gYW5kIGxpc3Rlbgp0byB5b3VyIGNob2ljZXMuCldoYXQgeW91IHByb2JhYmx5IHdhbnQg
aXMgYWN0aXZhdGUgYSBjb25uZWN0aW9uIHNvIGhpdCBlbnRlciBvbiB0aGF0IGFuZAp5b3UgZW50
ZXIgYW5vdGhlciB3aW5kb3cgd2l0aCB0aGUgbGlzdCBvZiBwb3NzaWJsZSBjb25uZWN0aW9ucyBp
biBpdC4KQXJyb3cgb250byB0aGUgY29ubmVjdGlvbiB5b3Ugd2FudCB0aGVuIHRhYiBvdmVyIHRv
IGNvbm5lY3QgYW5kIGhpdCBlbnRlci4KWW91IG1heSBiZSBhc2tlZCBmb3IgYSBwYXNzd29yZCBh
bmQgeW91IG5lZWQgdG8gdHlwZSBpdCBpbiBlbnRpcmVseQpjb3JyZWN0bHkgdGhlIGZpcnN0IHRp
bWUgdGhlbiB0YWIgdG8gb2sgYW5kIGhpdCBlbnRlci4gIEFmdGVyIHRoYXQgeW91cgpjb25uZWN0
aW9ucyBsaXN0IHdpbmRvdyBjb21lcyBiYWNrIGFuZCBpZiB5b3VyIGNvbm5lY3Rpb24gd2FzIHN1
Y2Nlc3NmdWwsCnlvdXIgY2hvc2VuIGNvbm5lY3Rpb24gd2lsbCBoYXZlIGEgc3RhciB0byBpdHMg
cmlnaHQuICBBcnJvdyBkb3duIHRvIGV4aXQKYW5kIGhpdCBlbnRlciBhbmQgdGhlbiBhcnJvdyBk
b3duIHRvIGV4aXQgYWdhaW4gYW5kIGhpdCBlbnRlciB0byBnZXQgYmFjawpvdXQgdG8gdGhlIHRl
cm1pbmFsLiAgTGV0J3Mgc2VlIGlmIHRoaXMgaGVscHMuCgoKT24gU3VuLCAzMSBPY3QgMjAyMSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gVGhhbmtzIG1hbi4g
VGhhdCB3b3Jrcy4gSSByZWFkIHRoZSBlbnRpcmUgbWFudWFsIGFuZCBJIGNvdWxkIG5vdCBmaW5k
IGEKPiBzaG9ydGN1dCB0byBkbyB0aGF0Lgo+Cj4gVGhhbmtzIGEgbWlsbGlvbiBmb3IgeW91ciBw
YXRpZW5jZS4KPgo+IElicmFoaW0KPgo+IE9uIDEwLzMxLzIxIDE6MDAgQU0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPiBUcnkgZ2V0dGluZyBpbnRvIGEgdGVy
bWluYWwgYW5kIHJ1biBubXR1aS4gIFByb2JhYmx5IGEgZ29vZCBpZGVhIHRvIG1hbgo+ID4gbm10
dWkgZmlyc3QgdGhvdWdoLgo+ID4KPiA+Cj4gPiBPbiBTYXQsIDMwIE9jdCAyMDIxLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4KPiA+PiBIaQo+ID4+IElzIHRo
ZXJlIGEgc2hvcnRjdXQgb3IgYSBob3RrZXkgdG8gc2hvdyB0aGUgbGlzdCBvZiBhdmFpbGFibGUg
d2ktZmkKPiA+PiBuZXR3b3JrcyBpbiBhY2Nlc3NpYmxlIGNvY29udXQ/IFNvIGZhciBJIGNhbiBv
bmx5IGdldCBhIGxpc3Qgb2Ygd2ktZmkKPiA+PiBuZXR3b3JrIGJ5IHByZXRlbmRpbmcgdG8gaW5z
dGFsbCBjb2NvbnV0LiBXaGVuIGkgdHlwZSBuZXR3b3JrIGluIHRoZSBzZWFyY2gKPiA+PiBpIGdl
dCBvcHRpb25zIGZvciBzZXR0aW5nIHByb3h5Lgo+ID4+IFRoYW5rcyBhIGxvdCBmb3IgeW91ciBo
ZWxwLgo+ID4+IElicmFoaW0KPiA+Pgo+ID4+Cj4gPj4gU2VudCBmcm9tIG15IGlQaG9uZQo+ID4+
Cj4gPj4+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTE6MTQgUE0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24KPiA+Pj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4+
Pgo+ID4+PiDvu79TY3JlZW4gcmVhZGVyIHNldHRpbmdzCj4gPj4+IEluc2VydCBwbHVzIHNwYWNl
Cj4gPj4+Cj4gPj4+Cj4gPj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPiA+Pj4KPiA+Pj4+IE9uIE9j
dCAyOSwgMjAyMSwgYXQgMTE6MDQgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24KPiA+Pj4+IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Pj4+Cj4gPj4+PiDv
u79UaGFua3MgYSBtaWxsaW9uLiBJIGp1c3QgZmlndXJlZCB3aGF0IEkgd2FzIGRvaW5nIHdvcm5n
LiBJIGp1c3QgcmVhbGl6ZWQKPiA+Pj4+IHRoYXQgaGl0dGluZyBhbHQtZjEgb3IgYWx0LWYyIGRv
ZXMgbm90IHdvcmsgb24gbXkgbGFwdG9wLiBJIG5lZWRlZCB0bwo+ID4+Pj4gcHVzaCB0aGUgZnVu
Y3Rpb24ga2V5IGFsb25nIHdpdGggdGhlIGFsdCBmMSBvciBmMiBmb3IgaXQgdG8gd29yay4gTm93
IEkKPiA+Pj4+IGNhbiBhY2Nlc3MgdGhlIG1lbnVzIGp1c3QgZmluZS4KPiA+Pj4+Cj4gPj4+PiBJ
IHN0aWxsIG5lZWQgdG8gZmlndXJlIG91dCBhIHdheSBvZiBjaGFuZ2luZyB0aGUgZGVmYXVsdCBz
cGVlY2ggZW5naW5lLAo+ID4+Pj4gYW5kIGEgd2F5IHRvIGhhdmUgaXQgZGlzcGxheSBmb3JlaWdu
IGNoYXJhY3RlcnMgb24gdGhlIEJyYWlsbGUgZGlzcGxheS4KPiA+Pj4+IEZvciBleGFtcGxlLCBX
aGVuIEkgZG8gYSB5b3V0dWJlIHNlYXJjaCBhbmQgZ2V0IGEgaGl0IGluIEFyYWJpYyBvciBIZWJy
ZXcKPiA+Pj4+IGl0IGRpc3BsYXlzIHRoZSBBcmFiaWMgb3IgSGVicmV3IGNoYXJhY3RlcnMgYXMg
cXVlc3Rpb24gbWFya3MuIEkgYW0gc3VyZQo+ID4+Pj4gdGhlcmUgaXMgYSB3YXkgb2YgZGVhbGlu
ZyB3aXRoIHRoaXMuCj4gPj4+Pgo+ID4+Pj4gaW4gdGhlIG5leHQgc3RhZ2UsIEkgbmVlZCB0byBm
aWd1cmUgYSBzYWZlIHdheSBvZiBpbnN0YWxsaW5nIGl0IGFsb25nc2lkZQo+ID4+Pj4gbXkgd2lu
ZG93cyB3aXRob3V0IHNjcmV3aW5nIHUgICAgcCBteSB3aW5kb3dzIG9wcGVyYXRpb24uCj4gPj4+
Pgo+ID4+Pj4gVGhhbmtzIGEgbG90IGFnYWluIGZvciB5b3VyIGhlbHAuCj4gPj4+Pgo+ID4+Pj4g
QnkgdGhlIHdheSBJIGFtIG5vdyB3cml0aW5nIHRoaXMgZW1haWwgdXNpbmcgdGhlIHRodW5kZXJi
aXJkIHRoYXQgY29tZXMKPiA+Pj4+IHdpdGggdGhlIGFjY2Vzc2libGUgQ29jb251dAo+ID4+Pj4K
PiA+Pj4+Pj4gT24gMTAvMzAvMjEgNjowNCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiA+Pj4+PiBzdXBlci10IG1heSBnZXQgeW91IGEgdGVybWluYWwgd2hp
Y2ggZ2l2ZXMgeW91IGEgY29tbWFuZCBsaW5lLiAgWW91J2xsCj4gPj4+Pj4ga25vdyBpZiBhICQg
Y29tZXMgdXAgYXMgYSAgcHJvbXB0IG9yIGEgIyBjb21lcyB1cC4gIEZhaWxpbmcgdGhhdCBhbHQt
K2YyCj4gPj4+Pj4gdGhlbiB0eXBlIG1hdGUtdGVybWluYWwgb3IgZ25vbWUtdGVybWluYWwgYW5k
IGhpdCBlbnRlci4KPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4+IE9uIEZyaSwgMjkgT2N0IDIwMjEs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+Pj4+Cj4gPj4+
Pj4+IFRoYW5rcyBhIG1pbGxpb24gZm9yIHlvdXIgaGVscC4gSSB0cmllZCB5b3VyICBzdWdnZXN0
aW9ucyB0byBubyBhdmFpbC4KPiA+Pj4+Pj4gSG93ZXZlciwgc29tZXRoaW5nIHN0cmFuZ2UgaGFw
cGVuZWQsIHdoZW4gSSBjb25uZWN0ZWQgbXkgYnJhaWxsZQo+ID4+Pj4+PiBkaXNwbGF5IGl0IGNv
bm5lY3RlZCB0byBhY2Nlc3NpYmxlIGNvY29udXQgcmlnaHQgYXdheS4gSSB3YXMgYWJsZSB0bwo+
ID4+Pj4+PiBicm93c2UgdGhlIG1lbnVzIGFuZCBjb25uZWN0IHRvIHRoZSBpbnRlcm5ldC4gRHVy
aW5nIG15IGJyb3dzaW5nIHRoZQo+ID4+Pj4+PiBzcGVlY2ggY2FtZSBvbi4KPiA+Pj4+Pj4gSSBo
YXZlIHR3byBxdWVzdGlvbnMsIGhvdyBjYW4gSSBnZXQgYSBjb21tYW5kIGxpbmUgcHJvbXB0PyBN
eSBzZWNvbmQKPiA+Pj4+Pj4gcXVlc3Rpb24gaXMsIHdoYXQgaXMgdGhlIGNvbW1hbmQgdG8gdHVy
biBvZmYgdGhlIGNvbXB1dGVyPyBBbHQgZjQgZGlkCj4gPj4+Pj4+IG5vdCB0YWtlIG1lIHRoZXJl
Lgo+ID4+Pj4+PiBDaGVlcnMsCj4gPj4+Pj4+IElicmFoaW0KPiA+Pj4+Pj4KPiA+Pj4+Pj4KPiA+
Pj4+Pj4gU2VudCBmcm9tIG15IGlQaG9uZQo+ID4+Pj4+Pgo+ID4+Pj4+Pj4gT24gT2N0IDI5LCAy
MDIxLCBhdCAxOjU2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4gPj4+
Pj4+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4g
77u/UHJlc3MgYWx0IHBsdXMgRjEuCj4gPj4+Pj4+PiBEbyB5b3UgaGVhciBzcGVlY2g/Cj4gPj4+
Pj4+PiBJZiBub3QsIHByZXNzIGVzY2FwZS4KPiA+Pj4+Pj4+IFByZXNzIGFsdCBwbHVzIEYyCj4g
Pj4+Pj4+PiBUeXBlCj4gPj4+Pj4+PiBvcmNhCj4gPj4+Pj4+PiBQcmVzcyBlbnRlci4KPiA+Pj4+
Pj4+IFRoaXMgc2hvdWxkIGZpeCBpdC4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gU2Vu
dCBmcm9tIG15IGlQaG9uZQo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+PiBPbiBPY3QgMjksIDIwMjEsIGF0
IDE6MjUgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPiA+Pj4+Pj4+PiA8
YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiDvu79J
cyB0aGVyZSBhIHN0ZXAgYnkgc3RlcCB0dXRvcmlhbCBvbiBob3cgdG8gc3RhcnQ/Cj4gPj4+Pj4+
Pj4gSSBkb3dubG9hZGVkIHRoZSBhY2Nlc3NpYmxlIGNvY29udXQgaXNvIGFuZCBwdXQgaXQgb24g
YSBib290YWJsZSB1c2IKPiA+Pj4+Pj4+PiBkcml2ZS4gSSB3YXMgYWJsZSB0byBib290IHRoZSBt
YWNoaW5lIGZyb20gdGhlIHVzYiwgYnV0IHRoZXJlIHdhcyBubwo+ID4+Pj4+Pj4+IHNwZWVjaCB0
byBndWlkZSBtZS4gSSB3YXMgYWJsZSB0byBjb25maXJtIHRoYXQgSSBpbmRlZWQgYm9vdGVkIGZy
b20KPiA+Pj4+Pj4+PiB1c2Igd2l0aCBhY2Nlc3NpYmxlIGNvY29udXQgYnkgdXNpbmcgbXkgaVBo
b25lIGNhbWVyYS4gSSBoYXZlIG5vIGlkZWEKPiA+Pj4+Pj4+PiBob3cgdG8gZ2V0IHRoZSBzcGVl
Y2ggZ29pbmcuIFNvIHBsZWFzZSBpZiB5b3UgaGF2ZSBhIHR1dG9yaWFsLCBzZW5kCj4gPj4+Pj4+
Pj4gaXQgbXkgd2F5Lgo+ID4+Pj4+Pj4+IElicmFoaW0KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IFNl
bnQgZnJvbSBteSBpUGhvbmUKPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4gT24gT2N0IDI5LCAyMDIx
LCBhdCAxMDoyOSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+ID4+Pj4+
Pj4+Pj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4+Pj4+Pj4+PiDvu79IZWxs
bywKPiA+Pj4+Pj4+Pj4gV2hlbiB1c2luZyB0aGUgbGl2ZSBDRCwgVGhlIHNjcmVlbnJlYWRlciBz
dGFydGVkIGF0IGJvb3QuCj4gPj4+Pj4+Pj4+IEJ1dCBhICBhZnRlciBJIGluc3RhbGxlZCBpdCwg
SSBnZXQgbm8gc2NyZWVucmVhZGVyIGF0IHN0YXJ0dXAuCj4gPj4+Pj4+Pj4+IEFsbCBzZXR0aW5n
cyBhcyBmYXIgYXMgSSBrbm93IGFyZSBjb3JyZWN0Lgo+ID4+Pj4+Pj4+PiBUaGUgb25seSB3YXkg
dG8gZ2V0IHNwZWVjaCBpcyB0byBnbyB0byB0aGUgcnVuIHdpbmRvdyB3aXRoCj4gPj4+Pj4+Pj4+
IEFsdCtGMgo+ID4+Pj4+Pj4+PiBUaGVuIHR5cGUKPiA+Pj4+Pj4+Pj4gb3JjYQo+ID4+Pj4+Pj4+
PiBBbmQgcHJlc3MgZW50ZXIuCj4gPj4+Pj4+Pj4+IEkgcmVpbnN0YWxsZWQgbGludXggYW5kIGdv
dCB0aGUgc2FtZSByZXN1bHQuCj4gPj4+Pj4+Pj4+IEFzIEkgd2FzIGRvaW5nIHRoZSBpbnN0YWxs
LCBJIGNoZWNrZWQgdGhlIGJveCB0byBnZXQgdXBkYXRlcyBkdXJpbmcKPiA+Pj4+Pj4+Pj4gdGhl
IGluc3RhbGwuIENvdWxkIHRoaXMgYmUgdGhlIGNhdXNlIG9mIG15IHRyb3VibGU/Cj4gPj4+Pj4+
Pj4+Cj4gPj4+Pj4+Pj4+IFRoYW5rcywKPiA+Pj4+Pj4+Pj4gUm9iCj4gPj4+Pj4+Pj4+Cj4gPj4+
Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gPj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+Pj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiA+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4gPj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+ID4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+
Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiA+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4gPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Cj4gPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4gPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

