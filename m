Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 45562797312
	for <lists+blinux-list@lfdr.de>; Thu,  7 Sep 2023 16:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694097040;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VVj38E4fl2YeJv6GD4Alz5rFRQHs6TDBUUz9HbxwnQk=;
	b=IW3WN5To4+/gMlfsbCBwsfqh3zxkFEfRYAkKcCsJOlJNZ/yLwYk4iK6/TWon4jqTcXaq2m
	ANRnlHTHnTiOlNdpbbZm7fy81uNcqrf7A6Oda1KLjmDOOdKx7JzDahTjb71t/0v+3ceUzW
	X6JYuq4/dlfHS4YrqFYy9ePgYb0CtLM=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-464-N-LRwagsNIW--bZC5lqeog-1; Thu, 07 Sep 2023 10:30:37 -0400
X-MC-Unique: N-LRwagsNIW--bZC5lqeog-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0155B1C0783E;
	Thu,  7 Sep 2023 14:30:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B3FE2C03293;
	Thu,  7 Sep 2023 14:30:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6131519465A2;
	Thu,  7 Sep 2023 14:30:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 7 Sep 2023 16:30:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: RHVoice on Ubuntu
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1625.1694094913.353787.blinux-list@redhat.com>
 <mailman.1550.1694095462.353792.blinux-list@redhat.com>
In-Reply-To: <mailman.1550.1694095462.353792.blinux-list@redhat.com>
Message-ID: <mailman.1487.1694097033.353788.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gWnZvbmltaXIsCgpteSBmcmllbmQgdGVzdGVkIGFuZCBjb25zdWx0ZWQgaXQgd2l0aCBQ
ZXRlciBWw6FnbmVyIGFuZCB0aGV5IGRpZG4ndCAKc29sdmUgaXQuIEhlIGNvbXBpbGxlZCBpdCB0
d2ljZSBhbmQgbm90aGluZyBoYXBlbnMuIFBldGVyIGRvbid0IGtub3cgCndoYXQgdG8gZG8gdG9v
LiBEZXBlbmRlbmNpZXMgYXJlIGluc3RhbGxlZCwgdm9pY2VzIGFyZSBpbnN0YWxsZWQsIApSSFZv
aWNlIGlzIGluc3RhbGxlZCwgYnV0IGNhbid0IGJlIHVzZWQsIG9ubHkgaW4gQXJjaGxpbnV4IGFu
ZCBXaW5kb3dzLgoKVGhhbmtzIGEgbG90LgoKQmVzdCByZWdhcmRzCgpWb2p0YS4KCkRuZSAwNy4g
MDkuIDIzIHYgMTU6NTggTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXBzYWwo
YSk6Cj4gSGkgVm9qdGEsCj4gUGxlYXNlIGNvbXBpbGUgaXQgbWFudWFsbHkuCj4gQWxsIGluc3Ry
dWN0aW9ucyBhcmUgYXZhaWxhYmxlIGluIHRoZSBnaXRodWIgcmVwby4KPiBUaGFua3MhCj4gWnZv
bmltaXIKPiAKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEJsaW51eC1saXN0
IDxibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IK
PiBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPiBTZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDcs
IDIwMjMgMzo1NSBQTQo+IFRvOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPgo+IFN1YmplY3Q6IFJIVm9pY2Ugb24gVWJ1bnR1Cj4gCj4g
SGVsbG8gYWxsLAo+IAo+IGlzIHNvbWUgd2F5IHRvIGluc3RhbGwgUkhWb2ljZSB0byBVYnVudHUg
TWF0ZSAyMi4wNCBvbiBSYXNwYmVycnkgUGk/IEkgd291bGQKPiBsaWtlIHRvIHVzZSBpdCBhbmQg
aWYgbXkgZnJpZW5kIHRlc3RlZCBpdCwgaGUgaGFkIHByb2JsZW1zIHRvIHNlZSB2b2ljZXMgaW4K
PiBPcmNhLiBJdCB3YXMgaW5zdGFsbGVkLCBidXQgaW52aXNpYmxlLgo+IAo+IHRoYW5rcyBhIGxv
dC4KPiAKPiBCZXN0IHJlZ2FyZHMKPiAKPiBWb2p0YS4KPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

