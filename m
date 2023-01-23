Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 86673678A08
	for <lists+blinux-list@lfdr.de>; Mon, 23 Jan 2023 22:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674511046;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Oyie1FHHujfNmByTp1VVDCC/qRAr5OYCblRHewI/gTw=;
	b=F7rMNpOF8/wTSdmFtXb4jJjQHprw4CCiEWW2jS5k9y7VZljIZakFSKM2ZTm3wV7Cg1FY4Y
	l53RGBiMY6DIjiX4KceeGsDYuoXztM3Vrn8SW/m2UFxRe/Z8+etWYWgG5BxObsuU5aqn8Y
	fpGvQ61xPqTr+0XAUIO0plePbGVKURI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-97-sIIade4xMxirJuPaoEdZIw-1; Mon, 23 Jan 2023 16:57:25 -0500
X-MC-Unique: sIIade4xMxirJuPaoEdZIw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 09F6E3814583;
	Mon, 23 Jan 2023 21:57:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ABE24175A2;
	Mon, 23 Jan 2023 21:57:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 612221946597;
	Mon, 23 Jan 2023 21:57:22 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.300.101.1.3\))
Subject: Re: mumble from old machine to new
Date: Mon, 23 Jan 2023 15:57:11 -0600
References: <mailman.706.1674502389.8171.blinux-list@redhat.com>
 <mailman.713.1674503420.8177.blinux-list@redhat.com>
 <mailman.698.1674507581.8169.blinux-list@redhat.com>
 <mailman.635.1674510064.8173.blinux-list@redhat.com>
 <mailman.726.1674510697.8171.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.726.1674510697.8171.blinux-list@redhat.com>
Message-ID: <mailman.682.1674511041.8175.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGlkIHlvdSBtZWFuCkFmdGVyIHRoZSBmaXJzdCBjb21tYW5kPwoKPiBPbiBKYW4gMjMsIDIwMjMs
IGF0IDE1OjUxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlz
dEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBTb3JyeSBJIHR5cGVkIHRvbyBmYXN0LiBBdGhlIGZp
c3J0IGNvbWFuZCBhbmQgaGF2aW5nIG1vdW50ZWQgdGhlIHRodW1iIG9uIHRoZQo+IG5ldyBtYWNo
aW5lLCB0eXBlCj4gCj4gbWtkaXIgLXAgfi8ubG9jYWwvc2hhcmUvTXVtYmxlL011bWJsZQo+IGNw
IC9tbnQvbXVtYmxlLnNxbGl0ZSB+Ly5sb2NhbC9zaGFyZS9NdW1ibGUvTXVtYmxlLwo+IAo+IElm
IHlvdSBhbHJlYWR5IHN0YXJ0ZWQgbXVtYmxlIG9uIHRoZSBuZXcgbWFjaGluZSwgdGhlIG1rZGly
IGNvbW1hbmQKPiBpcyB1bm5lY2Vzc2FyeSAoYnV0IHdpbGwgbm90IGh1cnQpIGFzIHRoZSBkaXJl
Y3Rvcnkgd2lsbCBhbHJlYWR5IGV4aXN0Lgo+IEluIHRoaXMgY2FzZSB0aGUgZmlsZSBmcm9tIHRo
ZSBvbGQgbWFjaGluZSB3aWxsIG92ZXJyaWRlIHRoZSBvbmUgb24gdGhlIG5ldyBtYWNoaW5lLgo+
IAo+IENoZWVycywKPiBEaWRpZXIKPiAtLSAKPiBEaWRpZXIgU3BhaWVyCj4gU2xpbnQgbWFpbnRh
aW5lcgo+IAo+IExlIDIzLzAxLzIwMjMgw6AgMjI6NDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+PiBZb3UgZG8gbm90IG5lZWQgbmF1dGlsdXMgZm9yIHRo
YXQuCj4+IAo+PiBKdXN0IG1vdW50IHRoZSB0aHVtYiBkcml2ZSwgZm9yIGluc3RhbmNlIGFzIC9t
bnQsIHRoZW4gdHlwZQo+PiAKPj4gY3Agfi8ubG9jYWwvc2hhcmUvTXVtYmxlL011bWJsZS9tdW1i
bGUuc3FsaXRlICAvbW50Cj4+IAo+PiB0aGVuIHVtb3VudCB0aGUgZHJpdmUsIG1vdW50IGl0IG9u
IHRoZSBuZXcgbWNoaW5lIGFsc28gYXMgL21udCBhbmQgdHlwZToKPj4gCj4+IGNwIC9tbnQvLmxv
Y2FsL3NoYXJlL011bWJsZS9NdW1ibGUvbXVtYmxlLnNxbGl0ZSB+Lwo+PiAKPj4gVHlwZSB0aGUg
Y3AgY29tbWFuZHMgYXJlIHJlZ3VsYXIgdXNlci4KPj4gCj4+IENoZWVycywKPj4gRGlkaWVyCj4+
IC0tCj4+IERpZGllciBTcGFpZXIKPj4gU2xpbnQgbWFpbnRhaW5lcgo+PiAKPj4gUFMgaXQgd291
bGQgaGF2ZSBiZWVuIHdheSBlYXNpZXIgdG8gdXNlIG1hZ2ljLXdvcm1ob2xlLCB1bmZvcnR1bmF0
ZWx5IGF0IGxlYXN0Cj4+IHVudGlsIHllc3RlcmRheSBtYWdpYy13b3JtaG9sZSB3YXMgbm90ICh5
ZXQpIGF2YWlsYWJsZSBmb3IgRmVkb3JhIDM3LiBXaGF0IGEgc2hhbWUhCj4+IAo+PiBMZSAyMy8w
MS8yMDIzIMOgIDIxOjU5LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0IDoKPj4+IEkgY2FuIGdvIHRoZXJlIGluIHRlcm1pbmFsLgo+Pj4gSG93IG1heSBJIG1ha2Ug
dGhhdCB2aXNpYmxlIHNvIEkgY2FuIHVzZSBuYXV0aWx1cyB0byBjb3B5IHRvIHRodW1iIGRyaXZl
Pwo+Pj4gCj4+Pj4gT24gSmFuIDIzLCAyMDIzLCBhdCAxMzo1MCwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4gCj4+
Pj4gQ29weSBmcm9tIHRoZSBvbGQgdG8gdGhlIG5ldyBtYWNoaW5lIHRoZSBmaWxlOgo+Pj4+IH4v
LmxvY2FsL3NoYXJlL011bWJsZS9NdW1ibGUvbXVtYmxlLnNxbGl0ZQo+Pj4+IAo+Pj4+IENoZWVy
cywKPj4+PiBEaWRpZXIKPj4+PiAtLQo+Pj4+IERpZGllciBTcGFpZXIKPj4+PiBTbGFpbiBtYWlu
dGFpbmVyCj4+Pj4gCj4+Pj4gTGUgMjMvMDEvMjAyMyDDoCAyMDozMiwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+Pj4+IEkgaGF2ZSB0d28gbWFjaGluZXMg
d2l0aCBmZWRvcmEgMzcuCj4+Pj4+IE11bWJsZSBpcyBvbiB0aGUgb2xkIG1hY2hpbmUsIHNldCB1
cCBhcyBJIGxpa2UgaXQuCj4+Pj4+IEkgaGF2ZSBqdXN0IGluc3RhbGxlZCBtdW1ibGUgb24gdGhl
IG5ldyBtYWNoaW5lLCwgYnV0IGhhdmUgbm90IHlldCBwdXQgaW4gYW55dGhpbmcuCj4+Pj4+IElz
IHRoZXJlIGEgd2F5IHRvIG1vdmUgbXVtYmxlIHNldHRpbmdzIGFuZCBhbGwgZnJvbSB0aGUgb2xk
IG1hY2hpbmUgdG8gdGhlIG5ldyBtYWNoaW5lIHNvIEkgd2lsbCBub3QgbmVlZCB0byBjb25maWd1
cmUgZnJvbSBzY3JhdGNoPwo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

