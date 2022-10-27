Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E896F60F49F
	for <lists+blinux-list@lfdr.de>; Thu, 27 Oct 2022 12:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666865579;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ytmjEpabWlIKzJ8HVavfCIBejyie2R1k/yzv1ImCokc=;
	b=N+DJ5NrlxgYasaRJG07J1qyyiUC9WdIwk8nMo6d/MWqc90jmudaqw2iK05KOEhYIJj+UMX
	PFs7Eytqf4RE7tumwkaifvkFJcpx1BeqAd0YLAboKiHrF59KksLoyUeyjc0qoEJQkq/j6z
	C1kOW/CZionOtrxdZB5f5HmbGMyh++c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-190-Sq1lWW1TO1qIksxF2uznwA-1; Thu, 27 Oct 2022 06:12:56 -0400
X-MC-Unique: Sq1lWW1TO1qIksxF2uznwA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED8FE185A7A3;
	Thu, 27 Oct 2022 10:12:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0A4C0492B09;
	Thu, 27 Oct 2022 10:12:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7B44F1946A7F;
	Thu, 27 Oct 2022 10:12:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Oct 2022 12:12:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: void-linux
To: blinux-list@redhat.com
References: <mailman.3229.1666863125.3003.blinux-list@redhat.com>
 <mailman.3171.1666863524.3004.blinux-list@redhat.com>
 <mailman.3232.1666864286.3003.blinux-list@redhat.com>
 <mailman.3046.1666864669.3009.blinux-list@redhat.com>
In-Reply-To: <mailman.3046.1666864669.3009.blinux-list@redhat.com>
Message-ID: <mailman.3174.1666865573.3004.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2hyaXMgQnJhbm5vbiBpcyBhIGJsaW5kIFZvaWQgdXNlciwgc28geW91IGNvdWxkIGFzayBoaW0u
CgpIZXJlIGlzIGhpcyBob21lIHBhZ2U6Cmh0dHBzOi8vdGhlLWJyYW5ub25zLmNvbS8KCklmIHlv
dSB1c2UgSVJDIHlvdSBjYW4gdXN1YWxseSByZWFjaCBoaW0gaW4gdGhlICNzbGludCBjaGFubmVs
LCBzZXJ2ZXIKaXJjLmxpYmVyYS5jaGF0CgpDaGVlcnMsCkRpZGllcgoKTGUgMjcvMTAvMjAyMiDD
oCAwOTo1NywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+
IEknbSBub3QgZmluZGluZyBhbiBlYXN5IHdheSB0byBjaGVjayB0aGUgVm9pZCByZXBvZXMgZm9y
IE9yY2Egb3IgdGhlIEFUSyBzdGFjawo+IHBlcnNvbmFsbHksIHRoZWlyIHNpdGUgaXMgbmljZWx5
IGxhaWQgb3V0LCBidXQuLi5qdXN0IG5lZWRzIGEgd2F5IHRvIHNlYXJjaAo+IHBhY2thZ2VzLiBP
a2F5LCBva2F5LCBBcmNoIGhhcyBzcG9pbGVkIG1lIHdpdGggdGhhdC4KPiAKPiBJIGxpa2UgdGhl
IGxvb2sgb2YgVm9pZCwgYnV0Li4ubm90IGdvdCBhcm91bmQgdG8gdHJ5aW5nIGl0IHlldCBhbmQg
eW91ciBtZXNzYWdlcwo+IG1ha2UgbWUgdGhpbmsgb2theSwgYnV0Li4uLmlzIGl0IHdvcnRoIGdp
dmluZyBhIHNob3Q/Cj4gCj4gT24gMTAvMjcvMjIgMTA6NTEsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEEgZmV3IG1lc3NhZ2VzIG9uIHJlZGRpdCBmcm9tIGEg
ZmV3IHllYXJzIGFnbyBjbGFpbWVkIHZvaWQtbGludXggY291bGQgcnVuCj4+IHRoZSBhY2Nlc3Np
YmlsaXR5IHN0YWNrIGFuZCB0aGlzIHdhcyBmcm9tIHNvbWVvbmUgd2hvIHdhcyBhbGxlZGdlZGx5
Cj4+IHRvdGFsbHkgYmxpbmQuwqAgSSBmb3VuZCBubyBwcm9jZWR1cmUgdG8gZG8gYSB0YWxraW5n
IGluc3RhbGwgbm9yIGFueSBjbGFpbQo+PiB0aGF0IHRoaXMgdG90YWxseSBibGluZCBwZXJzb24g
aGFkIGRvbmUgYSB0YWxraW5nIGluc3RhbGwuCj4+Cj4+Cj4+IEp1ZGUgPGpkYXNoaWVsIGF0IHBh
bml4IGRvdCBjb20+Cj4+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluIGRlZmVu
c2Ugb2YgbGliZXJ0eToKPj4gwqAgc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNl
IHVzZSBpbiB0aGF0IG9yZGVyLiIKPj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4+
Cj4+IC4KPj4KPj4gT24gVGh1LCAyNyBPY3QgMjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPj4KPj4+IEN0cmwrYWx0K1ouLi4KPj4+Cj4+Pgo+Pj4gSXNuJ3Qg
dGhhdCBzaG9ydGN1dCBmb3IgQ2hyb21lVm94IGhvd2V2ZXI/Cj4+Pgo+Pj4gSSdtIG5vdCBzdXJl
IHdoYXQgVm9pZCBjb21lcyB3aXRoIGFzIGZhciBhcyBBMTFZIHN0dWYsIG9yIGlmIHlvdSBjYW4g
aW5zdGFsbAo+Pj4gdGhpbmdzIGxpa2UgT3JjYSwgRXNwZWFrLCBldCBhbCBob3dldmVyLiBJJ3Zl
IG5vdCBnb3QgYXJvdW5kIHRvIHRyeWluZyBpdCBpbiBhCj4+PiBWTSB5ZXQuIExvb2tpbmcgYXQg
aXQgSSdtIG5vdCBzdXJlIGlmIGl0IGNvbWVzIHdpdGggT3JjYSBvciBob3cgZWFzeSBpdCdkIGJl
Cj4+PiB0byB1cGRhdGUgT3JjYSBhdCBhbGwgdnMgc29tZXRoaW5nIGxpa2UgQXJjaCBvciBhbm90
aGVyIExpbnV4IGRpc3Rybwo+Pj4KPj4+IE9uIDEwLzI3LzIyIDEwOjMxLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+IENhbiBpdCB0YWxrIHdoaWxlIGluc3Rh
bGxpbmc/wqAgSWYgc28sIHRoaXMgaXMgbm90IGRvY3VtZW50ZWQgYW55d2hlcmUgb24KPj4+PiB0
aGUgd2ViIEkgaGF2ZSBmb3VuZC4KPj4+PiBVbmZvcnR1bmF0ZWx5IGNvbnRyb2wtYWx0LXogZG9l
cyBub3QgZ2V0IHRoZSBjdXJyZW50IHZlcnNpb24gb2YKPj4+PiBnb29nbGUtY2hyb21lLXN0YWJs
ZSB0YWxraW5nIG9uIGxpbnV4IGFuZCBuZWl0aGVyIGRvZXMgYW55dGhpbmcgZWxzZSBJCj4+Pj4g
Zm91bmQgZG9jdW1lbnRlZCBpbiB0aGUgb3JjYS1saXN0LsKgIFNvIGZvciBnb29nbGUtY2hyb21l
IHRoZXJlIGlzIGVpdGhlciBhCj4+Pj4gbmV3IHdheSB0byBnZXQgaXQgdGFsa2luZyBpbiBsaW51
eCBvciBubyB3YXkgdG8gZ2V0IGl0IHRvIHRhbGsgaW4gbGludXguCj4+Pj4KPj4+Pgo+Pj4+Cj4+
Pj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVz
IHRvIGJlIHVzZWQgaW4KPj4+PiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4+Pj4gwqDCoCBzb2FwLCBi
YWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+Pj4+IC1F
ZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+Pj4+Cj4+Pj4gLgo+Pj4+Cj4+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4K
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

