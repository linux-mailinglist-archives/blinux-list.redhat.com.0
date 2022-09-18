Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DC64A5BBE7F
	for <lists+blinux-list@lfdr.de>; Sun, 18 Sep 2022 16:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663511941;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZW7CmnLDIXl6oeaSrkLxB0prAYFETB8gk+3QRVjcmmU=;
	b=XBkg989M2jgYqjSnDvS1tkGov9Pg6jo3/ZU4OvjLVo/KyRtdqaVQdeBMRRpz71DkMDz+pJ
	dAD/RqnQFWwTH4wdQ5h2oEYFmErdBneND/RpftH186YGCDOgpHbqOnMjreH2CAMxYiW9+S
	ggVQcrYE5AqZqprRx7srmpXImaw34fc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-141-mya5crQGPnSV_yyZEwZ9fw-1; Sun, 18 Sep 2022 10:38:58 -0400
X-MC-Unique: mya5crQGPnSV_yyZEwZ9fw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9A846185A79C;
	Sun, 18 Sep 2022 14:38:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5980440C2064;
	Sun, 18 Sep 2022 14:38:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 78EF619465A0;
	Sun, 18 Sep 2022 14:38:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 18 Sep 2022 15:38:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: KDE Plasma 5.26 beta questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1122.1663510798.6076.blinux-list@redhat.com>
 <mailman.1124.1663511562.6082.blinux-list@redhat.com>
In-Reply-To: <mailman.1124.1663511562.6082.blinux-list@redhat.com>
Message-ID: <mailman.1123.1663511932.6076.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U3VyZSwgSSBnb3QgZG9ja2VyIHNldCB1cCBzbyBob3cgd291bGQgSSBnbyBhYm91dCB0aGlzPwoK
SSB0cmllZCB2aWEgcXVpY2tlbXUgd2l0aCBubyBsdWNrLCBPcmNhIGRpZG4ndCBzZWVtIHRvIGNv
bWUgdXAgaW4gdGhlIAppc28gdGhhdCBxdWlja2VtdSBwdWxsZWQgZG93biBmb3IgS0RFIE5lb24g
dW5zdGFibGUuIFNvIHllcywgSSdsbCB0YWtlIAp0aGF0IGhvdyB0byBndWlkZSB5ZXMgcGxlYXNl
CgoKCk9uIDkvMTgvMjIgMTU6MzAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4gSG93ZHksCj4KPiBUbyBnZXQgaXQgaW4gb2ZmaWNpYWwgQXJjaExpbnV4IFJlcG9z
aXRvcnkgeW91IG1pZ2h0IG5lZWQgdG8gd2FpdCB0aWwgS0RFIFBsYXNtYSA1LjI2IGlzIHJlbGVh
c2VkLgo+Cj4gQnV0IGkganVzdCBzZWFyY2hlZCBhIGVhc3kgd2F5IGZvciB0ZXN0aW5nIEtERSBO
ZW9uIERldmVsb3BtZW50IG5pZ2h0bHkgdXNpbmcgZG9ja2VyLiAgQXMgdXNlcnMgc2hvdWxkIGJl
IGFibGUgdG8gZ2V0IGludm9sdmVkIGluIGFjY2Vzc2liaWxpdHkgZGV2ZWxvcG1lbnQgYW5kIHRl
c3RpbmcgcHJvY2Vzcy4KPgo+IEkgbSBjdXJyZW50bHkgbm90IG9uIG15IG1hY2hpbmUgYnV0IGkg
YWxyZWFkeSBoYXZlIGEgd29ya2luZyBob3d0byB0byBzaGFyZSB3aXRoIHlvdS4KPgo+IEJ5IHRo
ZSB3YXksIEtERSBqdXN0IHZvdGVzIGl0cyBnb2Fscy4gS0RFIHZvdGVzIDMgZ29hbHMuIE9ubHkg
NiBnb2FscyBhdmFpbGFibGUgZm9yIHZvdGluZy4gQWNjZXNzaWJpbGl0eSBpcyBvbmUgb2YgdGhl
bS4gU28gdGhlIGNoYW5jZSBpcyB2ZXJ5IGhlaWdoIHRoYXQgUGxhc21hIDUuMjYgd2FzIGp1c3Qg
dGhlIGZpcnN0IHNob3Qgb2YgYSBsb25nIHNlcmllcyBvZiBhY2Nlc3NpYmlsaXR5IGltcHJvdmVt
ZW50cy4gQnkgdGhlIHdheSBtb3N0IG9mIHJlY2VudCAgd29yayBpcyBkb25lIGJ5IGNhcmwgc3dh
biBhbmQgZnVzaW9uZnV0dXJlLiBTbyB0aGUgY2hlcnJ5IGdvZXMgdGhlcmUuCj4KPiBJIG0gY3Vy
cmVudGx5IG1vc3RseSBidXN5IGluIGdldHRpbmcgb3JjYSByZWJhc2VkIG9uIGFuIHBsdWdpbiBh
cmNoaXRlY3R1cmUuCj4KPiBJbnRlcmVzdGluZyB0aW1lcyBhaGVhZCBpbiB0ZXJtcyBvZiBhY2Nl
c3NpYmlsaXR5Lgo+Cj4gQ2hlZXJzIGNocnlzCj4KPj4gQW0gMTguMDkuMjAyMiB1bSAxNjoyMCBz
Y2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+Ogo+Pgo+PiDvu79TbyBxdWljayBxdWVzdGlvbiwgc2luY2UgS0RFIC5QbGFzbWEg
NS4yNiBiZXRhIGlzIGEgdGhpbmcsIHdpdGggYXBwYXJlbnRseSBBMTFZIGltcHJvdmVtZW50cywg
Z29pbmcgYnkgbnVtZXJvdXMgWVQgdmlkcywgS0RFLm9yZyBhbmQgdGhlaXIgKGFkbWl0dGVkbHkg
bWFzc2l2ZSkgY2hhbmdlbG9nLi4uCj4+Cj4+IElzIGl0IHdvcnRoIHRlc3RpbmcgaXQgb3V0PyBM
b29raW5nIGF0IG15IHJlcG9zIG9uIEFyY2ggSSdtIHNlZWluZyA1LjI1LjktMSBoZXJlLCBhbmQg
bm90IHNlZWluZyBhbnkgb2YgdGhlIHVwZGF0ZXMgbGlzdGVkIGluIHRoZSBjaGFuZ2Vsb2csIGku
ZS4gdGhlIGRpYWxvZ3MgYXJlIHN0aWxsIGluYWNjZXNzaWJsZSwgdGhlIGNsb2NrIGRvZXNuJ3Qg
cGxheSBuaWNlIHdpdGggT3JjYSwgZXQgYWwuCj4+Cj4+IFNvIGRvIEkgbmVlZCB0byB3YWl0IG9u
IHRoZSBmdWxsIHJlbGVhc2Ugb2YgNS4yNiB0byBnZXQgYWxsIHRoZSBuZXcgZmVhdHVyZXMgdGhl
biwgc2luY2UgdGhlIHdheSBJIHJlYWQgS0RFJ3MgYmV0YS9yZWxlYXNlIHNjZWR1bGUgaXMgdGhl
IGJldGEgaXMgZmVhdHVyZSBjb21wbGV0ZSBpZiBJIHVuZGVyc3RhbmQgaXQgcmlnaHQgb3IgYW0g
SSBub3QgdW5kZXJzdGFuZGluZyBob3cgS0RFIGRvZXMgdGhlaXIgYmV0YXMKPj4KPj4KPj4gSSBr
bm93IENyeXMgaGFzIGJlZW4gZG9pbmcgYSBsb3Qgb2Ygd29yayB3aXRoIEtERSBzbyBJJ20gaG9w
aW5nIGZvciB5b3VyIGlucHV0IG9uIHRoaXMsIHNpbmNlIEkndmUgYmVlZW4gdG9sZCBieSBvdGhl
ciBmb2xrcyBvZmYgbGlzdCB0aGV5J3ZlIGhhZCBtdWNoIG11Y2ggYmV0dGVyIGV4cGVyaWVuY2Vz
IHdpdGggaXQgYW5kIGdldHRpbmcgdGhpbmdzIHRvIHdvcmsgdGhhdCBJIGNhbid0LCBmb3IgZXhh
bXBsZQo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

