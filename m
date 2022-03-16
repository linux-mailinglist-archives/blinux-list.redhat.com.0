Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E164A4DB8F7
	for <lists+blinux-list@lfdr.de>; Wed, 16 Mar 2022 20:41:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647459664;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Qt4U15zvrDwzqrq9yQJZKY9lmR/0Z41ox3ZufpbJo7Q=;
	b=EGh+Ov80O/Hw8aI5MQkDnFeOLQkYLShVFKwAQRS0cSFWWxmKwPW+g+Lv1mMltUUgBl7hJj
	XNNsbjT6sf4AU8ry0rnJkktxwgnp0+2qyDgAcx/iFnjVdQ9lRMUXt+F+NpvYViaJS/lLuG
	rRVdSSOhHSau8nnGQ8CHIYHqpvDUI20=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-42-B6LExiUaNYye9XVDXsNt9A-1; Wed, 16 Mar 2022 15:41:01 -0400
X-MC-Unique: B6LExiUaNYye9XVDXsNt9A-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 37F19185A794;
	Wed, 16 Mar 2022 19:40:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 59BC5401E3C;
	Wed, 16 Mar 2022 19:40:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D75911940356;
	Wed, 16 Mar 2022 19:40:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 16 Mar 2022 15:40:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: getting started with Liblouis
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
 <mailman.2021.1647388814.111205.blinux-list@redhat.com>
 <mailman.2147.1647415850.111205.blinux-list@redhat.com>
 <mailman.2542.1647450204.111203.blinux-list@redhat.com>
 <mailman.2599.1647452270.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.2599.1647452270.111210.blinux-list@redhat.com>
Message-ID: <mailman.2537.1647459655.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksIERpZGllci7CoCBUaGFua3MgZm9yIHRoYXQgaW5mb3JtYXRpb24uwqAgWWVzLCB0aGF0IHNl
ZW1zIHRvIGJlIHdoYXQgSSAKbmVlZCwgaWYgcG9zc2libGUgYWxvbmcgd2l0aCBhbnRpd29yZCBh
bmQgYSBjb3VwbGUgb2YgaXRlbXMgdGhlIFJFQURNRSAKbWVudGlvbnMgdGhhdCBJIGZvcmdldC7C
oCBJZiB0aG9zZSBvdGhlciBpdGVtcyBhcmUgbW9yZSB0aGFuIHlvdSB3YW50IHRvIApwdXQgaW4g
U2xpbnQsIHRoZW4gSSBwcmVzdW1lIEknbGwgZ2V0IHRoZW0gYnkgd2F5IG9mIHRoZSBvdGhlciBS
RUFETUUgCmluZm9ybWF0aW9uLgoKCkFsCgoKT24gMy8xNi8yMiAxMzozNywgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSBBbCwKPgo+IEl0IGFwcGVhcnMgdGhh
dCBsaWJsb3VpcyB4bWwgaW5zIG1haW50YWluZWQgZm9yIERlYmlhbiBieSBTYW11ZWwgVGhpYmF1
bHQgc28KPiBEZWJpYW4gYmFzZWQgZGlzdHJpYnV0aW9ucyBnZXQgaXQgdG9vLgo+Cj4gSSB3aWxs
IGJ1aWxkIGEgU2xpbnQgcGFja2FnZSBmb3IgU2xpbnQgdXNpbmcgdGhlIHNhbWUgc291cmNlIGZp
bGVzIGlmIHlvdSBuZWVkIHRoYXQuCj4KPiBCdXQgcGxlYXNlIGxvb2sgZmlyc3QgYXQgdGhpcyBS
RUFETUU6Cj4gaHR0cHM6Ly9zYWxzYS5kZWJpYW4ub3JnL2ExMXktdGVhbS9saWJsb3Vpc3htbC8t
L2Jsb2IvbWFzdGVyL1JFQURNRQo+Cj4gYW5kIGNvbmZpcm0gb3IgaW5maXJtIHRoYXQgaXQgaXMg
d2hhdCB5b3UgYXJlIGxvb2tpbmcgZm9yLgo+Cj4gQ2hlZXJzLAo+IERpZGllcgo+IC0tCj4gRGlk
aWVyIFNwYWllcgo+IFNsaW50IG1haW50YWluZXIuCj4KPiBMZSAxNi8wMy8yMDIyIMOgIDE4OjAz
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IFRoYW5r
cywgSmVmZi7CoCBJJ20gdXNpbmcgU2xpbnQuwqAgSSBkaWRuJ3Qgc2VlIGVpdGhlciBvZiB0aGUg
cHJvZ3JhbXMgeW91Cj4+IG1lbnRpb24uwqAgTWF5YmUgdGhlcmUncyBzb21ldGhpbmcgZWxzZS4K
Pj4KPj4KPj4gQmVzdCEKPj4KPj4gQWwKPj4KPj4KPj4gT24gMy8xNi8yMiAwMzozMCwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IE9uIFR1ZSwgMTUgTWFyIDIw
MjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pgo+Pj4+IEkn
bSB0cnlpbmcgdG8gZmluZCBvdXQgaG93IHRvIHVzZSBMaWJsb3VpcyB0byB0cmFuc2xhdGUgZG9j
dW1lbnRzIGZyb20gcHJpbnQKPj4+PiB0byBCcmFpbGxlLsKgIFNwZWNpZmljYWxseSwgbXkgd2lm
ZSB3b3VsZCBsaWtlIG1lIHRvIGZpbmQgb3V0IGhvdyB0byB0cmFuc2xhdGUKPj4+PiBSdXNzaWFu
IGRvY3VtZW50cyBpbnRvIEJyYWlsbGUgb25lcy7CoCBBdCB0aGUgbW9tZW50LCB0aG91Z2gsIEkg
aGF2ZW4ndCB5ZXQKPj4+PiBsZWFybmVkIGEgY29tbWFuZCB0byBydW4gZm9yIHRyYW5zbGF0aW5n
IGFueXRoaW5nOsKgIHRoZSBMaWJsb3Vpcwo+Pj4+IGRvY3VtZW50YXRpb24gbG9va3MgdG8gaGF2
ZSBhIGxvdCBvZiB1c2VmdWwgbWF0ZXJpYWwsIGJ1dCBJIGNvdWxkIGZpbmQKPj4+PiBub3RoaW5n
IGFib3V0IHJ1bm5pbmcgYSBjb21tYW5kLCB3aXRoIHdoYXRldmVyIGFyZ3VtZW50cyBhbmQgb3B0
aW9ucyBJIG1pZ2h0Cj4+Pj4gbmVlZCwgdG8gY3JlYXRlIGEgQnJhaWxsZSBvdXRwdXQgZmlsZSBm
cm9tIGEgcHJpbnQgaW5wdXQgZmlsZS4KPj4+IEluIERlYmlhbiwgSSBzZWUgbGlibG91aXMtYmlu
IGFuZCBsaWJsb3Vpc3htbC1iaW4gcGFja2FnZXMgd2hpY2ggY2FuIHByb2JhYmx5Cj4+PiBoZWxw
IHlvdS7CoCBPdGhlciBkaXN0cmlidXRpb25zIHByb2JhYmx5IGhhdmUgc29tZXRoaW5nIHNpbWls
YXIuCj4+Pgo+Pj4+IEkgcmVhZCBhYm91dCBhIGNvbW1hbmQgY2FsbGVkIGZpbGUyYnJsLCBhcHBh
cmVudGx5IHBhcnQgb2YgYSBwcm9ncmFtIGNhbGxlZAo+Pj4+IExpYmxvdWlzdXRkbWwsIGJ1dCB0
aGF0IHByb2dyYW0ncyBub3Qgb24gbXkgc3lzdGVtIGV2ZW4gdGhvdWdoIExpYmxvdWlzCj4+Pj4g
aXRzZWxmIGlzLgo+Pj4gQXBwYXJlbnRseSwgVVRETUwgaXMgdW5pZmllZCB0YWN0aWxlIGRvY3Vt
ZW50IG1hcmt1cCBsYW5ndWFnZSwgd2hjaWggaXMKPj4+IHByZXN1bWFibHkgdXNlZCBmb3IgbWFw
cywgZGlhZ3JhbXMsIGV0Yy7CoCBUaGlzIGlzIHByb2JhYmx5IG5vdCB3aGF0IHlvdSBuZWVkLgo+
Pj4KPj4+IEhUSCwKPj4+IEdlb2ZmLgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

