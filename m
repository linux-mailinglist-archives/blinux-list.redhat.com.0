Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 313303CAE23
	for <lists+blinux-list@lfdr.de>; Thu, 15 Jul 2021 22:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626382187;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ptNOvktk8nLMYtDnyFJWTvaxCGqGd5vKNadi9mY+Q3Y=;
	b=cyB/yibxzhANuOAnVfxVLh3EpaBl/nJeQ2tDFwIx0W5mfE4ydh5KkZ71wv17jr3Dk1tjua
	vfSog+4sYYOOPNbBqBxeu8byvIT6VCH6zoweResq7So7GnOsw7w7rU0VP1A8jZzgXqScLo
	OxbKe9D9N/iD2DQ4iGr07owkc9ARGEg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-6P8IdTf-N1uAzJIw7to-Vw-1; Thu, 15 Jul 2021 16:49:45 -0400
X-MC-Unique: 6P8IdTf-N1uAzJIw7to-Vw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0911E362F8;
	Thu, 15 Jul 2021 20:49:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCCD618A77;
	Thu, 15 Jul 2021 20:49:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 536864EA29;
	Thu, 15 Jul 2021 20:49:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16FKnKBL008218 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 15 Jul 2021 16:49:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 42A8C10CD2C8; Thu, 15 Jul 2021 20:49:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EF3610CD2CA
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 20:49:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8095A858293
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 20:49:16 +0000 (UTC)
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-517-Q2tg1_62OmeJON4HLQFw-A-1; Thu, 15 Jul 2021 16:49:14 -0400
X-MC-Unique: Q2tg1_62OmeJON4HLQFw-A-1
Date: Thu, 15 Jul 2021 20:49:05 +0000
To: blinux-list@redhat.com
Subject: Re: Transfering Thunderbird folder
Message-ID: <388d8a75-302b-1519-cf7d-17cdc5c81345@protonmail.com>
In-Reply-To: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16FKnKBL008218
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgp3ZWxsLCBJIGhhdmUgcXVpdGUgYmFkIGV4cGVyaWVuY2VzIGRvaW5nIHRoaXMgYW55
d2hlcmUgYXQgYW55IHRpbWUsCmluZGVwZW5kZW50bHkgb24gcGxhdGZvcm0gb3IgVEIgdmVyc2lv
biwgc28gSSBwZXJzb25hbGx5IHByZWZlciB0byBzZXQKdXAgdGhpbmdzIGZyb20gc2NyYXRjaCBh
cyBtb3N0IG9mIHRoZSBjb25maWd1cmF0aW9uIGlzIGRvbmUgb24gdGhlCnNlcnZlciBhbnl3YXku
CgoKQnV0IHlvdSBjYW4gdHJ5IGl0IG91dCBpZiB5b3Ugd2FudC4gSnVzdCBsZXQgVEIgY3JlYXRl
IGEgcHJvZmlsZSBmb2xkZXIKYW5kIHJlcGxhY2UgdGhlIGNvbnRlbnQgb2YgdGhlIGZvbGRlciB3
aXRoIHlvdXIgb3duLCB0aGF0IHNob3VsZCB3b3JrIGlmCnlvdXIgcHJldmlvdXMgdmVyc2lvbiBv
ZiBUQiB3YXMgdXBncmFkZWQgdG8gdmVyc2lvbiA3OCB3aXRoIHRoZSBwcm9maWxlLgoKCkJlc3Qg
cmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMTUuIDcuIDIwMjEgbyAxNzozNSBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IEhpLAo+Cj4gSSB3YW50IHRv
IHRyYW5zZmVyIG15IFRodW5kZXJiaXJkIGZvbGRlciBmcm9tIFdpbiB0byBMaW51eC4gSXQgd2Fz
Cj4gcG9zc2libGUgMyA0IHllYXJzIGFnbyB3aXRob3V0IGFueSBpc3N1ZXMsIGJ1dCBmcm9tIHNv
bWUgbmV3IFRodW5kZXJiaXJkCj4gdmVyc2lvbiwgc29tZXRoaW5nIG11c3QgYmUgY2hhbmdldCB0
byBnZXQgdHJhbnNmZXJlZCBmb2xkZXIgd29ya2luZyBhcwo+IGV4cGVjdGVkLiBDYW4geW91IGhl
bHAgcGxlYXNlPyBXaGVuIEkgdHJhbnNmZXIgbXkgZm9sZGVyIHRvCj4gLlRodW5kZXJiaXJkLCBh
cHAgaWdub3JlcyBhbGwgZXhpc3RpbmcgcHJvZmlsZXMgYW5kIGNyZWF0ZXMgYW5vdGhlciBhbmQK
PiBhc2tzIG1lIHRvIGxvZ2luIHRvIG15IG1haWwgYWNjb3VudHMuCj4KPiBUaGFua3MsCj4KPiBQ
YXZlbAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

