Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 283A6539339
	for <lists+blinux-list@lfdr.de>; Tue, 31 May 2022 16:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654007961;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kkv/QwBABDqkG1cxagxUxQLPpR/0KQGEDz/FncAlEzQ=;
	b=MVbnoED0PZqbDHdNoHOEvYnARdv7OiPP/kUKp7b+xEvOCD61UWfvePLbxhlHV33KBmWc/K
	+Sj4MjU/nQ6fL1fguOxt9Lf31ZlkZkht/waWPuKOMk4N2YAiJPiJvcQ7Qiosz2BKIKdjrY
	xMyoCIP1GmETv1B+iUE39sspShQKtpU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-509-vP1w_auhOpiUsbNWT0HOTA-1; Tue, 31 May 2022 10:39:17 -0400
X-MC-Unique: vP1w_auhOpiUsbNWT0HOTA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5FC63831C45;
	Tue, 31 May 2022 14:39:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BB7334047828;
	Tue, 31 May 2022 14:39:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5C1A4194706A;
	Tue, 31 May 2022 14:39:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 31 May 2022 16:38:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: Accessible ftp
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.19063.1653928602.111210.blinux-list@redhat.com>
 <mailman.19544.1653929382.111206.blinux-list@redhat.com>
 <mailman.19314.1653930655.111203.blinux-list@redhat.com>
 <mailman.19553.1653931473.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.19553.1653931473.111206.blinux-list@redhat.com>
Message-ID: <mailman.19895.1654007949.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRGlkaWVyIGFuZCBhbGwsCgpZb3UgYXJlIGNvcnJlY3QsIGxmdHAgaXMgdmVyeSBnb29kLgoK
SXQsIGhvd2V2ZXIgaXMgYSBwYWluIHRvIGZpZ3VyZSBvdXQgaG93IHRvIHVzZSwgYnV0IG9uY2Ug
eW91IGdvdCB0aGUgCmhhbmcgb2YgaXQsIGl0IHdvcmtzIHZlcnkgd2VsbC4KClRoYW5rcyBmb3Ig
dGhhdCBvbmUuCgpXYXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IHVzaW5nIFRo
dW5kZXJiaXJkIGZyb20gdGhlIFNsaW50IGxhcHRvcAoKT24gMjAyMi8wNS8zMCAxOToyNCwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSBCcmFuZHQsCj4KPiBs
ZnRwLCBzZnRwIChDTEkpIGdmdHAgKEdVSSBieSBkZWZhdWx0IGJ1dCB0aGUgaXMgYWxzbyBnZnRw
LXR4dCB0aGF0IEkgbmV2ZXIKPiB1c2VkKSBjYW4gZG8gZnRwIG92ZXIgc3NoIGFuZCBhcmUgaW5z
dGFrbGxlZCBidSBkZWZhdWx0IGluIFNsaW50Lgo+Cj4gbGZ0cCBhbmQgc2Z0cCBoYXZlIGdvb2Qg
bWFuIHBhZ2VzCj4KPiBsZnRwIGlzIGFtYXppbmc6IHRvIG1pcnJvciBhIHdlYnNpdGUganVzdCB0
eXBlOgo+IGxmdHAgLWMgIm1pcnJvciA8dXJsPiIKPgo+IENoZWVycywKPgo+IERpZGllcgo+Cj4K
PiBMZSAzMC8wNS8yMDIyIMOgIDE5OjEwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIGEgw6ljcml0wqA6Cj4+IE9rLCBzb3JyeSwgSSB3YXMgcHJvYmFibHkgbm90IGFzIGNsZWFy
IGFzIEkgc2hvdWxkIGhhdmUgYmVlbi4gT25lIG9mIHRoZSBzaXRlcyBJCj4+IGhhdmUgdG8gY29u
bmVjdCB0byBhc2tzIGZvciBmdHAgb3ZlciB0bHMsIGFuZCBub25lIG9mIHRoZSA0IHNpdGVzIGhh
cyBzdGFuZGFyZAo+PiBwb3J0IDIxIGFzIHRoZSBjb25uZWN0aW9uIGRlZmF1bHQuCj4+Cj4+IEkg
a25vdyBJIGNvdWxkIHByb2JhYmx5IHVzZSBmaWxlemlsbGEgb24gdGhlIEdVSSwgYnV0IEknZCBw
cmVmZXIgdGhlIENMSS4KPj4KPj4gV2FybSByZWdhcmRzLAo+Pgo+PiBCcmFuZHQgU3RlZW5rYW1w
Cj4+Cj4+IFNlbnQgdXNpbmcgVGh1bmRlcmJpcmQgZnJvbSB0aGUgU2xpbnQgbGFwdG9wCj4+Cj4+
IE9uIDIwMjIvMDUvMzAgMTg6NDksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+PiBUaW0gaGVyZS7CoCBJJ3ZlIGFsd2F5cyBqdXN0IHVzZWQgdGhlIGNvbW1hbmQt
bGluZSBjbGllbnQgKHNpbmNlIHRoZQo+Pj4gbGF0ZSA4MHMgb3IgZWFybHkgOTBzIG92ZXIgZGlh
bC11cD8pIHdoaWNoIGlzIGFjY2Vzc2libGUgYXMgYW55IG90aGVyCj4+PiBDTEkgYXBwbGljYXRp
b246Cj4+Pgo+Pj4gIMKgwqAgJCBmdHAgZnRwLmV4YW1wbGUuY29tCj4+PiAgwqDCoCBmdHA+IGxz
Cj4+PiAgwqDCoCBbZmlsZXMgJiBkaXJlY3Rvcmllc10KPj4+ICDCoMKgIGZ0cD4gY2QgL3B1Ygo+
Pj4gIMKgwqAgZnRwPiBscwo+Pj4gIMKgwqAgW2ZpbGVzICYgZGlyZWN0b3JpZXMgaW4gL3B1Yl0K
Pj4+ICDCoMKgIGZ0cD4gYmluCj4+PiAgwqDCoCAyMDAgVHlwZSBzZXQgdG8gSS4KPj4+ICDCoMKg
IGZ0cD4gZ2V0IHNvbWVfZmlsZS56aXAKPj4+ICDCoMKgIFtmaWxlIGRvd25sb2Fkc10KPj4+ICDC
oMKgIGZ0cD4gcHV0IGxvY2FsX2ZpbGUubXAzCj4+PiAgwqDCoCBbdXBsb2FkcyAibG9jYWxfZmls
ZS5tcDMiIHRvIHRoZSBzZXJ2ZXJdCj4+Pgo+Pj4gSWYgeW91J3JlIG9ubHkgdHJhbnNmZXJyaW5n
IHRleHQgZG9jdW1lbnRzLCB5b3UgY2FuIHNraXAgdGhlICJiaW4iYXJ5Cj4+PiBjb21tYW5kLCBs
ZXR0aW5nIGl0IGpvY2tleSBsaW5lLWVuZGluZ3MgZm9yIHlvdS7CoCBCdXQgbW9zdCBvZiB0aGUK
Pj4+IHRpbWUgeW91IHdhbnQgdG8gdXNlICJiaW4iYXJ5IG1vZGUgdG8gZW5zdXJlIHRoZSBmaWxl
IGRvZXNuJ3QgaGF2ZQo+Pj4gbmV3bGluZS10cmFuc2xhdGlvbiBkdXJpbmcgdHJhbnNmZXIuCj4+
Pgo+Pj4gLVRpbQo+Pj4KPj4+Cj4+PiBPbiBNYXkgMzAsIDIwMjIsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gSSBuZWVkIGEgd2F5IHRvIGNvbm5lY3QgdG8g
c29tZSBmdHAgc2lydmVycywgd2hhdCB3b3VsZCB5b3UKPj4+PiByZWNvbW1lbmQsIHdlYXRoZXIg
aXQgYmUgQ0xJIG9yIEdVSSByZWFsbHkgZG9lc24ndCBtYXR0ZXIgdG8gbWUuCj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo=

