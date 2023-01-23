Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAD2678A1A
	for <lists+blinux-list@lfdr.de>; Mon, 23 Jan 2023 23:01:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674511314;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WjksOxA8A9OSyD7D/+HPbJf0wpoBGAYFxJKXLoH85Cc=;
	b=TTgLSX/BjMHsDvHXfyTG1ctsIFl3PubXNzauJSlBN3y4+FArhtxwoHG2KVm2JNDdRZZ0Vs
	XAUQUzIfa0jsHW1T4LJfSdS1/Or3uE0m1VH5m6m2H2A4GUwu6l2NLdztOsZsCRWNfzRZjh
	c2ypNEWnoMVudbxeIWfweym8SQ/+Bb4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-203-a31_YXExPL-hoL1VVUpO8w-1; Mon, 23 Jan 2023 17:01:51 -0500
X-MC-Unique: a31_YXExPL-hoL1VVUpO8w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 92DD5802BF3;
	Mon, 23 Jan 2023 22:01:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E92D31121330;
	Mon, 23 Jan 2023 22:01:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9C8531946597;
	Mon, 23 Jan 2023 22:01:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 Jan 2023 23:01:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: mumble from old machine to new
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.706.1674502389.8171.blinux-list@redhat.com>
 <mailman.713.1674503420.8177.blinux-list@redhat.com>
 <mailman.698.1674507581.8169.blinux-list@redhat.com>
 <mailman.635.1674510064.8173.blinux-list@redhat.com>
 <mailman.726.1674510697.8171.blinux-list@redhat.com>
 <mailman.682.1674511041.8175.blinux-list@redhat.com>
In-Reply-To: <mailman.682.1674511041.8175.blinux-list@redhat.com>
Message-ID: <mailman.636.1674511304.8173.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCBzb3JyeSBmb3IgdGhlIHR5cG9zLCBzbyB0aGUgY29tbWFuZHMgYmVnaW5uaW5nIHdpdGgg
bWtkaXIgYXJlIHRvIGJlIHR5cGVkCm9uIHR5cGVkIG5ldyBtYWNoaW5lLgoKTGUgMjMvMDEvMjAy
MyDDoCAyMjo1NywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKg
Ogo+IERpZCB5b3UgbWVhbgo+IEFmdGVyIHRoZSBmaXJzdCBjb21tYW5kPwo+IAo+PiBPbiBKYW4g
MjMsIDIwMjMsIGF0IDE1OjUxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4KPj4gU29ycnkgSSB0eXBlZCB0b28gZmFz
dC4gQXRoZSBmaXNydCBjb21hbmQgYW5kIGhhdmluZyBtb3VudGVkIHRoZSB0aHVtYiBvbiB0aGUK
Pj4gbmV3IG1hY2hpbmUsIHR5cGUKPj4KPj4gbWtkaXIgLXAgfi8ubG9jYWwvc2hhcmUvTXVtYmxl
L011bWJsZQo+PiBjcCAvbW50L211bWJsZS5zcWxpdGUgfi8ubG9jYWwvc2hhcmUvTXVtYmxlL011
bWJsZS8KPj4KPj4gSWYgeW91IGFscmVhZHkgc3RhcnRlZCBtdW1ibGUgb24gdGhlIG5ldyBtYWNo
aW5lLCB0aGUgbWtkaXIgY29tbWFuZAo+PiBpcyB1bm5lY2Vzc2FyeSAoYnV0IHdpbGwgbm90IGh1
cnQpIGFzIHRoZSBkaXJlY3Rvcnkgd2lsbCBhbHJlYWR5IGV4aXN0Lgo+PiBJbiB0aGlzIGNhc2Ug
dGhlIGZpbGUgZnJvbSB0aGUgb2xkIG1hY2hpbmUgd2lsbCBvdmVycmlkZSB0aGUgb25lIG9uIHRo
ZSBuZXcgbWFjaGluZS4KPj4KPj4gQ2hlZXJzLAo+PiBEaWRpZXIKPj4gLS0gCj4+IERpZGllciBT
cGFpZXIKPj4gU2xpbnQgbWFpbnRhaW5lcgo+Pgo+PiBMZSAyMy8wMS8yMDIzIMOgIDIyOjQwLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+IFlvdSBkbyBu
b3QgbmVlZCBuYXV0aWx1cyBmb3IgdGhhdC4KPj4+Cj4+PiBKdXN0IG1vdW50IHRoZSB0aHVtYiBk
cml2ZSwgZm9yIGluc3RhbmNlIGFzIC9tbnQsIHRoZW4gdHlwZQo+Pj4KPj4+IGNwIH4vLmxvY2Fs
L3NoYXJlL011bWJsZS9NdW1ibGUvbXVtYmxlLnNxbGl0ZSAgL21udAo+Pj4KPj4+IHRoZW4gdW1v
dW50IHRoZSBkcml2ZSwgbW91bnQgaXQgb24gdGhlIG5ldyBtY2hpbmUgYWxzbyBhcyAvbW50IGFu
ZCB0eXBlOgo+Pj4KPj4+IGNwIC9tbnQvLmxvY2FsL3NoYXJlL011bWJsZS9NdW1ibGUvbXVtYmxl
LnNxbGl0ZSB+Lwo+Pj4KPj4+IFR5cGUgdGhlIGNwIGNvbW1hbmRzIGFyZSByZWd1bGFyIHVzZXIu
Cj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4gRGlkaWVyCj4+PiAtLQo+Pj4gRGlkaWVyIFNwYWllcgo+Pj4g
U2xpbnQgbWFpbnRhaW5lcgo+Pj4KPj4+IFBTIGl0IHdvdWxkIGhhdmUgYmVlbiB3YXkgZWFzaWVy
IHRvIHVzZSBtYWdpYy13b3JtaG9sZSwgdW5mb3J0dW5hdGVseSBhdCBsZWFzdAo+Pj4gdW50aWwg
eWVzdGVyZGF5IG1hZ2ljLXdvcm1ob2xlIHdhcyBub3QgKHlldCkgYXZhaWxhYmxlIGZvciBGZWRv
cmEgMzcuIFdoYXQgYSBzaGFtZSEKPj4+Cj4+PiBMZSAyMy8wMS8yMDIzIMOgIDIxOjU5LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+PiBJIGNhbiBnbyB0
aGVyZSBpbiB0ZXJtaW5hbC4KPj4+PiBIb3cgbWF5IEkgbWFrZSB0aGF0IHZpc2libGUgc28gSSBj
YW4gdXNlIG5hdXRpbHVzIHRvIGNvcHkgdG8gdGh1bWIgZHJpdmU/Cj4+Pj4KPj4+Pj4gT24gSmFu
IDIzLCAyMDIzLCBhdCAxMzo1MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8
YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IENvcHkgZnJvbSB0aGUg
b2xkIHRvIHRoZSBuZXcgbWFjaGluZSB0aGUgZmlsZToKPj4+Pj4gfi8ubG9jYWwvc2hhcmUvTXVt
YmxlL011bWJsZS9tdW1ibGUuc3FsaXRlCj4+Pj4+Cj4+Pj4+IENoZWVycywKPj4+Pj4gRGlkaWVy
Cj4+Pj4+IC0tCj4+Pj4+IERpZGllciBTcGFpZXIKPj4+Pj4gU2xhaW4gbWFpbnRhaW5lcgo+Pj4+
Pgo+Pj4+PiBMZSAyMy8wMS8yMDIzIMOgIDIwOjMyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+Pj4+IEkgaGF2ZSB0d28gbWFjaGluZXMgd2l0aCBmZWRv
cmEgMzcuCj4+Pj4+PiBNdW1ibGUgaXMgb24gdGhlIG9sZCBtYWNoaW5lLCBzZXQgdXAgYXMgSSBs
aWtlIGl0Lgo+Pj4+Pj4gSSBoYXZlIGp1c3QgaW5zdGFsbGVkIG11bWJsZSBvbiB0aGUgbmV3IG1h
Y2hpbmUsLCBidXQgaGF2ZSBub3QgeWV0IHB1dCBpbiBhbnl0aGluZy4KPj4+Pj4+IElzIHRoZXJl
IGEgd2F5IHRvIG1vdmUgbXVtYmxlIHNldHRpbmdzIGFuZCBhbGwgZnJvbSB0aGUgb2xkIG1hY2hp
bmUgdG8gdGhlIG5ldyBtYWNoaW5lIHNvIEkgd2lsbCBub3QgbmVlZCB0byBjb25maWd1cmUgZnJv
bSBzY3JhdGNoPwo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

