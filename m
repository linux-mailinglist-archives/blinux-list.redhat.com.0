Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB54165C818
	for <lists+blinux-list@lfdr.de>; Tue,  3 Jan 2023 21:30:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672777804;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=t7bLulNx8Ro8623PGTDth/glXERkg3UDtArBgPFqWcc=;
	b=Tm16+CJE7HB8pSJ5FLzbSf4le7RsocoDsKDeRWr1V1+UTRVXIblz80XkH/KgB4DDCAq+wc
	KGrsI6xS5GJcdTv4TSGMmlgKwxEF96WNuq5mm3k2vH2f85VvL6oC0xg25lXGSYXcq6+QFP
	0BQR7VVQlumXqPOB5SJSQTqkVas++x4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-221--9rF_GcYOZ20EWJxdvt1Tw-1; Tue, 03 Jan 2023 15:30:02 -0500
X-MC-Unique: -9rF_GcYOZ20EWJxdvt1Tw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB88685A588;
	Tue,  3 Jan 2023 20:29:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0618C40104C;
	Tue,  3 Jan 2023 20:29:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8EF241946594;
	Tue,  3 Jan 2023 20:29:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 3 Jan 2023 15:29:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: any other jenux users here?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2166.1672659484.2515676.blinux-list@redhat.com>
 <mailman.2316.1672675299.2515662.blinux-list@redhat.com>
 <mailman.2265.1672698069.2515665.blinux-list@redhat.com>
 <mailman.2251.1672703020.2515669.blinux-list@redhat.com>
 <mailman.2278.1672707384.2515665.blinux-list@redhat.com>
In-Reply-To: <mailman.2278.1672707384.2515665.blinux-list@redhat.com>
Message-ID: <mailman.2434.1672777790.2515658.blinux-list@redhat.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSSBoYXZlIGEgbGFwdG9wIGhlcmUgdGhhdCBJIGhhdmUgaW5zdGFsbGVkIGxpbnV4IG9u
IHRvLCBidXQgb25seSAKZGViaWFuLiwgdWJ1bnR1IGFuZCBmZWRvcmEgYXMgdGhleSBhcmUgdGhl
IG9ubHkgb25lcyB0aGF0IHN1cHBvcnQgc2VjdXJlIApib290LsKgIEFyY2ggYW5kIGFueSBkaXJp
dml0aXZlcyBkbyBub3QgYXMgYSByZXNhdW9sdCBpbnN0YWxsaW5nIG9yIGV2ZW4gCmJvb3Rpbmcg
amVudXggZm9yIHRoYXQgbWF0dGVyIGlzIG5vdCBwb3NzaWJsZSB3aXRob3V0IHNpdGVkIGhla2xw
IHRvIApkaXNhYmxlIHNlY3VyZSBib290IHdpY2ggSSBkbyBub3QgaGF2ZS4KCgpNYXR0aGV3CgoK
Ck9uIDEvMi8yMDIzIDc6NTYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4gSmVudXggaGFkIG9jY2Fzc2lvbmFsIHByb2JsZW1zIGluIHRoZSBwYXN0LCB0aGlz
IHRob3VnaCBpcyBkaWZmZXJlbnQuCj4KPgo+Cj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90
IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPiBkZWZlbnNlIG9mIGxp
YmVydHk6Cj4gICBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRo
YXQgb3JkZXIuIgo+IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+Cj4gLgo+Cj4gT24g
TW9uLCAyIEphbiAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Cj4+IFRoYXQgZGlzdHJvIGhhcyBhbHdheXMgYmVlbiBwcm9ibGVtYXRpYy4KPj4gRGV2aW4g
UHJhdGVyCj4+IHIuZC50LnByYXRlckBnbWFpbC5jb20KPj4KPj4KPj4KPj4KPj4gT24gTW9uLCBK
YW4gMiwgMjAyMyBhdCA0OjIxIFBNIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PAo+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4KPj4+IEkgb25seSBoYXZlIGJh
cmUgbWV0YWwgaGVyZSBhbmQgdGhhdCdzIHdoZXJlIHRoZSBsYXN0IHRocmVlIGlzb3MgZmFpbGVk
Lgo+Pj4KPj4+Cj4+Pgo+Pj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJl
IGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPj4+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPj4+
ICAgc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVy
LiIKPj4+IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+Pj4KPj4+IC4KPj4+Cj4+PiBP
biBNb24sIDIgSmFuIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+Pgo+Pj4+IEhpLAo+Pj4+Cj4+Pj4KPj4+PiBJIGhhdmUgamVudXggcnVubmluZyBpbiBh
IHZtLCBidXQgbm90IGhhdmluZyBhbnkgcHJvYmxlbXMgYXQgdGhlCj4+PiBtb21lbnQuICBJCj4+
Pj4gaGF2ZSBub3QgYmVlbiBhYmxlIG90byBnZXQgZWl0aGVyIHNsaW50IG9yIGplbnV4IHRvIGJv
b3Qgb24gYSBiYXJlYm9uZXMKPj4+PiBtYWNoaW5lLCBidXQgSSB0aGlzIGhhZCB0byBkbyB3aXRo
IHNlY3VyZSBib290IHdoaWNoIG5laXRoZXIgYXJjaCBvcgo+Pj4gc2xpbnQKPj4+PiBzdXBwb3J0
IHdoaWNoIGlzIGEgc2hhbWUgc2luY2UgbW9zdCBpZiBub3QgYWxsIG1hY2hpbmVzIGhhdmUgYnkg
ZGVmYXVsdAo+Pj4gYW5kIGRvCj4+Pj4gbm90IGhhdmUgc2l0ZWQgaGVscCB0byBkaXNhYmxlLgo+
Pj4+Cj4+Pj4KPj4+PiBNYXR0aGV3Cj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4gT24gMS8yLzIwMjMgNjoz
OCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gQXQg
bGVhc3QgdGhlIGxhc3QgMyBpc29zIHdvdWxkbid0IGNvbWUgdXAgc3BlYWtpbmcgb24gYQo+Pj4g
dGhpbmtwZW5ndWluLmNvbQo+Pj4+PiBQZW5ndWluIHBybyAxMSBjb21wdXRlciBJIGhhdmUuICBU
aGUgaXNvcyBjb250aW51YWxseSByZWJvb3RlZCBhbmQgSQo+Pj4+PiB2ZXJpZmllZCB0aG9zZSBp
c29zIHdlcmUgY29ycmVjdCBvbiBteSBtYWNoaW5lIGJlZm9yZSBhdHRlbXB0aW5nIHRvIHJ1bgo+
Pj4+PiB0aGUgaW5zdGFsbGVyLiAgVGhlIGF1dGhvciBvZiBqZW51eCB0aGlua3MgaXQncyBhIHVl
ZmkgcHJvYmxlbSBvbiBteQo+Pj4+PiBtYWNoaW5lIGJ1dCB0aGF0J3Mgbm90IGxpa2VseSBzaW5j
ZSB0aGUgbWFjaGluZSBub3cgcnVucyBzbGludCAxNS4wIGFuZAo+Pj4+PiB0aGF0IHVzZXMgdWVm
aSB3aGVuIGluc3RhbGxpbmcuCj4+Pj4+IEkgdGhpbmsgdWVmaSBpbiBtYXRoZW1hdGljcyB0ZXJt
cyBpcyB3aGF0J3MgY2FsbGVkIGdyZWF0ZXN0IGNvbW1vbgo+Pj4+PiBkZW5vbWluYXRvciBhbmQg
YmlvcyAgaXMgbG93ZXN0IGNvbW1vbiBkZW5vbWluYXRvci4KPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+
Pj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVz
IHRvIGJlIHVzZWQgaW4KPj4+Pj4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+Pj4+PiAgICBzb2FwLCBi
YWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+Pj4+PiAt
RWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKPj4+Pj4KPj4+Pj4gLgo+Pj4+Pgo+Pj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

