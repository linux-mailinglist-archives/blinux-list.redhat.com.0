Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 022A26BFBD9
	for <lists+blinux-list@lfdr.de>; Sat, 18 Mar 2023 18:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679160491;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QEGGXOJsQagvB3ZkUzcFRFfy03UAOOyDLvw3BiKoksI=;
	b=ArcOpI8iHBDrjKsri60uuLE4jG+/W71n0BkcD+UscSchkrAGd09GL/2UUOmPgY3HBfmh8A
	s9luPU32QkQw3iJLwsal7qs/yylUMJjkwieewXCzqpN21jvdCFDc2OxMdqXcDtlBUbquuz
	wm1pomtRY1EEMWZqngKRTN3cjWA4mAc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-388-ydR65A4CPL-yRCKwh6-yzw-1; Sat, 18 Mar 2023 13:28:08 -0400
X-MC-Unique: ydR65A4CPL-yRCKwh6-yzw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9C43101A551;
	Sat, 18 Mar 2023 17:28:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6DFDF40C6E67;
	Sat, 18 Mar 2023 17:28:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E4EE31946A51;
	Sat, 18 Mar 2023 17:28:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 18 Mar 2023 17:27:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: sparkylinux info
To: blinux-list@redhat.com
References: <mailman.65.1679141396.636364.blinux-list@redhat.com>
 <mailman.74.1679159925.636366.blinux-list@redhat.com>
In-Reply-To: <mailman.74.1679159925.636366.blinux-list@redhat.com>
Message-ID: <mailman.73.1679160484.636359.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SXQncyBraW5kIG9mIHNhZCByZWFsbHkuIEkgdGhvdWdodCBJJ2QgdHJ5IHZhbmlsbGEgT1Mgb3V0
LCBhbmQgCnNwZWVjaC1kaXNwYXRjaGVyIHdhc24ndCBwYWNrYWdlZCBjb3JyZWN0bHkgaW4gdGhl
IGluc3RhbGxlci4gT2theSBubyAKcHJvYmxlbSwgSSdsbCBqdXN0IGluc3RhbGwgc3BlZWNoLWRp
c3BhdGNoZXItZXNwZWFrLW5nLiBUaGVuIEkgZm91bmQgb3V0IAp0aGUgaW5zdGFsbGVyIHdhcyBB
LCBHVEs0LCBhbmQgQiwgc2VlbWVkIHRvIHJlbmRlciBldmVyeXRoaW5nIHRvIE9yY2EgYXQgCm9u
Y2UsIHNvIGZpbmRpbmcgd2hhdCBzY3JlZW4geW91IHdlcmUgb24gYW5kIGdvaW5nIHRocm91Z2gg
dGhlbSB3YXMgbW9yZSAKdHJvdWJsZSB0aGFuIGl0IHdhcyB3b3J0aC4KCk9uIDE4LzAzLzIwMjMg
MTc6MTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSXQgc2hv
dWxkIGJlIG5vIHN1cnByaXNlIHRoYXQgaWYgeW91IGRvd25sb2FkIHNvbWUgTGludXggZGlzdHJp
YnV0aW9uIAo+IHdoaWNoIGhhcyBubyBhY2Nlc3NpYmlsaXR5IGNvbW11bml0eSwgaXQgaXNuJ3Qg
YWNjZXNzaWJsZS4KPgo+IFRoaXMgc29ydCBvZiBtZXNzYWdlIGtlZXBzIGNvbWluZyB1cCBvbiBt
YWlsaW5nIGxpc3RzIHdpdGggdmFyaW91cyAKPiBkaXN0cmlidXRpb25zLCB3aXRoIHNpbWlsYXIg
cmVzdWx0cy4KPgo+IElmIHlvdSB3YW50IGFjY2Vzc2liaWxpdHksIHlvdSBiYXNpY2FsbHkgaGF2
ZSB0byBrZWVwIHRvIHRoZSAKPiBkaXN0cmlidXRpb25zIGZvciB3aGljaCBzb21lb25lIGlzIGxv
b2tpbmcgYWZ0ZXIgdGhlIAo+IGFjY2Vzc2liaWxpdHktcmVsYXRlZCBwYWNrYWdlcywgYW5kIHBy
ZWZlcmFibHkgZm9yIHdoaWNoIHRoZXJlJ3MgYSAKPiBjb21tdW5pdHkgb2Ygc2NyZWVuIHJlYWRl
ciB1c2Vycy4KPgo+IEZvciAibWFpbnN0cmVhbSIgKGkuZS4sIG5vdCBzcGVjaWZpY2FsbHkgYWNj
ZXNzaWJpbGl0eS1vcmllbnRlZCkgCj4gZGlzdHJpYnV0aW9ucywgaXQgcHJvYmFibHkgbWVhbnMg
QXJjaCwgRGViaWFuLCBGZWRvcmEgYW5kIFVidW50dSBmb3IgCj4gdGhlIG1vc3QgcGFydCBhdCB0
aGlzIHBvaW50IC0gd2l0aCBhcG9sb2dpZXMgaW4gYWR2YW5jZSBmb3Igd2hhdGV2ZXIgCj4gSSd2
ZSBpbmFkdmVydGVudGx5IGxlZnQgb3V0Lgo+Cj4gT24gMTgvMy8yMyAwODowOSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gRG9uJ3QgZG93bmxvYWQgdGhpcyBp
bnN0YWxsZXIuwqAgSXRzIHBhY2thZ2UgbGlzdCBoYXMgbmVpdGhlciBlc3BlYWsgbm9yCj4+IG9y
Y2EgaW4gaXQgYW5kIHRoYXQgbWVhbnMgaWYgeW91IGRvIG1ha2UgdGhlIGRvd25sb2FkIG1pc3Rh
a2UgeW91J3JlIAo+PiBnb2luZwo+PiB0byBuZWVkIGEgc2lnaHRlZCBpbnN0YWxsIGFuZCBtYXli
ZSB3b24ndCBmaW5kIGVzcGVhayBvciBvcmNhIGluIHRoZWlyCj4+IHJlcG9zaXRvcmllcyBlaXRo
ZXIuCj4+Cj4+Cj4+IC0tIEp1ZGUgPGpkYXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBh
cmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluCj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPj4gwqAg
c29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIK
Pj4gLUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4+Cj4+IC4KPj4KPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cg==

