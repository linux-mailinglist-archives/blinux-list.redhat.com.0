Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F4F532597
	for <lists+blinux-list@lfdr.de>; Tue, 24 May 2022 10:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653382002;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Lccj8tWGrxZXNCneiDxZfQq+nF3XWYC4ssBNnJwv1OI=;
	b=chN6ZUl5j/suD0eRKftNNUsYCAyfS6CqKWol0Lz70M7b0JQnfFgo+YNbcpGbeldHLRAObn
	JOtJ/Ac0S4GvWv2vMg8Hg4l9JWs2D1Cw6GlaoKBBpL5BNfrMmluMlMEnyJSquoZkwJmbzl
	KgLn0ph36xdtRftO1aWIZOW3CKqGfOg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-509-JxnKE9GmNxOvS7XqY5F8hw-1; Tue, 24 May 2022 04:46:40 -0400
X-MC-Unique: JxnKE9GmNxOvS7XqY5F8hw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F8041C0513F;
	Tue, 24 May 2022 08:46:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D77A9492C3B;
	Tue, 24 May 2022 08:46:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 235921947BA4;
	Tue, 24 May 2022 08:46:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-999 required=6.2
 tests=[ALL_TRUSTED=-1] autolearn=disabled
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: I'm in crisis, help!!!
Date: Tue, 24 May 2022 10:46:24 +0200
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17518.1653310063.111208.blinux-list@redhat.com>
 <mailman.17273.1653321119.111205.blinux-list@redhat.com>
 <mailman.17397.1653321680.111210.blinux-list@redhat.com>
 <mailman.17614.1653335316.111208.blinux-list@redhat.com>
 <mailman.17028.1653336203.111207.blinux-list@redhat.com>
 <mailman.17621.1653336356.111204.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.17621.1653336356.111204.blinux-list@redhat.com>
Message-ID: <mailman.17116.1653381990.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCkNhbiBpdCBiZSBhIGhhcmR3YXJlIGlzc3VlIG1heWJlPwpKdXN0IHRoaW5raW5nIGhlcmUu
Ck5vdCBzdXJlIHRob3VnaCB3aGF0IHRoYXQgaGFyZHdhcmUgaXNzdWUgY291bGQgYmUuCk1heWJl
IGEgbWVtb3J5IG9yIGJpb3MgaXNzdWUuCi9BCgo+IDIzIG1haiAyMDIyIGtsLiAyMjowNSBza3Jl
diBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPjoKPiAKPiBIaSBEaWRpZXIsCj4gCj4gCj4gSSBjZXJ0YWlubHkgd2lsbC4gQnVzeSBmbGFz
aGluZyBTbGludCB0byBhIGRyaXZlIG5vdy4KPiAKPiAKPiBJJ20gZmVkIHVwIHdpdGggc3R1ZmYg
bm90IGRvaW5nIHdoYXQgaXQncyBzdXBwb3NlIHRvLCBzb21ldGhpbmcgSSd2ZSBuZXZlciBmb3Vu
ZCB0cnVlIGZvciBTbGludC4KPiAKPiAKPiBXYXJtIHJlZ2FyZHMsCj4gCj4gQnJhbmR0IFN0ZWVu
a2FtcAo+IAo+IFNlbnQgdXNpbmcgVGh1bmRlcmJpcmQgb24gdGhlIExpbnV4IGJveC4KPiAKPiBP
biAyMDIyLzA1LzIzIDIyOjAyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+PiBIbyBCcmFuZHQKPj4gCj4+IExlIDIzLzA1LzIwMjIgw6AgMjE6NDgsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+Pj4gT2ssIEknbSBnb2luZyAi
aG9tZSIsIGRvd25sb2FkaW5nIFNsaW50IGFnYWluLCBsZXRzIGhvcGUgaXQgZG9lc24ndCBicmVh
ayBvbiBtZQo+Pj4gdGhpcyB0aW1lLgo+PiBJZiBpdCBkb2VzLCBwaW5nIG1lLCBJJ2xsIHRyeSB0
byBoZWxwLiBZb3UgY2FuIHJlYWNoIG1lIHZpYSBlbWFpbCwgVGVsZWdyYW0gYW5kIElSQy4KPj4g
Cj4+IEdvb2QgbHVjay4KPj4gCj4+IENoZWVycywKPj4gLS0KPj4gRGlkaWVyCj4+IAo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo=

