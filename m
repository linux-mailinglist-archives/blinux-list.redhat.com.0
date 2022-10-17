Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BD79C60133C
	for <lists+blinux-list@lfdr.de>; Mon, 17 Oct 2022 18:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666023309;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ze3rYAWxdD9+OnidM2qO+QskBGHiXDh9XdL9GanesUQ=;
	b=h2xeBybM+Bj4qt9X7cb2IvBAIBBG+a1VSIvirz2WLnMcFqApdPzCGCj4TUvf3SJ4V8wvZW
	gxNPYCO07vx4UtOoZX1kkLOosI2Gq0KmOWIuf6a5D7TmMe2XYS/fYXAMMQddEuvyLxLDvU
	lrtydLCwsoJ43VXWuxpFARgEVc0YPfU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-389--IImP2LxNp-PFBfl_UsUCQ-1; Mon, 17 Oct 2022 12:15:07 -0400
X-MC-Unique: -IImP2LxNp-PFBfl_UsUCQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5848811E67;
	Mon, 17 Oct 2022 16:15:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8104C40C206B;
	Mon, 17 Oct 2022 16:15:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 22BD019465A2;
	Mon, 17 Oct 2022 16:15:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 17 Oct 2022 18:14:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: How to start Espeakup before login
To: blinux-list@redhat.com
References: <mailman.715.1666021768.3011.blinux-list@redhat.com>
In-Reply-To: <mailman.715.1666021768.3011.blinux-list@redhat.com>
Message-ID: <mailman.781.1666023303.3005.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgppbiBTbGludCBpZiByZXF1ZXN0ZWQgZXNwZWFrdXAgaXMgc3RhcnRlZCBqdXN0IGJlZm9y
ZSBsb2dnaW5nIGluLCBzbyB0aGUgdXNlcgpoZWFycyB0aGUgZW5kIG9mIHRoZSBzdGFydHVwIHNl
cXVlbmNlLCBhcyBwYXN0ZWQgYmVsb3cgZm9yIGluc3RhbmNlOgoKPHBhc3RlZCBsaW5lcz4KQUxT
QV9DQVJEIG5vdCBzZXQgaW4gL2V0Yy9lc3BlYWt1cC5jb25mLCB1c2luZyB0aGUgZGVmYXVsdC4K
Vm9pY2Ugbm90IHNldCBpbiAvZXRjL2VzcGVha3VwLmNvbmYsIExBTkc9ZnJfRlIudXRmOCwgdXNp
bmcgZnIgZm9yIGVzcGVha3VwLgpTdGFydGluZyBlc3BlYWt1cCB3aXRoIHZvaWNlIGZyCk5vIHNw
ZWFrdXAgc2V0dGluZ3Mgc2F2ZWQgZm9yIGVzcGVha3VwLCBzbyBub3RoaW5nIHRvIHJlc3RvcmUu
CgpXZWxjb21lIHRvIFNsaW50IDE1LjAgTGludXggNS4xOS4xNiBvbiB0dHkxCmljaSBsb2dpbjog
ZGlkaWVyClBhc3N3b3JkOgpMYXN0IGxvZ2luOiBNb24gT2N0IDE3IDE1OjE3OjA2IG9uIHR0eTEK
TGludXggNS4xOS4xNi4KCk1heSB5b3UgbGl2ZSBpbiB1bmludGVyZXN0aW5nIHRpbWVzLgogICAg
ICAgICAgICAgICAgLS0gQ2hpbmVzZSBwcm92ZXJiCgpkaWRpZXJAaWNpOn4kCjxlbmQgb2YgcGFz
dGVkIGxpbmVzPgoKQSBzdGFydHVwIHNjcmlwdCBkb2VzIHRoaXMsIGlmIGV4ZWN1dGFibGUuCgpJ
IGFzc3VtZSB0aGF0IHRoaXMgY2FuIGJlIGRvbmUgaW4gYSBzeXN0ZW0gdXNpbmcgc3lzdGVtZCAo
U2xpbnQgZG9lcyBub3QpLCBidXQKaGF2ZSB0byBsZXQga25vd2xlZGdlYWJsZSBwZW9wbGUgdGVs
bCB5b3UgaG93LgoKQ2hlZXJzLApEaWRpZXIKCkxlIDE3LzEwLzIwMjIgw6AgMTc6NDcsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSwKPiAKPiAKPiBJ
IGRlY2lkZWQgdG8gc3dpdGNoIHRvIG11bHRpLXVzZXIudGFyZ2V0IHdpdGggc3lzdGVtY3RsLiBC
dXQgb25lIHByb2JsZW0gSSBhbQo+IGdldHRpbmcgaXMgdGhhdCBiZWZvcmUgbG9nZ2luZyBpbiwg
SSBkbyBub3QgZ2V0IHNwZWVjaCBmcm9tIGVzcGVha3VwLiBTbyBJIGhhZAo+IHRvIHJlc29ydCB0
byB1c2luZyB0aGUgZ3JhcGhpY2FsLnRhcmdldC4gVGhlbiBhZnRlciBsb2dnZWQgaW4sIEkgY2Fu
IHRoZW4gc3dpdGNoCj4gdG8gYSB0dHkgd2luZG93IGFuZCBFc3BlYWt1cCB3aWxsIHNwZWFrIG9u
bHkgYmVjYXVzZSBJIGFtIGxvZ2dlZCBpbiBpbgo+IGdyYXBoaWNhbC50YXJnZXQuCj4gCj4gCj4g
QW55IGhlbHAgb24gd2hlcmUgSSBjYW4gc2V0IEVzcGVha3VwIHRvIHN0YXJ0IGV2ZW4gYmVmb3Jl
IGxvZyBpbiwgc28gdGhhdCBJIGNhbgo+IHN3aXRjaCB0byBtdWx0aS11c2VyLnRhcmdldCB3aXRo
b3V0IHByb2JsZW0/IEkgYW0gb24gQXJjaCBMaW51eCwgYnV0IEkgYW0gc3VyZQo+IGFueSBzeXN0
ZW0gdXNpbmcgc3lzdGVtZCBjYW4gd29yayBqdXN0IHRoZSBzYW1lLgo+IAo+IAo+IFRJQSwKPiAK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

