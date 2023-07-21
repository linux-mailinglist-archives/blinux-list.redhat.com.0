Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 259DF75BB61
	for <lists+blinux-list@lfdr.de>; Fri, 21 Jul 2023 02:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689897678;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=v8pkIKvrOoJp55JQ7fPzaQNjMmwDZxpf010xbEdzgXY=;
	b=R9SGU7rPEIvxjsPG5RB7M+b5SwBHKtU8161Iyb6FfkVA1aBtgl/TpyStBKHTBJ80HC/RdZ
	UMgtSfIlTmi+fgQWF4RBRksatAPQomI+6QiOPUd2kd05tQnyPxA8HyGX2NTJ12dCFrTTZw
	3ouNWspWzpYuUf4xtQol+IvpiVK1NaM=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-398-OV6K5fnxN7SMNU4QhLUdHg-1; Thu, 20 Jul 2023 20:01:15 -0400
X-MC-Unique: OV6K5fnxN7SMNU4QhLUdHg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6D1F3C0C49E;
	Fri, 21 Jul 2023 00:01:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F3A21492CAC;
	Fri, 21 Jul 2023 00:01:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7E5321946A69;
	Fri, 21 Jul 2023 00:01:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 20 Jul 2023 19:01:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Mint Installation?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1762.1689875729.687819.blinux-list@redhat.com>
 <mailman.1705.1689884060.687816.blinux-list@redhat.com>
In-Reply-To: <mailman.1705.1689884060.687816.blinux-list@redhat.com>
Message-ID: <mailman.1882.1689897665.687811.blinux-list@redhat.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

dGhlIG9ubHkgdGltZSB0aGF0IGhhcyBoYXBwZW5lZCB0byBtZSBpcyB3aGVuIGkgYW0gc2Nyb2xs
aW5nIHRocm91Z2ggbXkgCmJvb2ttYXJrcyBpbiBmaXJlZm94LgoKYW0gaSBqdXN0IGFzc3VtZWQg
dGhhdMKgIGl0IGlzIGJlY2F1c2UgaXQgaXMgYW4gb2xkIGNvbXB1dGVyIHdpdGggbGl0dGxlIApy
ZXNvdXJjZXMuCgpidXQgbm90IHJlYWxseSBzdXJlIGhvdyB0byBnZXQgdGhhdCB0byBzdG9wCgpv
biBteSBsYXB0b3AgdGhhdCBpIGluc3RhbGxlZCBtaW50IDIxLjIgaGF2ZSBub3QgaGFkIHRoYXQg
aXNzdWUgeWV0LgoKcm9kbmV5CgoKT24gNy8yMC8yMDIzIDE1OjE0LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpLAo+IE9jY2FzaW9uYWxseSwgSeKAmWxsIGV4
cGVyaWVuY2UgT3JjYSBsb2NraW5nIHVwLgo+IFdoZW4gdGhpcyBoYXBwZW5zLCBzb21ldGltZXMs
IGl0J3Mgb25seSBmb3IgYSBmZXcgc2Vjb25kcyAmIG90aGVyIHRpbWVzLCBJIGhhdmUgdG8gd2Fp
dCBhcyBsb25nIGFzIDUgb3IgMTAgbWludXRlcy4KPiBUaGlzIGNhbiBoYXBwZW4gd2l0aCBhbnkg
YXBwLgo+IEhvdyBjYW4gSSBwcmV2ZW50IHRoaXM/Cj4gSeKAmW0gd29ya2luZyB3aXRoIGEgRGVs
bCBwcmVjaXNpb24gNDgwMCB3aGljaCBoYXMgMTZHQiBvZiByYW0gJiBhIDFUQiBTU0QuCj4gU28s
IGJhc2VkIG9uIHRoYXQsIHdoYXQgZG8geW91IHRoaW5rIHdvdWxkIGNhdXNlIHRoZXNlIGlzc3Vl
cz8KPgo+Cj4+IE9uIEp1bCAyMCwgMjAyMywgYXQgMTM6NTUsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBKZXNz
aWNhLAo+Pgo+PiBJIGp1c3QgcmVjZW50bHkgaW5zdGFsbCBtaW50IDIxLjIgb24gYSBsYXB0b3Ag
YW5kIHNvIGZhciBpIGxvdmUgaXQgYXMgd2VsbC4KPj4KPj4gUm9kbmV5Cj4+Cj4+Cj4+IE9uIDcv
MTkvMjAyMyAwOTo0OCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4+IEhlbGxvLAo+Pj4gSSBhbSBhIGh1Z2UgZmFuIG9mIHBvZGNhc3RzIQo+Pj4gSSdkIGxvdmUg
dG8gY2hlY2sgb3V0IHRoaXMgcHJvZ3JhbSBidXQgYmVmb3JlIEkgcHJvY2VlZCwgSSdkIGxpa2Ug
dG8ga25vdyBpZiBpdCdsbCB3b3JrIG9uIExpbnV4IE1pbj8KPj4+IEkganVzdCB1cGdyYWRlZCB0
byBNaW50IDIxLjIgbGFzdCBuaWdodCAmIGFtIGxvdmluZyBpdCBzbyBmYXIuCj4+Pgo+Pj4KPj4+
IFRoYW5rcywKPj4+IEplc3NpY2EgRGFpbAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cg==

