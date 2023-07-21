Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF1275C8FB
	for <lists+blinux-list@lfdr.de>; Fri, 21 Jul 2023 16:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689948393;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Gn9qvR/YaBVJx2ZGcOn7QpcDWTtRQX+k6IZT/Rk7DdA=;
	b=UILVikwI2SofcQLfx5IE1w4s9WDOLvALCOcKqG6Ei2xhdTi5FTFA2OK3/Oz8M/9vjJMlFg
	iVZReoABvhrOMTzIu+Vi56IpG29IiJkiNMfvj2l/bDJbfScfLZUVywjk+NusSbKXA7BxB/
	4hggG0evDvfokg5RZdCzvWfmn5QknoE=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-307-QBi4eD5BO5OakOM8K3YrDA-1; Fri, 21 Jul 2023 10:06:29 -0400
X-MC-Unique: QBi4eD5BO5OakOM8K3YrDA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F64B28EA6E3;
	Fri, 21 Jul 2023 14:05:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E6243492B03;
	Fri, 21 Jul 2023 14:05:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F14941946A6C;
	Fri, 21 Jul 2023 14:05:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 21 Jul 2023 10:05:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Mint Installation?
To: blinux-list@redhat.com
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1762.1689875729.687819.blinux-list@redhat.com>
 <mailman.1705.1689884060.687816.blinux-list@redhat.com>
In-Reply-To: <mailman.1705.1689884060.687816.blinux-list@redhat.com>
Message-ID: <mailman.1831.1689948344.687816.blinux-list@redhat.com>
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

IMKgwqDCoCBJZiB5b3UgYXJlIHJ1bm5pbmcgTWF0ZSwgc29tZXRpbWVzIHRoZSBNYXJjbyBwcm9j
ZXNzIGJlY29tZXMgaHVuZywgCndoaWNoIGNhdXNlcyBPUkNBIHRvIHNlZW0gaHVuZy7CoCBJZiB5
b3UgcHJlc3MgT1JDQStzcGFjZSBvciB0cnkgbW92aW5nIAp0aGUgbW91c2UsIGl0IG1heSBnZXQg
eW91IG91dCBvZiB0aGUgc2l0dWF0aW9uLsKgIEknbSBub3QgcnVubmluZyBNaW50LCAKYnV0IGl0
IGhhcHBlbnMgb24gRGViaWFuIGFuZCBVYnVudHUsIGFuZCBNaW50IGlzIGRlcml2ZWQgZnJvbSBV
YnVudHUuwqAgQSAKbW9yZSBwZXJtYW5lbnQgZml4IGlzIHRvIGNoYW5nZSB0byB0aGUgTGlnaHRk
bSB3aW5kb3cgbWFuYWdlciwgYnV0IGl0IAppc24ndCBhIGdvb2QgbG9uZy10ZXJtIHNvbHV0aW9u
Li4KCgoKCgpPbiA3LzIwLzIzIDE2OjE0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+IEhpLAo+IE9jY2FzaW9uYWxseSwgSeKAmWxsIGV4cGVyaWVuY2UgT3JjYSBs
b2NraW5nIHVwLgo+IFdoZW4gdGhpcyBoYXBwZW5zLCBzb21ldGltZXMsIGl0J3Mgb25seSBmb3Ig
YSBmZXcgc2Vjb25kcyAmIG90aGVyIHRpbWVzLCBJIGhhdmUgdG8gd2FpdCBhcyBsb25nIGFzIDUg
b3IgMTAgbWludXRlcy4KPiBUaGlzIGNhbiBoYXBwZW4gd2l0aCBhbnkgYXBwLgo+IEhvdyBjYW4g
SSBwcmV2ZW50IHRoaXM/Cj4gSeKAmW0gd29ya2luZyB3aXRoIGEgRGVsbCBwcmVjaXNpb24gNDgw
MCB3aGljaCBoYXMgMTZHQiBvZiByYW0gJiBhIDFUQiBTU0QuCj4gU28sIGJhc2VkIG9uIHRoYXQs
IHdoYXQgZG8geW91IHRoaW5rIHdvdWxkIGNhdXNlIHRoZXNlIGlzc3Vlcz8KPgo+Cj4+IE9uIEp1
bCAyMCwgMjAyMywgYXQgMTM6NTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBKZXNzaWNhLAo+Pgo+PiBJIGp1
c3QgcmVjZW50bHkgaW5zdGFsbCBtaW50IDIxLjIgb24gYSBsYXB0b3AgYW5kIHNvIGZhciBpIGxv
dmUgaXQgYXMgd2VsbC4KPj4KPj4gUm9kbmV5Cj4+Cj4+Cj4+IE9uIDcvMTkvMjAyMyAwOTo0OCwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhlbGxvLAo+Pj4g
SSBhbSBhIGh1Z2UgZmFuIG9mIHBvZGNhc3RzIQo+Pj4gSSdkIGxvdmUgdG8gY2hlY2sgb3V0IHRo
aXMgcHJvZ3JhbSBidXQgYmVmb3JlIEkgcHJvY2VlZCwgSSdkIGxpa2UgdG8ga25vdyBpZiBpdCds
bCB3b3JrIG9uIExpbnV4IE1pbj8KPj4+IEkganVzdCB1cGdyYWRlZCB0byBNaW50IDIxLjIgbGFz
dCBuaWdodCAmIGFtIGxvdmluZyBpdCBzbyBmYXIuCj4+Pgo+Pj4KPj4+IFRoYW5rcywKPj4+IEpl
c3NpY2EgRGFpbAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

