Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E038A3FAF27
	for <lists+blinux-list@lfdr.de>; Mon, 30 Aug 2021 02:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630283253;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IH97VjJ9jSsr7b85OUKXNdLF2UpUjSbdpIN9dA7jNg8=;
	b=bi3cbRbvRKif4z9EuESN6/f9jPc+JJk+8moRVPx17Bt4+77gQPyyELf3mARA7TCM4HmWUc
	Dfi12lHak34v+a5ary3pYImK4IG1os80zwAkeyt8P9rMprL1bW7KHdPyrhn5eDi5rOOdSI
	7VOmImUL8iUgJnMn1CnYwbRkR9dBEAw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-DqpHyFWTNK-dB6GvUz_fNA-1; Sun, 29 Aug 2021 20:27:32 -0400
X-MC-Unique: DqpHyFWTNK-dB6GvUz_fNA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 275A487D542;
	Mon, 30 Aug 2021 00:27:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D5755D9CA;
	Mon, 30 Aug 2021 00:27:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D3A414BB7B;
	Mon, 30 Aug 2021 00:27:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17U0P6YN028681 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 29 Aug 2021 20:25:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 416651111C8B; Mon, 30 Aug 2021 00:25:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CD391111C89
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 00:25:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 794BC88647A
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 00:25:01 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-315-5xtXNxGnOsmRD_NnA8HGNQ-1; Sun, 29 Aug 2021 20:24:59 -0400
X-MC-Unique: 5xtXNxGnOsmRD_NnA8HGNQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GyWL24Y4kz48FF
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 20:24:58 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GyWL23kjrzcbc; Sun, 29 Aug 2021 20:24:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GyWL237nTzcbP
	for <blinux-list@redhat.com>; Sun, 29 Aug 2021 20:24:58 -0400 (EDT)
Date: Sun, 29 Aug 2021 20:24:58 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Found this on youtube
In-Reply-To: <a3199a39-e7c7-17d6-f5d3-fc8bd1ae13b9@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108292019140.16928@panix1.panix.com>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
	<efe42a63-c45d-faf0-fa47-289a51049768@gmail.com>
	<alpine.NEB.2.23.451.2108290909030.12570@panix1.panix.com>
	<YSuTJ9eHEzFKdmn9@brandt-slint.localhost>
	<a3199a39-e7c7-17d6-f5d3-fc8bd1ae13b9@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17U0P6YN028681
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

WW91IHByb2JhYmx5IGRpc3J1cHRlZCB0aGUgaW5zdGFsbCBldmVyeSB0aW1lIGR1cmluZyB1cGRh
dGluZyB0aGUga2V5cmluZwpzdGVwLiAgSmVudXggYXV0b21hdGljYWxseSBzZXRzIHRoYXQgaW4g
bW90aW9uIGFuZCBpdCdzIGltcG9ydGFudCB0byBnbyB0bwpsdW5jaCB3aGlsZSB0aGF0J3MgaGFw
cGVuaW5nIHNpbmNlIGl0IHRha2VzIGEgd2hpbGUuICBJIGhhZCBzdWdnZXN0ZWQgYWxsCm9mIHRo
aXMgZ2V0IGRvbmUgYmVmb3JlIHNwZWVjaCBldmVyIGNvbWVzIHVwIGJ1dCB0aGF0IGlzbid0IGhh
cHBlbmluZyB5ZXQuClRoZSBjYXBzbG9jay11IGtleSByZWFkcyBwcmV2aW91cyBsaW5lIHRoZSBj
YXBzbG9jay1pIGtleSByZWFkcyBjdXJyZW50CmxpbmUgYW5kIGNhcHNsb2NrLW8gcmVhZHMgdGhl
IG5leHQgbGluZS4gIEZlbnJpciBpcyBhIGNoYWxsZW5nZSBmb3IgdGhvc2UKdXNlZCB0byBlc3Bl
YWsuICBNeSBndWVzcyBpcyBpZiB5b3UgZG9uJ3QgbGlrZSBmZW5yaXIgd2FpdCB1bnRpbCB5b3Ug
Z2V0IGEKSmVudXggYXJjaGxpbnV4IGluc3RhbGwgY29tcGxldGVkIHRoZW4gcGFjbWFuIC1TIGVz
cGVhayBhbmQgb25jZSBkb25lCnN5c3RlbWN0bCBkaXNhYmxlIGZlbnJpciBhbmQgdGhlbiBzeXN0
ZW1jdGwgZW5hYmxlIGVzcGVhayB0aGVuIHJlYm9vdCBhbmQKc2VlIGlmIHRoYXQncyBiZXR0ZXIu
ICBPbmNlIGRvbmUsIHlvdSBtaWdodCBhbHNvIGRvIGFzIHJvb3QgbGFzdCB0d28KY29tbWFuZHMg
bmVlZCBkb2luZyBhcyByb290IHRvbyBwYWNtYW4gLVIgZmVucmlyLgoKCk9uIFN1biwgMjkgQXVn
IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhpLAo+
Cj4KPiBZZXN0ZXJkYXkgSSBkaWQgYSBibGluZCBhcmNoIGluc3RhbGwgd2l0aCBubyBwcm9ibGVt
LsKgIE9uZSBvZiB0aGUgb3BzaW9uIGlzIHRvCj4gdXBkYXRlIHRoZSBrZXkgcmluZy7CoCBZb3Ug
bWF5IHdhbnQgdG8gdHJ5IHRoaXMgZmlyc3QgYmVmb3JlIGFueXRoaW5nIGVsc2UuCj4KPgo+IE1h
dHRoZXcKPgo+Cj4KPiBPbiA4LzI5LzIxIDEwOjAxIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4gSGksCj4gPgo+ID4gZXZlcnkgdGltZSBJJ3ZlIHRyaWVk
IGluc3RhbGxpbmcgSmVudXggdGhlIGluc3RhbGwgZmFpbGVkLiBXaHk/IEkgaGF2ZSBubwo+ID4g
aWRlYS4gSSBrbm93IHRoZXJlIGFyZSBtYW55IHBlb3BsZSB2ZXJyeSBoYXBwZWx5IHVzaW5nIEpl
bnV4LCB1bmZvcnR1bmF0bHksCj4gPiBJIGFtIG5vdCBvbmUgb2YgdGhlbS4KPiA+Cj4gPiBXYXJt
IHJlZ2FyZHMsCj4gPgo+ID4gQnJhbmR0IFN0ZWVua2FtcAo+ID4KPiA+IFNlbnQgdXNpbmcgTXV0
dCBmcm9tIHRoZSBTbGludCBsYXB0b3AKPiA+IE9uIFN1biwgQXVnIDI5LCAyMDIxIGF0IDA5OjEy
OjI5QU0gLTA0MDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPiA+IHdyb3Rl
Ogo+ID4+IEplbnV4IGRvZXMgZ2V0IGFuIGFjY2Vzc2libGUgc3lzdGVtIHVwIHdpdGggZWl0aGVy
IGFuZHJvaWQgb3Igc2V2ZXJhbAo+ID4+IGZsYXZvcnMgb2YgYXJjaGxpbnV4LiAgTm90IGFsbCBm
bGF2b3JzIG9mIGFyY2hsaW51eCBhcmUgYWNjZXNzaWJsZSB0aGF0Cj4gPj4gY2FuIGJlIGluc3Rh
bGxlZCB3aXRoIEplbnV4IGJ1dCBtb3N0IGFyZS4gIEplbnV4IGhhcyBjb250aW51aW5nIHN1cHBv
cnQgYXMKPiA+PiBzaG93biBieSB0aGUgZGlmZmVyZW50IGRhdGVzIGVtYmVkZGVkIGluIHRoZSBu
YW1lcyBvZiB0aGUgaXNvJ3MgYW5kIHNoYTUxMgo+ID4+IGZpbGVzIGF2YWlsYWJsZSBvbiBpdHMg
c2l0ZS4KPiA+Pgo+ID4+Cj4gPj4gT24gU3VuLCAyOSBBdWcgMjAyMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pgo+ID4+PiBIaSBhbGwsCj4gPj4+Cj4gPj4+
Cj4gPj4+IFRoZSBsYXN0IEkgY2hlY2tlZCwgdGhlIEJsaW5kQXJjaCBJU08gaXMgcmF0aGVyIG9s
ZC4gSSBkaWQgYW4gaW5zdGFsbCwgYnV0Cj4gPj4+IHRoZXJlIHdlcmUgc28gbWFueSB0aGluZ3Mg
d3Jvbmcgd2l0aCB0aGUgaW5zdGFsbCBJIGtlcHQgaXQgZm9yIGxlc3MgdGhhbgo+ID4+PiBhbgo+
ID4+PiBob3VyLiBJdCB3b3VsZCd2ZSB0YWtlbiBtZSBkYXlzIHRvIGZpeCBpdCBhbGwuCj4gPj4+
Cj4gPj4+Cj4gPj4+IEkgYW0gYWN0dWFsbHkgY29uc2lkZGVyaW5nIHdyaXRpbmcgYW4gaW5zdGFs
bCBTY3JpcHQgaW4gdGhlIGxpbmUgb2YgYQo+ID4+PiBOaXhPcwo+ID4+PiBjb25maWd1cmF0aW9u
IGZvciBteSBvd24gcGVyc29uYWwgdXNlLCB0aHVzLCBubyBjaG9pY2VzLCBhbGwgYmFrZWQgaW4g
dG8KPiA+Pj4gdGhlCj4gPj4+IHNjcmlwdC4gSXQgd291bGQgcHJvYmFibHkgdGFrZSBtZSBzb21l
IHRpbWUsIGJ1dCB3aGF0IGNhbiB5b3UgZG8/Cj4gPj4+Cj4gPj4+Cj4gPj4+IEkgd291bGQgcmF0
aGVyIGRvIHRoYXQgdGhhbiBzY3JldyBhcm91bmQgd2l0aCAiaW5zdGFsbCBzY3JpcHRzIi4gTW9z
dCBvZgo+ID4+PiB0aGUKPiA+Pj4gZGFybiB0aGluZ3MgaXMgYnVnZ3kgYXMgYWxsIGdldCBvdXQs
IG9yIGRvZXNuJ3QgaW5jbHVkZSB0aGUgYWNjZXNzaWJpbGl0eQo+ID4+PiBzdHVmZiBieSBkZWZh
dWx0Lgo+ID4+Pgo+ID4+PiBXYXJtIHJlZ2FyZHMsCj4gPj4+Cj4gPj4+IEJyYW5kdCBTdGVlbmth
bXAKPiA+Pj4KPiA+Pj4gU2VudCB1c2luZyBUaHVuZGVyYmlyZCBmcm9tIHRoZSBTbGludCBMYXB0
b3AKPiA+Pj4KPiA+Pj4gT24gMjAyMS8wOC8yOCAyMzowNSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4+IEhpIGFsbCwKPiA+Pj4+Cj4gPj4+PiBKdXN0IGZv
dW5kIHRoaXMgb24gWW91dHViZSBhbmQgd29uZGVyZWQgaWYgYW55b25lIGhoYXMgdHJpZWQgaXQu
ICBUaGlzIGlzCj4gPj4+PiBhCj4gPj4+PiBibGluZCBhcmNoIGluc3RhbGwgZGVtbyBvbiBob3cg
aXQgd29ya3MuCj4gPj4+Pgo+ID4+Pj4gaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj03
MmctMmZiUDA0dwo+ID4+Pj4gTWF0dGhldwo+ID4+Pj4KPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
ID4+Pj4KPiA+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiA+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+ID4+Pgo+ID4+Pgo+ID4+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pgo+ID4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4KPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

