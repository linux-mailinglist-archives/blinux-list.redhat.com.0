Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CB5767156
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jul 2023 18:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1690560040;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EqyCy9CL2O4WyS46si3zxS60HHGw7YV68cPVGa2Gd+M=;
	b=IKLM9JMpE2HGXohuNY7HzndY41PyuwIA0J2c+FJhZAzdZJsmFmvqAJdc6W2ZkL+qEILv9H
	Zxk7bX8mKtusiSOmXqvG3i1epj17BPgE85tFDJVzunrukqvyQrLJDbwf1wXIlYZkOj5FsW
	zElu1z6Zm2RnkFIDOMqXFL/rCgPqV58=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-193-1HxaexuiMg6JS6qeo07rcw-1; Fri, 28 Jul 2023 12:00:36 -0400
X-MC-Unique: 1HxaexuiMg6JS6qeo07rcw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 413B7185A7AC;
	Fri, 28 Jul 2023 16:00:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D9401201EC58;
	Fri, 28 Jul 2023 16:00:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3EEDC19452C5;
	Fri, 28 Jul 2023 16:00:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 28 Jul 2023 11:58:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Mint Installation?
To: blinux-list@redhat.com
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1762.1689875729.687819.blinux-list@redhat.com>
 <mailman.1705.1689884060.687816.blinux-list@redhat.com>
 <mailman.1831.1689948344.687816.blinux-list@redhat.com>
 <mailman.1852.1689953247.687816.blinux-list@redhat.com>
 <mailman.1531.1689959447.687813.blinux-list@redhat.com>
 <mailman.1717.1690516879.3172873.blinux-list@redhat.com>
In-Reply-To: <mailman.1717.1690516879.3172873.blinux-list@redhat.com>
Message-ID: <mailman.2023.1690560024.3172870.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBBcmUgeW91IHVzaW5nIHRoZSBNYXRlIGRlc2t0b3A/wqAgTGFzdCB0aW1lIEkgdHJp
ZWQgTWludCBJIG5vdGljZWQgCnRoZSB2ZXJzaW9uIG9mIE9SQ0Egd2FzIGZhaXJseSBvbGQgY29t
cGFyZWQgdG8gRGViaWFuIEJvb2t3b3JtLgoKCgpPbiA3LzI3LzIwMjMgMTE6NTkgUE0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gTWF5YmUgYSBsaXR0bGUgb2Zm
IHRvcGljLCBidXQgSSBhbSBoYXZpbmcgc29tZSBwcm9ibGVtIHdpdGggdGhlIAo+IG5vdGlmaWNh
dGlvbiBhcmVhIGluIGxpbnV4IG1pbnQuIFdoZW4gSSB0cnkgdG8gbW92ZSBhcm91bmQgdGhlIGJv
dHRvbSAKPiBwYW5lbCwgaXQgc2VlbXMgdG8gYmUgY29tcGxldGVseSBpbmFjY2Vzc2libGUuIFRo
ZSBvbmx5IHRoaW5nIEkgaGVhciAKPiB3aGlsZSBtb3ZpbmcgaXMgcGFuZWwsIHBhbmVsLCBwYW5l
bC4uLi4gQ2FuIHRoaXMgYmUgZml4ZWQgc29tZWhvdz8KPgo+IEkgY3VycmVudGx5IHVzaW5nIGxh
dGVzdCB2ZXJzaW9uIG9mIGxpbnV4IG1pbnQgbWF0ZSBlZGl0aW9uLgo+Cj4KPiBQcy4gU29ycnkg
Zm9yIHRoZSBsYW5ndWFnZSBlcnJvcnMsIGJ1dCBJIHNwZWFrIEVuZ2xpc2ggcXVpdGUgcG9vcmx5
LCAKPiBhbmQgdXNlIGEgdHJhbnNsYXRvci4KPiBHcmVldGluZ3MuCj4gTWljaGHFgi4KPgo+Cj4g
VyBkbml1IDIxLjA3LjIwMjMgb8KgMTk6MTAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gcGlzemU6Cj4+IEkgc2FpZCBMaWdodGRtIGJ5IG1pc3Rha2UuwqAgVW5kZXIgTWF0ZSB0
aGUgZGVmYXVsdCB3aW5kb3cgbWFuYWdlciAKPj4gc2VlbXMgdG8gYmUgTWFyY28uwqAgWW91IGNh
biBjaGFuZ2UgdG8gdGhlIG9sZGVyIG9uZSBjYWxsZWQgTWV0YWNpdHkuCj4+Cj4+IE9uIERlYmlh
biB0aGlzIHByb2NlZHVyZSB3b3JrcywgYW5kIHByb2JiYWJseSB3b3VsZCB3b3JrIG9uIE1pbnQu
Cj4+Cj4+IGFwdCBpbnN0YWxsIG1ldGFjaXR5Cj4+Cj4+IEZyb20geW91ciBJRCBhdCB0aGUgY29t
bWFuZCBwcm9tcHQuCj4+Cj4+IGdzZXR0aW5ncyBzZXQgb3JnLm1hdGUuc2Vzc2lvbi5yZXF1aXJl
ZC1jb21wb25lbnRzIHdpbmRvd21hbmFnZXIgCj4+IG1ldGFjaXR5Cj4+Cj4+IFRoZW4gcmVib290
Lgo+PiBUbyBnbyBiYWNrIHRvIE1hcmNvCj4+IGdzZXR0aW5ncyBzZXQgb3JnLm1hdGUuc2Vzc2lv
bi5yZXF1aXJlZC1jb21wb25lbnRzIHdpbmRvd21hbmFnZXIgbWFyY28KPj4KPj4gVGhlbiByZWJv
b3QuCj4+Cj4+IFlvdSBjb3VsZCB0cnkgaXQgaWYgeW91IGtlZXAgZ2V0dGluZyBodW5nIGFuZCBz
ZWUgaWYgaXQgbWFrZXMgYSAKPj4gZGlmZmVyZW5jZS7CoCBNYXliZSB5b3UgaGF2ZSBhIGRpZmZl
cmVudCBwcm9ibGVtLgo+Pgo+Pgo+PiBPbiA3LzIxLzIzIDExOjI3LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gR29vZCBtb3JuaW5nLAo+Pj4gSWYgSSBkbyBj
aGFuZ2UgbXkgV2luZG93IG1hbmFnZXIsIHRoYXQgZG8geW91IHJlY29tbWVuZCBJIHN3aXRjaCB0
bz8KPj4+IFJpZ2h0IG5vdywgSeKAmW0gYWN0dWFsbHkgaW4gYSBzaXR1YXRpb24gd2hlcmUgYSB0
ZXh0LWJhc2VkIGxvZ2luIAo+Pj4gcHJvbXB0IGNvbWVzIHVwLCByYXRoZXIgdGhhbiB0aGUgb25l
IHdoaWNoIGlzIGFjY2Vzc2libGUgd2l0aCBPcmNhLgo+Pj4gVGhpcyBpcyBiZWNhdXNlIHdlIGhh
ZCBhIGh1Z2Ugc3Rvcm0gY29tZSB0aHJvdWdoIGxhc3QgbmlnaHQuCj4+PiBUaGFua2Z1bGx5IHRo
b3VnaCwgd2UgZGlkbuKAmXQgaGF2ZSBhbnkgc2lnbmlmaWNhbnQgZGFtYWdlIHRvIG91ciAKPj4+
IHByb3BlcnR5LCBvdGhlciB0aGFuIGEgZmV3IHRyZWVzIHRpbHRlZC4KPj4+IEkgbGVmdCBteSBM
aW51eCBtYWNoaW5lIG9uIGR1cmluZyB0aGUgc3Rvcm0gJiBwcm9iYWJseSBzaG91bGRuJ3QgaGF2
ZS4KPj4+IEkgYWxzbyBkaWRu4oCZdCBoYXZlIGl0IHBsdWdnZWQgaW50byBhIFVQUy4KPj4+IFRo
YW5rcywKPj4+IEplc3NpY2EgRGFpbAo+Pj4KPj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
Cj4+PiBGcm9tOiBCbGludXgtbGlzdCA8YmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tPiBP
biBCZWhhbGYgT2YgCj4+PiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+PiBT
ZW50OiBGcmlkYXksIEp1bHkgMjEsIDIwMjMgMTA6MDYKPj4+IFRvOiBibGludXgtbGlzdEByZWRo
YXQuY29tCj4+PiBTdWJqZWN0OiBSZTogTWludCBJbnN0YWxsYXRpb24/Cj4+Pgo+Pj4gwqAgwqDC
oMKgIElmIHlvdSBhcmUgcnVubmluZyBNYXRlLCBzb21ldGltZXMgdGhlIE1hcmNvIHByb2Nlc3Mg
YmVjb21lcyAKPj4+IGh1bmcsIHdoaWNoIGNhdXNlcyBPUkNBIHRvIHNlZW0gaHVuZy7CoCBJZiB5
b3UgcHJlc3MgT1JDQStzcGFjZSBvciAKPj4+IHRyeSBtb3ZpbmcgdGhlIG1vdXNlLCBpdCBtYXkg
Z2V0IHlvdSBvdXQgb2YgdGhlIHNpdHVhdGlvbi7CoCBJJ20gbm90IAo+Pj4gcnVubmluZyBNaW50
LCBidXQgaXQgaGFwcGVucyBvbiBEZWJpYW4gYW5kIFVidW50dSwgYW5kIE1pbnQgaXMgCj4+PiBk
ZXJpdmVkIGZyb20gVWJ1bnR1LsKgIEEgbW9yZSBwZXJtYW5lbnQgZml4IGlzIHRvIGNoYW5nZSB0
byB0aGUgCj4+PiBMaWdodGRtIHdpbmRvdyBtYW5hZ2VyLCBidXQgaXQgaXNuJ3QgYSBnb29kIGxv
bmctdGVybSBzb2x1dGlvbi4uCj4+Pgo+Pj4KPj4+Cj4+Pgo+Pj4KPj4+IE9uIDcvMjAvMjMgMTY6
MTQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gSGksCj4+
Pj4gT2NjYXNpb25hbGx5LCBJ4oCZbGwgZXhwZXJpZW5jZSBPcmNhIGxvY2tpbmcgdXAuCj4+Pj4g
V2hlbiB0aGlzIGhhcHBlbnMsIHNvbWV0aW1lcywgaXQncyBvbmx5IGZvciBhIGZldyBzZWNvbmRz
ICYgb3RoZXIgCj4+Pj4gdGltZXMsIEkgaGF2ZSB0byB3YWl0IGFzIGxvbmcgYXMgNSBvciAxMCBt
aW51dGVzLgo+Pj4+IFRoaXMgY2FuIGhhcHBlbiB3aXRoIGFueSBhcHAuCj4+Pj4gSG93IGNhbiBJ
IHByZXZlbnQgdGhpcz8KPj4+PiBJ4oCZbSB3b3JraW5nIHdpdGggYSBEZWxsIHByZWNpc2lvbiA0
ODAwIHdoaWNoIGhhcyAxNkdCIG9mIHJhbSAmIGEgCj4+Pj4gMVRCIFNTRC4KPj4+PiBTbywgYmFz
ZWQgb24gdGhhdCwgd2hhdCBkbyB5b3UgdGhpbmsgd291bGQgY2F1c2UgdGhlc2UgaXNzdWVzPwo+
Pj4+Cj4+Pj4KPj4+Pj4gT24gSnVsIDIwLCAyMDIzLCBhdCAxMzo1NSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiAKPj4+Pj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3Rl
Ogo+Pj4+Pgo+Pj4+PiBKZXNzaWNhLAo+Pj4+Pgo+Pj4+PiBJIGp1c3QgcmVjZW50bHkgaW5zdGFs
bCBtaW50IDIxLjIgb24gYSBsYXB0b3AgYW5kIHNvIGZhciBpIGxvdmUgaXQgCj4+Pj4+IGFzIHdl
bGwuCj4+Pj4+Cj4+Pj4+IFJvZG5leQo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBPbiA3LzE5LzIwMjMgMDk6
NDgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+PiBIZWxs
bywKPj4+Pj4+IEkgYW0gYSBodWdlIGZhbiBvZiBwb2RjYXN0cyEKPj4+Pj4+IEknZCBsb3ZlIHRv
IGNoZWNrIG91dCB0aGlzIHByb2dyYW0gYnV0IGJlZm9yZSBJIHByb2NlZWQsIEknZCBsaWtlIAo+
Pj4+Pj4gdG8ga25vdyBpZiBpdCdsbCB3b3JrIG9uIExpbnV4IE1pbj8KPj4+Pj4+IEkganVzdCB1
cGdyYWRlZCB0byBNaW50IDIxLjIgbGFzdCBuaWdodCAmIGFtIGxvdmluZyBpdCBzbyBmYXIuCj4+
Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IFRoYW5rcywKPj4+Pj4+IEplc3NpY2EgRGFpbAo+Pj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+
Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

