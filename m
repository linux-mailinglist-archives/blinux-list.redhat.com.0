Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 90691677284
	for <lists+blinux-list@lfdr.de>; Sun, 22 Jan 2023 22:02:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674421345;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8Xu4Rjps8Jsw7WJolKRwmjLHI5XqUOdH20IBan4Nz60=;
	b=cXwmNPe7QHnZGTxAzvhDmE4l/0OWrZ+Qx+evEtATq9t+mx74nLlQfRaaMmDp8PAYmP31a5
	QqLSeoVUwJZUrWUYSWWafiyON9OOXZunHniq5EgLaCUiSHQ+ffeoyl+zQ5FAGWRFfHfxub
	CRZwImFd9Z8clVKILrwGMw6utJzxQko=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-85-XhdsM7evN_WXXoLQ2KUxUA-1; Sun, 22 Jan 2023 16:02:24 -0500
X-MC-Unique: XhdsM7evN_WXXoLQ2KUxUA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32DFB29AA3B6;
	Sun, 22 Jan 2023 21:02:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C84192166B33;
	Sun, 22 Jan 2023 21:02:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DE9B9194658D;
	Sun, 22 Jan 2023 21:02:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 22 Jan 2023 16:02:14 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: new version of jenux
In-Reply-To: <mailman.465.1674420087.8173.blinux-list@redhat.com>
References: <mailman.286.1674235413.8169.blinux-list@redhat.com>
 <mailman.358.1674274777.8176.blinux-list@redhat.com>
 <mailman.397.1674314804.8168.blinux-list@redhat.com>
 <mailman.400.1674322782.8168.blinux-list@redhat.com>
 <mailman.410.1674327069.8170.blinux-list@redhat.com>
 <mailman.504.1674407856.8170.blinux-list@redhat.com>
 <mailman.498.1674408109.8168.blinux-list@redhat.com>
 <mailman.515.1674417171.8170.blinux-list@redhat.com>
 <mailman.462.1674418491.8173.blinux-list@redhat.com>
 <mailman.465.1674420087.8173.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.523.1674421338.8174.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLCB0aGF0J3MgZ29vZCB0byBrbm93LCB3aGVuIEkgYnV5IGEgcGkgSSdsbCByZW1lbWJl
ciB0byBidXkgYSBmZXcKZmxhc2ggY2FyZHMgdG9vLgoKCgpKdWRlIDxqZGFzaGllbCBhdCBwYW5p
eCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgpkZWZlbnNlIG9m
IGxpYmVydHk6CiBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRo
YXQgb3JkZXIuIgotRWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKCi4KCk9uIFN1biwgMjIg
SmFuIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IE5v
dCByZWFsbHkgSnVkZS4gRmxhc2ggY2FyZHMgcHJlc2VudHMgaXRzZWxmIGFzICBhIHNtYWxsIHJl
Y3Rhbmd1bGFyIGRldmljZSB0aGF0Cj4gYXJlIGluc2VydGVkIGluIHRoZSBjb21wdXRlciBpbiBh
IHNwZWNpZmljIHNsb3Qgb3IgaW4gYW4gVVNCIGVuY2xvc3VyZSBsb29raW5nCj4gbGlrZSBhbiBV
U0Igc3RpY2suCj4KPiBUaGV5IGFyZSB1c2VkIG9uIGEgUEkgYXMgbWFzcyBzdG9yYWdlIGRldmlj
ZS4KPgo+IERpZGllcgo+Cj4gTGUgMjIvMDEvMjAyMyA/IDIxOjE0LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIGEgP2NyaXTCoDoKPiA+IGZsYXNoIGNhcmQgaXMgYW5vdGhlciBu
YW1lIGZvciB1c2Igc3RpY2sgYW5kIGFub3RoZXIgbmFtZSBmb3IgdGh1bWIgZHJpdmUuCj4gPgo+
ID4KPiA+Cj4gPiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPgo+ID4gIlRoZXJlIGFy
ZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+ID4gIHNvYXAs
IGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4gPiAt
RWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPiA+Cj4gPiAuCj4gPgo+ID4gT24gU3VuLCAy
MiBKYW4gMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+
Cj4gPj4gSGksCj4gPj4KPiA+Pgo+ID4+IEluIHRoZSBtZW51IHRoYXQgY29tZXMgdXAgYXQgYm9v
dCB0aGVyZSBpcyBhbiBvcHNpb24gdG8gZmxhc2ggdG8gc2QgY2FyZCBmb3IKPiA+PiByYXNwYnVy
cnkgZGV2aWNlcy7CoCBJIGhhdmUgbm90IHRyaWVkIHRoaXMgYXMgSSBkbyBub3QgaGF2ZSBhIGNh
cmQgdG8gdGVzdCB0aGlzCj4gPj4gc28gZG9uJ3Qga25vdyBob3cgdGhpcyB3b2lya3MuCj4gPj4K
PiA+Pgo+ID4+IE1hdHRoZXcKPiA+Pgo+ID4+Cj4gPj4KPiA+PiBPbiAxLzIyLzIwMjMgMTI6MjEg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+IEkgaGF2
ZSBuZXZlciBoYWQgb25lIG9mIHRob3NlIHBpIHN5c3RlbXMuICBJZiBvbmUgd2VyZSB0byBwdXQg
SmVudXggb24gYQo+ID4+PiB1c2Igc3RpY2sgdGhlbiBib290IHRoZSBwaSBmcm9tIHRoZSBzdGlj
ayB5b3UgY291bGQgZmluZCBvdXQgaWYgaXQgd291bGQKPiA+Pj4gd29yay4gIElmIEkgZ2V0IGEg
Z29vZCBwaSBzeXN0ZW0gSSdtIGdvaW5nIHRvIG5lZWQgYnV5aW5nIGFkdmljZSBhbmQKPiA+Pj4g
V2FsTWFydCBpc24ndCBhIGdvb2QgcGxhY2UgZm9yIHRoYXQuICBJZiB0aGV5IGhhdmUgdGhvc2Ug
YXQgQmVzdCBCdXkgb3IKPiA+Pj4gU3RhcGxlcyB0aGF0IG1pZ2h0IHdvcmsgYmV0dGVyLgo+ID4+
Pgo+ID4+Pgo+ID4+Pgo+ID4+PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhl
cmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+ID4+PiBkZWZlbnNlIG9mIGxpYmVydHk6
Cj4gPj4+ICAgc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0
IG9yZGVyLiIKPiA+Pj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4gPj4+Cj4gPj4+
IC4KPiA+Pj4KPiA+Pj4gT24gU3VuLCAyMiBKYW4gMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4KPiA+Pj4+IEhlbGxvLAo+ID4+Pj4KPiA+Pj4+IGlz
IHNvbWUgd2F5IHRvIHJ1biBKZW51eCBvbiBSYXNwYmVycnkgUGkgNEIgb3IgNDAwPwo+ID4+Pj4K
PiA+Pj4+IFRoYW5rcy4KPiA+Pj4+Cj4gPj4+PiBCZXN0IHJlZ2FyZHMKPiA+Pj4+Cj4gPj4+PiBW
b2p0YS4KPiA+Pj4+Cj4gPj4+PiBEbmUgMjEuIDAxLiAyMyB2IDE5OjUxIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFwc2FsKGEpOgo+ID4+Pj4+IERhbmllbCBuYXNoIGhhcyBi
ZWVuIGF3YXJlIG9mIHRoaXMgcHJvYmxlbSBmb3IgYWxsIGZvdXIgZmFpbGluZyBpc29zLiAgSGUK
PiA+Pj4+PiBzdWdnZXN0ZWQgSSB0YWtlIGFjdGlvbnMgSSB0aG91Z2h0IHF1aXRlIHJpc2t5IHdp
dGggcmVnYXJkIHRvIHVlZmkgb24gdGhlCj4gPj4+Pj4gc2luZ2xlIGNvbXB1dGVyIEkgaGF2ZS4g
IEkgdG9vayBzb21lIG9mIHRob3NlIGFjdGlvbnMgYW5kIHRob3NlIGFjdGlvbnMKPiA+Pj4+PiBm
YWlsZWQgdG8gc29sdmUgdGhpcyBwcm9ibGVtLiAgTWljcm9zb2Z0IGlzIGJ1cnJpZWQgZGVlcCBp
biB0aGUgbWlkZGxlIG9mCj4gPj4+Pj4gdGhpcyBtZXNzIGFzIG9yaWdpbmF0b3Igb2YgdWVmaSBh
bmQgRGFuaWVsIE5hc2ggZ290IHRoZSB1ZWZpIGNvZGUgZnJvbQo+ID4+Pj4+IGZlZG9yYS4gIEhl
IG1heSBoYXZlIGRvbmUgdGhpbmdzIHRvIHRoZSBjb2RlIGFzIGl0IHdlbnQgaW50byBqZW51eCB0
aGF0Cj4gPj4+Pj4gYnJva2UgdGhpbmdzIGJ1dCBJIGNhbid0IHNheSBmb3Igc3VyZSBzaW5jZSBJ
IHdhc24ndCBsb29raW5nIG92ZXIgaGlzCj4gPj4+Pj4gc2hvdWxkZXIuICBJZiBJIGNhbiBnZXQg
YSBiZSBteSBleWVzIHZvbHVudGVlciB0byB0ZWxsIG1lIGFueSBlcnJvcgo+ID4+Pj4+IG1lc3Nh
Z2VzIHRoYXQgY29tZSB1cCBhcyB0aGlzIGZhaWxlZCBpc28gYm9vdHMgSSdsbCBnZXQgdGhvc2Ug
dG8gRGFuaWVsCj4gPj4+Pj4gTmFzaCBhbmQgdGhlbiB3ZSBtYXkgaGF2ZSBsb2NhdGVkIG9uZSBv
ZiBoaXMgcHJvYmxlbXMuCj4gPj4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gSnVkZSA8amRh
c2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQg
aW4KPiA+Pj4+PiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4gPj4+Pj4gICAgc29hcCwgYmFsbG90LCBq
dXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPiA+Pj4+PiAtRWQgSG93
ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPiA+Pj4+Pgo+ID4+Pj4+IC4KPiA+Pj4+Pgo+ID4+Pj4+
IE9uIFNhdCwgMjEgSmFuIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4gPj4+Pj4KPiA+Pj4+Pj4gSGkgSnVkZC4gIEhhdmUgeW91IHJlcG9ydGVkIHRoaXMg
dG8gRGFuaWVsIE5hc2g/ICBJIHRoaW5rIGhlIGlzIHRoZSBqZXV4Cj4gPj4+Pj4+IGRldmVsb3Bl
ci4gIFlvdSBtaWdodCB3YW50IHRvIGxldCBoaW0ga25vdyB3aGF0IGlzIGdvaW5nIG9uIHNvIGhl
IGNhbgo+ID4+Pj4+PiB0cmFjawo+ID4+Pj4+PiBpdCBkb3duLiAgVGhhbmtzLgo+ID4+Pj4+Pgo+
ID4+Pj4+PiBNYXR0aGV3Cj4gPj4+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+PiBPbiBK
YW4gMjEsIDIwMjMsIGF0IDEwOjI2IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uCj4gPj4+Pj4+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPj4+Pj4+Pgo+
ID4+Pj4+Pj4gWW91IGhhdmUgdG8gaW5zdGFsbCB0aGUgdmVyc2lvbiB0byBmaW5kIG91dC4gIE9u
IHRoZSBjdXJyZW50IGVxdWlwbWVudAo+ID4+Pj4+Pj4gdGhhdCdzIG5vdCBwb3NzaWJsZS4gIFNv
bWV0aW1lIHRoaXMgd2Vla2VuZCBJJ2xsIHNlZSBpZiBiZSBteSBleWVzIGNhbgo+ID4+Pj4+Pj4g
Z2l2ZSBtZSBpbmZvcm1hdGlvbiBhYm91dCB3aGF0IGNvbWVzIHVwIG9uIHRoZSBzY3JlZW4gYmVm
b3JlIGplbnV4IGZhaWxzCj4gPj4+Pj4+PiB0byBzcGVhayBhbmQgcmVib290cy4gIEknbSBjdXJp
b3VzIGlmIGFueSBjb21wdXRlciBvdGhlciB0aGFuIHRoZQo+ID4+Pj4+Pj4gYXV0aG9yJ3MKPiA+
Pj4+Pj4+IGNhbiBpbnN0YWxsIHRoaXMgb3IgdGhlIGxhc3QgdGhyZWUgdmVyc2lvbnMgb2YgamVu
dXggd2hpY2ggaXMgbXkgcmVhc29uCj4gPj4+Pj4+PiBmb3IgcG9zdGluZyBoZXJlLgo+ID4+Pj4+
Pj4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXgg
ZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPiA+Pj4+Pj4+IGRl
ZmVuc2Ugb2YgbGliZXJ0eToKPiA+Pj4+Pj4+IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8u
IFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4gPj4+Pj4+PiAtRWQgSG93ZGVyc2hlbHQgKEF1
dGhvciwgMTk0MCkKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiAuCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gT24g
RnJpLCAyMCBKYW4gMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPiA+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gd2hhdCBpcyBuZXcgaW4gdGhlIGxhdGVzdCB2ZXJzaW9u
Pwo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gT24gMS8yMC8yMDIzIDk6MjMgQU0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+Pj4+Pj4+IE5vdCByZWFkeSBmb3Ig
ZG93bmxvYWQuICBUaGUgc2hhNTEyc3VtIGZpbGUgdXAgb24gdGhlIHdlYnNpdGUgdG8gY2hlY2sK
PiA+Pj4+Pj4+Pj4gdGhlCj4gPj4+Pj4+Pj4+IGlzbydzIGludGVncml0eSBkb2Vzbid0IG1hdGNo
LiAgVGhpcyBvbmUgcHJvYmFibHkgd29uJ3QgaGF2ZSBhbnkKPiA+Pj4+Pj4+Pj4gYWJpbGl0eQo+
ID4+Pj4+Pj4+PiB0byBpbnN0YWxsIG9uIHRoaW5rcGVuZ3VpbiBjb21wdXRlcnMgZWl0aGVyIHNp
bmNlIHRoZSBsYXN0IHRocmVlIGlzb3MKPiA+Pj4+Pj4+Pj4gYWxzbwo+ID4+Pj4+Pj4+PiBmYWls
ZWQgYnV0IEknbGwgY2hlY2sgaXQgb3V0IGp1c3QgdG8gbWFrZSBzdXJlIHRoZSBsb29zaW5nIHN0
cmVhawo+ID4+Pj4+Pj4+PiByZW1haW5zCj4gPj4+Pj4+Pj4+IHVuYnJva2VuLgo+ID4+Pj4+Pj4+
Pgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29t
Pgo+ID4+Pj4+Pj4+PiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbiBkZWZlbnNl
IG9mIGxpYmVydHk6Cj4gPj4+Pj4+Pj4+ICAgIHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8u
IFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4gPj4+Pj4+Pj4+IC1FZCBIb3dkZXJzaGVsdCAo
QXV0aG9yLCAxOTQwKQo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiAuCj4gPj4+Pj4+Pj4+Cj4gPj4+
Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+Pj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gPj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+Pj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4gPj4+Pj4+Pgo+ID4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+ID4+Pj4+Cj4gPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+ID4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+Cj4gPj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+ID4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4KPiA+Pgo+
ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PiA+Pgo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

