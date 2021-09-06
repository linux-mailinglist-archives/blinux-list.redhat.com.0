Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B59C84013DD
	for <lists+blinux-list@lfdr.de>; Mon,  6 Sep 2021 03:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630892256;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pLIwvPQOmrxtKexo+2cr5cdAmMro+o5jEX8tdqwS2ro=;
	b=bvFlYBrlaaNONePz8q3dHiFjCc8Y9iD2xCqddaJRR992NNOkaGN4cvFQstJ5H6hAY1XB93
	IS/50J9UPaKUgqRqCRnJthWs1TP5U+kLnAavFs+7XSrm+zZFdsr9uh6bpkKtxlf8pS8Do8
	3Yb+ZRg905nWQFdFP7T7Iwf1EsfsPuA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-234-PHrL2oBkMWKfFJ12xYEoPQ-1; Sun, 05 Sep 2021 21:37:35 -0400
X-MC-Unique: PHrL2oBkMWKfFJ12xYEoPQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 85A80107ACCA;
	Mon,  6 Sep 2021 01:37:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4984C5D9F0;
	Mon,  6 Sep 2021 01:37:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E351946F4B;
	Mon,  6 Sep 2021 01:37:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1861bBML006809 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Sep 2021 21:37:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4CE6A2162395; Mon,  6 Sep 2021 01:37:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 465D621686BC
	for <blinux-list@redhat.com>; Mon,  6 Sep 2021 01:37:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05D8F811E80
	for <blinux-list@redhat.com>; Mon,  6 Sep 2021 01:37:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-268-YPF1T1PePpejUNDeulZ43A-1; Sun, 05 Sep 2021 21:37:04 -0400
X-MC-Unique: YPF1T1PePpejUNDeulZ43A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4H2rbz59Fcz4Mdq;
	Sun,  5 Sep 2021 21:37:03 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4H2rbz4KGdzcbc; Sun,  5 Sep 2021 21:37:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4H2rbz3xvQzcbW;
	Sun,  5 Sep 2021 21:37:03 -0400 (EDT)
Date: Sun, 5 Sep 2021 21:37:03 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No GNOME Terminal on Jenux?
In-Reply-To: <17f9562c-8439-1e5a-08d7-252fe86f1ed6@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2109052131400.5669@panix1.panix.com>
References: <e532d780-aba9-1a5b-64f6-880ade71e38b@gmail.com>
	<18C382B6-0C05-4660-8ED0-29BCA802BACF@gmail.com>
	<83cfe362-91fe-b36c-cbc3-f4055cfb888e@gmail.com>
	<alpine.NEB.2.23.451.2109051343190.23445@panix1.panix.com>
	<CAGz84JJ1Aww6=rZxMD3fvZijuZvKjo6LVoBoHwo7CPXeRmPu1w@mail.gmail.com>
	<alpine.NEB.2.23.451.2109051617230.17810@panix1.panix.com>
	<17f9562c-8439-1e5a-08d7-252fe86f1ed6@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1861bBML006809
X-loop: blinux-list@redhat.com
Cc: Daniel Nash <dnl.nash@gmail.com>
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

SSBkaWRuJ3Qgc2VhcmNoIC9vcHQsIGl0IG1pZ2h0IGJlIGluIHRoYXQgZGlyZWN0b3J5LiAgVGhl
IHByb2JsZW0gd2l0aApKZW51eCBpcyBnbm9tZSBzdGFydHMgdXAgYXV0b21hdGljYWxseS4gIElm
IEplbnV4IHdlcmUgbGlrZSBzbGludCB5b3UnZApsb2cgaW4gd2l0aCBzcGVha3VwIG9yIGZlbnJp
ciBvciBzcGVlY2hkLXVwIGFuZCBiZSBpbiBhIHJlYWwgY29uc29sZS4gIElmCnlvdSB3YW50ZWQg
Z3JhcGhpY2FsLCB5b3UgY291bGQgcnVuIHN0YXJ0eCBieSBpdHNlbGYgYW5kIGJyaW5nIHVwCmdy
YXBoaWNhbCBhbmQgdGhpcyBwcm9ibGVtIHdvdWxkIGdvIGF3YXkuICBJZiB0aGUgc3RhcnR4IGNv
bW1hbmQgaXMgaW4KL2hvbWUvLnByb2ZpbGUgdGhlIGJlc3Qgd2F5IHRvIGdldCB3aGVyZSBzbGlu
dCBpcyBvbiBKZW51eCBpcyB0byBjb21tZW50Cml0IG91dCBhbmQgbWFrZSBzdXJlIHNwZWFrdXAg
b3IgZmVucmlyIHdpbGwgY29tZSB1cCBhbmQgc3RheSB1cCBvbmNlCmxvZ2dlZCBpbiBvbiB0aGUg
Y29uc29sZS4gSSdsbCBoYXZlIHRvIGNoZWNrIGFuZCBmaW5kIHdoZXJlIHRoaXMgaXMgYXQgYW5k
CnNlZSBpZiBJIGNhbiBzaHV0IG9mZiBhdXRvbWF0aWMgc3RhcnR4IHJ1bm5pbmcgaW4gZ25vbWUu
CgpPbiBTdW4sIDUgU2VwIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cgo+IEhpLAo+Cj4KPiBUaGFua3MgZm9yIGFsbCB0aGlzIGluZm9ybWF0aW9uIQo+Cj4K
PiBKZW51eCBkb2Vzbid0IHVzZSBnZG0gYXQgYWxsLiB0aGV5IHJ1biBzdGFydHggaW4gdGhlIHVz
ZXIncyAnLnByb2ZpbGUnLCBhbmQKPiBzZXQgdGhlIHNlc3Npb24gaW4gfi8ueGluaXRyYycsIEkg
dGhpbmsuwqAgSSB0aGluayB0aGUgZ25vbWUtdGVybWluYWwgcHJvZ3JhbQo+IGlzIG9uIHRoZSBz
eXN0ZW0sIGFzIG15IGF0dGVtcHQgdG8gcnVuIGl0LCBmcm9tIHRoZSBydW4gZGlhbG9ndWUsIGRv
ZXNuJ3Qgc2F5Cj4gImNvbW1hbmQgbm90IGZvdW5kIi4KPgo+Cj4KPiBDaGVlcnMsCj4KPgo+Cj4g
RGF2ZcKgIEguCj4KPgo+Cj4KPiBPbiA5LzUvMjEgNDoyMSBQTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+IE1heWJlIG5vdCwgaXQgY291bGQgYmUgSmVudXgg
aW5zdGFsbCBzY3JpcHQgZGlkbid0IGluY2x1ZGUgZ25vbWUtdGVybWluYWwKPiA+IGluIGl0cyBw
YWNrYWdlcyBkb3dubG9hZC4gIEkgd2Fzbid0IGFibGUgdG8gZmluZCBpdCBvbiB0aGUgc3lzdGVt
LiAgSXQKPiA+IGNvdWxkIGJlIGdub21lIHJlbmFtZWQgdGhhdCBwYWNrYWdlIHRvby4gIE1heWJl
IHN5c3RlbWN0bCBkaXNhYmxlCj4gPiBnZG0uc2VydmljZSBhbmQgb24gcmVib290IHlvdSBnbyBp
bnRvIGZlbnJpciBmb3IgdGhlIHRlcm1pbmFsIHdvcmsgb24gYQo+ID4gcmVhbCBjb25zb2xlLiAg
SWYgSmVudXggaW5jbHVkZWQgYSBzdGFydHggc2NyaXB0IHRoYXQgY2FuIGZpcnN0IGVuYWJsZSBn
ZG0KPiA+IHRoZW4gc3RhcnQgZ2RtIHVwIHRoYXQgbWlnaHQgd29yay4gIEFsc28gc2VlIHdoYXQg
aGFwcGVucyB3aGVuIHlvdSB0cnkKPiA+IGRvd25sb2FkaW5nIGdub21lLXRlcm1pbmFsLiAgSXQg
Y291bGQgYmUgaXQncyBhdmFpbGFibGUgZm9yIGluc3RhbGxhdGlvbgo+ID4gYWZ0ZXIgYWxsLgo+
ID4KPiA+Cj4gPiBPbiBTdW4sIDUgU2VwIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4gPgo+ID4+IEknZCBjb25zaWRlciB0aGF0IGlmIEkgaGFkIGEgcnVu
bmluZyB0ZXJtaW5hbDsgdGhpcyBzZWVtcyBub3QgdG8gYmUgdGhlCj4gPj4gY2FzZQo+ID4+IG9y
LCBpcyB0aGF0ICctZScgb3B0aW9uIHRvIGJlIHVzZWQgaW4gYSBjb25zb2xlPwo+ID4+Cj4gPj4K
PiA+PiBUaGFua3MsCj4gPj4KPiA+Pgo+ID4+IERhdmUKPiA+Pgo+ID4+Cj4gPj4KPiA+Pgo+ID4+
IE9uIFN1biwgU2VwIDUsIDIwMjEgYXQgMTo0NCBQTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIDwKPiA+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiA+Pgo+ID4+
PiBIYXZlIHlvdSB0cmllZCBmZW5yaXIgLWUgeWV0Pwo+ID4+Pgo+ID4+Pgo+ID4+PiBPbiBTdW4s
IDUgU2VwIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4g
Pj4+Cj4gPj4+PiBUaGFuayB5b3UhICBNdXN0IGJlIHNvbWV0aGluZyBpbiB0aGUgd2F5IEFyY2gg
YnVpbHQgR05PTUUuICBJdCdzIHByZXR0eQo+ID4+PiBoYXJkCj4gPj4+PiB0byBtYWludGFpbiBh
IHN5c3RlbSB3aXRob3V0IGEgd29ya2luZyB0ZXJtaW5hbC4KPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4K
PiA+Pj4+IENoZWVycywKPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IERhdmUKPiA+Pj4+Cj4g
Pj4+Pgo+ID4+Pj4KPiA+Pj4+Cj4gPj4+PiBTZW50IGZyb20gU2xpbnQgR05VL0xpbnV4LiAgaHR0
cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbCBmb3IgaW5mbwo+ID4+Pj4KPiA+Pj4+IE9u
IDkvNS8yMSAxOjI3IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+ID4+Pj4+IEkgdGhpbmsgdGhpcyBpcyBhIGdlbmVyYWwgcHJvYjtlbSBpbiBhcmNoIGFzIEkg
aGF2ZSBydW4gaW50byB0aGUgc2FtZQo+ID4+Pj4+IHByb2JsZW0gYW5kIGhhdmUgbm90IGZvdW5k
IGEgd29yayBhcm91bmQgZm9yIHRoaXMuICBUaGFua3MuCj4gPj4+Pj4KPiA+Pj4+PiBNYXR0aGV3
Cj4gPj4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4+IE9uIFNlcCA1LCAyMDIxLCBhdCAxMjoz
MyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+ID4+Pj4+PiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPj4+Pj4+Cj4gPj4+Pj4+IEdyZWV0aW5ncyEKPiA+
Pj4+Pj4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gSSBpbnN0YWxsZWQgSmVudXggd2l0aCBHTk9NRSwgYW5k
IGZpbmQgdGhhdCB0aGUgcmVzdWx0aW5nIHN5c3RlbSBoYXMKPiA+Pj4gbm8KPiA+Pj4+Pj4gdXNh
YmxlIEduT01FIHRlcm1pbmFsLiAgV2hldGhlciBJIHRyeSBzdGFydGluZyBpdCB3aXRoLAo+ID4+
PiAiZ25vbWUtdGVybWluYWwiLAo+ID4+Pj4+PiBpbiB0aGUgJ3J1bicgZGlhbG9ndWUsIG9yIHNl
bGVjdCBpdCBmcm9tIHRoZSBvdmVydmlldywgbm90aGluZwo+ID4+PiBoYXBwZW5zLiAgSQo+ID4+
Pj4+PiBhbHNvIHRyaWVkIGdldHRpbmcgYSB0YWxraW5nIGNvbnNvbGUgb24gdHR5MiwgYW5kIGZp
bmQgdGhhdCBzdWNoCj4gPj4+IGNvbnNvbGVzCj4gPj4+Pj4+IGRvbid0IHNwZWFrLiAgSG93IGNh
biBJIGdldCBhIHRhbGtpbmcgdGVybWluYWwgb3IgY29uc29sZSBvbiB0aGlzCj4gPj4+IHN5c3Rl
bSwKPiA+Pj4+Pj4gYmVzaWRlcyByZWluc3RhbGxpbmcgYW5kIGNob29zaW5nIE1hdGU/Cj4gPj4+
Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+IFRoYW5rcywKPiA+Pj4+Pj4KPiA+Pj4+Pj4K
PiA+Pj4+Pj4KPiA+Pj4+Pj4gRGF2ZQo+ID4+Pj4+Pgo+ID4+Pj4+Pgo+ID4+Pj4+Pgo+ID4+Pj4+
Pgo+ID4+Pj4+PiAtLQo+ID4+Pj4+PiBTZW50IGZyb20gU2xpbnQgR05VL0xpbnV4LiAgaHR0cHM6
Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbCBmb3IKPiA+Pj4gaW5mbwo+ID4+Pj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+ID4+Pj4+Cj4gPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Pgo+ID4+Pgo+ID4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+
Cj4gPj4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPiA+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

