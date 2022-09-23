Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E17115E7845
	for <lists+blinux-list@lfdr.de>; Fri, 23 Sep 2022 12:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663928860;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cbCQyK9ldDYc9rMvXoasSApXdGku+yUo62LBgjLuzKY=;
	b=h9hqLrb8hg/jwLBa/v4VEixKe6BTzkuMS+CMIXnRLQdzSD1uGMqfDY9+nISMUmMHDE0IrI
	8IiPU3H4uqEYBOyedSUNjQ+uzHTAQEUifhpg0uJ2qMgqIx+feodShF0XjBGjyoDQUGEeMz
	5yU+mP2sLmByHbVUY2422azV2D7wVpE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-370-uWd-KU85NbuwXytuX3DwPA-1; Fri, 23 Sep 2022 06:27:37 -0400
X-MC-Unique: uWd-KU85NbuwXytuX3DwPA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60C503C0E213;
	Fri, 23 Sep 2022 10:27:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E658E40C2064;
	Fri, 23 Sep 2022 10:27:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 523FC1946A42;
	Fri, 23 Sep 2022 10:27:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 23 Sep 2022 11:27:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: F 105 crashing, anyone else?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1902.1663760173.6083.blinux-list@redhat.com>
 <mailman.2208.1663795326.6077.blinux-list@redhat.com>
In-Reply-To: <mailman.2208.1663795326.6077.blinux-list@redhat.com>
Message-ID: <mailman.2117.1663928851.6074.blinux-list@redhat.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Tm90IHN1cmUgaG93IG9yIHdoeSwgYnV0IGl0IGFwcGFyZW50bHkgZml4ZWQgaXRzZWxmIGFuZCBJ
IGRpZG4ndCBzcHkgYSAKRkYgdXBkYXRlIGluIHBhY21hbidzIGxpc3Qgb2YgdGhpbmdzIGl0IHVw
ZGF0ZWQsIHRob3VnaCBJJ20gc3RpbGwgdHJ5aW5nIAp0byB3b3JrIG91dCB3aHkgaXQgY3Jhc2hl
ZCBzbyBtdWNoIHRvIGJlZ2luIHdpdGgKCgoKT24gOS8yMS8yMiAyMjoxMiwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBZZXMsIFVidW50dSBNYXRlIDIyLjA0IDY0
LWJpdCwgRmlyZWZveCAxMDUgZnJvbSBNb3ppbGxhIHBwYS4KPgo+IEkgdXNlZCAxMDQgYmVmb3Jl
IGFuZCBkb24ndCByZW1lbWJlciBpdCBjcmFzaGluZyBvbiBteSBzeXN0ZW0sIGJ1dCAxMDUKPiBj
cmFzaGVzIHF1aXRlIGZyZXF1ZW50bHkuCj4KPgo+IEVpdGhlciBhZnRlciBhY3RpdmF0aW5nIGEg
bGluaywgd2hlbiB0aGUgbmV3IHBhZ2UgaXMgbG9hZGVkLCBvciBldmVuCj4gb24tcGFnZSBuYXZp
Z2F0aW9uIGNhbiBjYXVzZSBjcmFzaGVzIGhlcmUgYW5kIHRoZXJlLgo+Cj4KPiBCZXN0IHJlZ2Fy
ZHMKPgo+Cj4gUmFzdGlzbGF2Cj4KPgo+IETFiGEgMjEuIDkuIDIwMjIgbyAxMzozNSBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+PiBJcyBpdCBqdXN0IG1l
LCBvciBpcyBGRiAxMDUuMCBjcmFzaGluZyBtb3JlIHRoYW4gMTA0LlggdXNlZCB0bz8KPj4KPj4K
Pj4gT3BlbiBhIHByaXZhdGUgd2luZG93IGFuZCB0eXBlIGluIGEgVVJMLCBjcmFzaAo+Pgo+Pgo+
PiBUcnkgZ29pbmcgdG8gYSBVUkwgaW4gdGhlIG1haW4gd2luZG93PyBDcmFzaAo+Pgo+Pgo+PiBD
dXJyZW50bHkgY29tcGlsaW5nIEZGIEVTUiB0byBzZWUgaWYgdGhpcyBmaXhlcyBpdC4gVGhlIG9u
bHkgdGhpbmdzIGluCj4+IHRoZSBjcmFzaCBsb2cgYXJlIHNpZ3NlZyBhbmQgc2lnIGZhdWx0cyB3
aGljaCBhcmUgbm90IGhlbHBmdWwsIHRoZQo+PiBjb25zb2xlIG9ubHkgZ2l2ZXMgbWUgYSBjaGFu
bmVsIGVycm9yIHRvIHdvcmsgd2l0aAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

