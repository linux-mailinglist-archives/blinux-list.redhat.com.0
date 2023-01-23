Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3CD6789FA
	for <lists+blinux-list@lfdr.de>; Mon, 23 Jan 2023 22:51:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674510705;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LO7Xh6rdV0o20QxfLE1zf+u5pqmimzHOGw3zeGnbcbg=;
	b=NlFzYiMHIHM/OeOV1fhoraFqaByx87Y07toW7SxTZ/jDtSLiXGvTjj5fkIN6XzhaI3wNIE
	H3/SavqCReXErO8rE3AsfbHNaE9LILxpxWXZBFkcZdyyTz3UbJgHsD+LLndp1MnIqg1L8O
	8UwARM8y+v6XmRA7ZpRuXlBDFsE5+Y4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-481-NLIybYoVPsmXWSyS3XglIg-1; Mon, 23 Jan 2023 16:51:41 -0500
X-MC-Unique: NLIybYoVPsmXWSyS3XglIg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BFD32805581;
	Mon, 23 Jan 2023 21:51:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 837F3492C3E;
	Mon, 23 Jan 2023 21:51:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DB89E1946597;
	Mon, 23 Jan 2023 21:51:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 Jan 2023 22:51:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: mumble from old machine to new
To: blinux-list@redhat.com
References: <mailman.706.1674502389.8171.blinux-list@redhat.com>
 <mailman.713.1674503420.8177.blinux-list@redhat.com>
 <mailman.698.1674507581.8169.blinux-list@redhat.com>
 <mailman.635.1674510064.8173.blinux-list@redhat.com>
In-Reply-To: <mailman.635.1674510064.8173.blinux-list@redhat.com>
Message-ID: <mailman.726.1674510697.8171.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29ycnkgSSB0eXBlZCB0b28gZmFzdC4gQXRoZSBmaXNydCBjb21hbmQgYW5kIGhhdmluZyBtb3Vu
dGVkIHRoZSB0aHVtYiBvbiB0aGUKbmV3IG1hY2hpbmUsIHR5cGUKCm1rZGlyIC1wIH4vLmxvY2Fs
L3NoYXJlL011bWJsZS9NdW1ibGUKY3AgL21udC9tdW1ibGUuc3FsaXRlIH4vLmxvY2FsL3NoYXJl
L011bWJsZS9NdW1ibGUvCgpJZiB5b3UgYWxyZWFkeSBzdGFydGVkIG11bWJsZSBvbiB0aGUgbmV3
IG1hY2hpbmUsIHRoZSBta2RpciBjb21tYW5kCmlzIHVubmVjZXNzYXJ5IChidXQgd2lsbCBub3Qg
aHVydCkgYXMgdGhlIGRpcmVjdG9yeSB3aWxsIGFscmVhZHkgZXhpc3QuCkluIHRoaXMgY2FzZSB0
aGUgZmlsZSBmcm9tIHRoZSBvbGQgbWFjaGluZSB3aWxsIG92ZXJyaWRlIHRoZSBvbmUgb24gdGhl
IG5ldyBtYWNoaW5lLgoKQ2hlZXJzLApEaWRpZXIKLS0gCkRpZGllciBTcGFpZXIKU2xpbnQgbWFp
bnRhaW5lcgoKTGUgMjMvMDEvMjAyMyDDoCAyMjo0MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFlvdSBkbyBub3QgbmVlZCBuYXV0aWx1cyBmb3IgdGhh
dC4KPiAKPiBKdXN0IG1vdW50IHRoZSB0aHVtYiBkcml2ZSwgZm9yIGluc3RhbmNlIGFzIC9tbnQs
IHRoZW4gdHlwZQo+IAo+IGNwIH4vLmxvY2FsL3NoYXJlL011bWJsZS9NdW1ibGUvbXVtYmxlLnNx
bGl0ZSAgL21udAo+IAo+IHRoZW4gdW1vdW50IHRoZSBkcml2ZSwgbW91bnQgaXQgb24gdGhlIG5l
dyBtY2hpbmUgYWxzbyBhcyAvbW50IGFuZCB0eXBlOgo+IAo+IGNwIC9tbnQvLmxvY2FsL3NoYXJl
L011bWJsZS9NdW1ibGUvbXVtYmxlLnNxbGl0ZSB+Lwo+IAo+IFR5cGUgdGhlIGNwIGNvbW1hbmRz
IGFyZSByZWd1bGFyIHVzZXIuCj4gCj4gQ2hlZXJzLAo+IERpZGllcgo+IC0tCj4gRGlkaWVyIFNw
YWllcgo+IFNsaW50IG1haW50YWluZXIKPiAKPiBQUyBpdCB3b3VsZCBoYXZlIGJlZW4gd2F5IGVh
c2llciB0byB1c2UgbWFnaWMtd29ybWhvbGUsIHVuZm9ydHVuYXRlbHkgYXQgbGVhc3QKPiB1bnRp
bCB5ZXN0ZXJkYXkgbWFnaWMtd29ybWhvbGUgd2FzIG5vdCAoeWV0KSBhdmFpbGFibGUgZm9yIEZl
ZG9yYSAzNy4gV2hhdCBhIHNoYW1lIQo+IAo+IExlIDIzLzAxLzIwMjMgw6AgMjE6NTksIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSSBjYW4gZ28gdGhl
cmUgaW4gdGVybWluYWwuCj4+IEhvdyBtYXkgSSBtYWtlIHRoYXQgdmlzaWJsZSBzbyBJIGNhbiB1
c2UgbmF1dGlsdXMgdG8gY29weSB0byB0aHVtYiBkcml2ZT8KPj4KPj4+IE9uIEphbiAyMywgMjAy
MywgYXQgMTM6NTAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4KPj4+IENvcHkgZnJvbSB0aGUgb2xkIHRvIHRoZSBu
ZXcgbWFjaGluZSB0aGUgZmlsZToKPj4+IH4vLmxvY2FsL3NoYXJlL011bWJsZS9NdW1ibGUvbXVt
YmxlLnNxbGl0ZQo+Pj4KPj4+IENoZWVycywKPj4+IERpZGllcgo+Pj4gLS0KPj4+IERpZGllciBT
cGFpZXIKPj4+IFNsYWluIG1haW50YWluZXIKPj4+Cj4+PiBMZSAyMy8wMS8yMDIzIMOgIDIwOjMy
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+PiBJIGhh
dmUgdHdvIG1hY2hpbmVzIHdpdGggZmVkb3JhIDM3Lgo+Pj4+IE11bWJsZSBpcyBvbiB0aGUgb2xk
IG1hY2hpbmUsIHNldCB1cCBhcyBJIGxpa2UgaXQuCj4+Pj4gSSBoYXZlIGp1c3QgaW5zdGFsbGVk
IG11bWJsZSBvbiB0aGUgbmV3IG1hY2hpbmUsLCBidXQgaGF2ZSBub3QgeWV0IHB1dCBpbiBhbnl0
aGluZy4KPj4+PiBJcyB0aGVyZSBhIHdheSB0byBtb3ZlIG11bWJsZSBzZXR0aW5ncyBhbmQgYWxs
IGZyb20gdGhlIG9sZCBtYWNoaW5lIHRvIHRoZSBuZXcgbWFjaGluZSBzbyBJIHdpbGwgbm90IG5l
ZWQgdG8gY29uZmlndXJlIGZyb20gc2NyYXRjaD8KPiAKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cg==

