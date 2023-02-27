Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC666A4EF3
	for <lists+blinux-list@lfdr.de>; Mon, 27 Feb 2023 23:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677538500;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l90R9Po/9WOE109FFvCK+2eo6T3S49pxP/s0wNlLn5o=;
	b=TGZcaHMI5r3seMjBfnjDpqfCyIv0taT/3H9cBsDrIm08+KydpMCs6OsIxwtp7hiQ6+sdtj
	PwL5A0D9xjhXFVWqZHbkvU5JROkHZJ8AzMxoweqvt9ua04TYkhndZrlR3a0fzIx341csG4
	QCp43cUUAc0eYsoJ2ar7WWFLkjLn2xk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-526-WMk93Zr5PzafKVEpAPnkvw-1; Mon, 27 Feb 2023 17:54:56 -0500
X-MC-Unique: WMk93Zr5PzafKVEpAPnkvw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F65D1871CD7;
	Mon, 27 Feb 2023 22:54:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F1E002026D4B;
	Mon, 27 Feb 2023 22:54:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5E6A2194658F;
	Mon, 27 Feb 2023 22:54:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 27 Feb 2023 17:54:46 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: speakup or fenrir on fedora
In-Reply-To: <mailman.556.1677534798.3183645.blinux-list@redhat.com>
References: <mailman.427.1677500614.3183649.blinux-list@redhat.com>
 <mailman.460.1677502348.3183651.blinux-list@redhat.com>
 <mailman.556.1677534798.3183645.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.575.1677538490.3183649.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

eWVzLCBpdCdzIGEgc3VkbyBjb21tYW5kLgoKCgpKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3Qg
Y29tPgoiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbiBkZWZlbnNlIG9mIGxpYmVy
dHk6CiBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3Jk
ZXIuIgotRWQgSG93ZGVyc2hlbHQgKEF1dGhvciwgMTk0MCkKCi4KCk9uIE1vbiwgMjcgRmViIDIw
MjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IElzIHRoaXMg
YSBzdWRvIGNvbW1hYm5kP8KgIFRoYW5rcyB3aWxsIGhhdmUgdG8gdHJ5IHRoaXMuCj4KPgo+IE1h
dHRoZXcKPgo+IE9uIDIvMjcvMjAyMyA3OjUyIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+ID4gcGlwMyBpbnN0YWxsIGZlbnJpcnNjcmVlbnJlYWRlcgo+ID4K
PiA+Cj4gPgo+ID4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4KPiA+ICJUaGVyZSBh
cmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGluIGRlZmVuc2Ugb2YgbGliZXJ0eToKPiA+ICAgc29h
cCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9yZGVyLiIKPiA+
IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+ID4KPiA+IC4KPiA+Cj4gPiBPbiBNb24s
IDI3IEZlYiAyMDIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
ID4KPiA+PiBNeSBhcmNoIG1hY2hpbmUgaGFzIGZlbnJpci4KPiA+PiBJcyB0aGVyZSBhIHdheSB0
byBwdXQgZWl0aGVyIGZlbnJpcnNjcmVlbnJlYWRlciBvciBzcGVha3VwIG9uIHRvIGEgZmVkb3Jh
Cj4gPj4gc3lzdGVtPwo+ID4+IFRoZSBzcGVha3VwIHBhZ2UgbWlnaHQgbmVlZCB1cGRhdGluZy4K
PiA+PiBXaGVuIEkgdXNlIHRoZSBzaGVsbCwgZm9yIG5vdyBJIHVzZSB0IGQgcyByLgo+ID4+Cj4g
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
ID4+Cj4gPj4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPiA+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

