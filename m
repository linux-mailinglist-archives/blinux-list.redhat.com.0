Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 82E843CFFBE
	for <lists+blinux-list@lfdr.de>; Tue, 20 Jul 2021 18:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626799701;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iLGG/b+EaPS7GYlv7fzTOEDlyMJRAFZiL+w29oZLC6o=;
	b=Eqf2RvZcLxX1gOyIMJqRQ7lJKfFi8mX1bEvXynBvLeFd1sHqE1s6ZnTQIhIDCoPklMi2tJ
	n13ygjFjSRCXQ8m9aGhjVfujx/Gqi4kBdiLbhpEPEsUXOAaind4DSXhK90Lg9YVVDKD6D1
	ynF5z3wQFx6uEE6Llm66SRUBfyV20FQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-idRk7ZHRMWiVAa7sFetwZw-1; Tue, 20 Jul 2021 12:48:19 -0400
X-MC-Unique: idRk7ZHRMWiVAa7sFetwZw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB614106B7E5;
	Tue, 20 Jul 2021 16:48:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0E7E5D9DC;
	Tue, 20 Jul 2021 16:48:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0EDEC4A712;
	Tue, 20 Jul 2021 16:48:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16KGm7gc018185 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Jul 2021 12:48:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 011067C50; Tue, 20 Jul 2021 16:48:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEB6B7D2B4
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 16:48:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D60D680018D
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 16:48:02 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-18-GFkGY2elNxCQaONx1jsoOQ-1;
	Tue, 20 Jul 2021 12:48:00 -0400
X-MC-Unique: GFkGY2elNxCQaONx1jsoOQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D387CA3927
	for <blinux-list@redhat.com>; Tue, 20 Jul 2021 16:47:58 +0200 (CEST)
Subject: Re: changing the keymap in fluxbox on Slint
To: blinux-list@redhat.com
References: <c1411831-1b3f-9bfc-6e1e-156b648864ff@gmail.com>
	<2a956027-104d-5f6a-c3e7-08824785b7f5@slint.fr>
	<018401d77d86$43c1c120$cb454360$@gmail.com>
Message-ID: <9cce1164-c4ad-140a-091d-d28d5459f45d@slint.fr>
Date: Tue, 20 Jul 2021 18:47:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <018401d77d86$43c1c120$cb454360$@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16KGm7gc018185
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQnJhbmR0LAoKcGxlYXNlIGF0dGFjaCB0aGUgZmlsZSAvZXRjL1gxMS94b3JnLmNvbmYuZC8x
MC1rZXltYXAuY29uZiB0byB5b3VyIG5leHQgCnBvc3QuCgpDaGVlcnMsCkRpZGllcgoKTGUgMjAv
MDcvMjAyMSDDoCAxODo0MiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOp
Y3JpdMKgOgo+IEhpIERpZGllciwKPiAKPiBTb3JyeSwgbm8gbHVjayBvbiBmaXhpbmcgdGhlIGtl
eWJvYXJkIGxheW91dC4gSSB0cmllZCBldmVyeXRoaW5nIEkgY291bGQgdGhpbmsgb2YgdG8gZG8s
IGJ1dCBubyBsdWNrLgo+IAo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogYmxp
bnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tIDxibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5j
b20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4gU2Vu
dDogVHVlc2RheSwgMjAgSnVseSAyMDIxIDE4OjE1Cj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBTdWJqZWN0OiBSZTogY2hhbmdpbmcgdGhlIGtleW1hcCBpbiBmbHV4Ym94IG9uIFNsaW50
Cj4gCj4gSGkgQnJhbmR0LAo+IAo+IEl0IGNvdWxkIGJlIGFuIGlzc3VlIHdpdGggdGhlIGZpbGUg
L3Vzci9zaGFyZS9zYWxpeHRvb2xzL2tleW1hcHMgbGVhZGluZyB0byB3cml0ZSBpbiAvZXRjL1gx
MS94b3JnLmNvbmYuZC8xMC1rZXltYXAuY29uZgo+IAo+IE9wdGlvbiAgICAgICAgICAgICAgICAg
ICAgICAgICAgIlhrYkxheW91dCIgImR2b3JhayIKPiBpbnN0ZWFkIG9mOgo+IE9wdGlvbiAgICAg
ICAgICAgICAgICAgICAgICAgICAgIlhrYkxheW91dCIgImR2b3Jhay1sIgo+IAo+IHdoZW4gcnVu
bmluZyBrZXlib2FyZHNldHVwIG9yIGd0a2tleWJvYXJkc2V0dXAuCj4gCj4gUGxlYXNlIGVkaXQg
dGhpcyAxMC1rZXltYXAuY29uZiBhcyByb290LCByZXBsYWNpbmcgZHZvcmFrIGJ5IGR2b3Jhay1s
LCByZXN0YXJ0IGEgd2luZG93IG1hbmFnZXIuIERvZXMgaXQgbm93IHdvcms/Cj4gCj4gQmVzdCBy
ZWdhcmRzLAo+IERpZGllcgo+IC0tCj4gRGlkaWVyIFNwYWllcgo+IFNsaW50IG1haW50YWluZXIK
PiBkaWRpZXJhdHNsaW50ZG90ZnIKPiAKPiBMZSAyMC8wNy8yMDIxIMOgIDE3OjI2LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4gSGkgYWxsLAo+Pgo+Pgo+
PiBJIGluc3RhbGxlZCBTbGludCBpbiBhIFZNLCBieSBkZWZhdWx0IHJ1bm5pbmcgdGhlIE1hdGUg
ZGVza3RvcCwgd2hpY2gKPj4gSSBjb3VsZCBlYXNpbHkgZml4LCBidXQgd2hlbiBJIHN0YXJ0IEZs
dXhCb3gsIG5vdCBzbyBtdWNoLgo+Pgo+Pgo+PiBUaGUgaXNzdWUgaXMgYXMgZm9sbG93czogSW4g
dGhlIFNsaW50IGluc3RhbGwgSSBjaG9zZSBEdm9yYWsgLUwKPj4gKExlZnQtSGFuZGVkIER2b3Jh
aykgYXMgbXkga2V5Ym9hcmQuIEhvd2V2ZXIsIHdoZW4gSSByYW4gInN0YXJ0eCIgdG8KPj4gZ2V0
IGluIHRvIG15IGRlc2t0b3AsIEkgd2FzIHByZXNlbnRlZCB3aXRoIHRoZSBEdm9yYWsga2V5Ym9h
cmQgbGF5b3V0LAo+PiB3aGljaCwgYXMgYSBvbmUtaGFuZGVkIGxlZnR5LCBJIG9idmlvdXNseSBk
byBub3Qga25vdy4KPj4KPj4KPj4gSSBmaXhlZCB0aGlzIHZlcnkgZWFzaWx5IGluIHRoZSBNYXRl
IGRlc2t0b3AsIGJ1dCBoYXZlIG5vIGlkZWEgaG93IHRvCj4+IGRvIHNvIGluIHRoZSBXaW5kb3cg
TWFuYWdlcnMsIEZsdXhCb3gsIEJsYWNrQm94LCBldGMuCj4+Cj4+Cj4+IElmIGFueW9uZSBjYW4s
IHBsZWFzZSBoZWxwIG1lIHdpdGggdGhpcyBpc3N1ZT8gSSB3b3VsZCByZWFsbHkKPj4gYXBwcmVj
aWF0ZSBpdC4KPj4KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

