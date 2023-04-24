Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 039066ED60E
	for <lists+blinux-list@lfdr.de>; Mon, 24 Apr 2023 22:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682367649;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q5Lqes0n5TEtwdrqD7GXFly4eMu7St/mKR0buT9BLBU=;
	b=Pg4w8qvL0tm1K6tt0WDmpkcxywqx1eSCn3EifQezy/Z1l6CyoKtQEzoj9IFB+TURIRYjxs
	wYawxundeKLH1V9QpMYWEbVD7OeCpVcVMYGyuxuNZjC/XP5SsNhdyCXW1krg81EZ8KuHw5
	MyX82kFJJUozvYV4L82/VZ2sXdyUkt0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-386-HCeQX1LrMfG0EiZ3SDhPYQ-1; Mon, 24 Apr 2023 16:20:45 -0400
X-MC-Unique: HCeQX1LrMfG0EiZ3SDhPYQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C120C800B35;
	Mon, 24 Apr 2023 20:20:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6EAF614171B8;
	Mon, 24 Apr 2023 20:20:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BA86019465A3;
	Mon, 24 Apr 2023 20:20:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: wsl drive problem
Date: Mon, 24 Apr 2023 16:03:16 -0400
References: <mailman.387.1682346946.2351825.blinux-list@redhat.com>
In-Reply-To: <mailman.387.1682346946.2351825.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.713.1682367637.2351820.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB0cmllZCB0aGF0IGFuZCBrZXB0IGdldHRpbmcgYW4gYWNjZXNzIGRlbmllZCB3aGVuIEkgc3Rh
cnQgd3NsIEkgZ2V0IGEgY3JlYXRlcHJvY2Vzc2VudHJ5Y29tbW9uIGVycm9yIHdoaWNoIEkgc2Vu
dCBpbiBhbiBlbWFpbCBoZXJlIGEgY291cGxlIGRheXMgYWdvIHRoYW5rcyAKCjczLApEYXJyZW4g
VG9tYmxpbiBLQzlKSkoKCj4gT24gQXByIDI0LCAyMDIzLCBhdCAxMDozNSBBTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4gCj4g77u/VGhhdCdzIG5vdCBob3cgeW91IGFjY2VzcyBpdC4KPiBEcml2ZXMgYXJlIGxvY2F0
ZWQgdW5kZXIgL21udAo+IFNvIHlvdSdkIGdvCj4gY2QgL21udC9jL3VzZXJzCj4gY2QgL21udC9k
L3RlbXAKPiBhbmQgc28gZm9ydGguCj4gLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLQo+IEZy
b206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+Cj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBEYXRlOiBNb24sIDI0IEFwciAy
MDIzIDEwOjEyOjAyIC0wNDAwCj4gU3ViamVjdDogd3NsIGRyaXZlIHByb2JsZW0KPiAKPj4gaGks
IGknbSB1bmFibGUgdG8gYWNjZXNzIG15IHdpbmRvd3MgZHJpdmUgd2l0aGluIHdzbCBkbWVzZyBz
YXlzIHNkYSBpcyAKPj4gd3JpdGUgcHJvdGVjdGVkLiBkb2VzIGFueW9uZSBrbm93IGhvdyB0byBm
aXggdGhpcy4gdGhhbmtzCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+IAo+PiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

