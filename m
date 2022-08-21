Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 694E359B23F
	for <lists+blinux-list@lfdr.de>; Sun, 21 Aug 2022 08:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661062606;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HDnf2PfZyk0NqiElm0jrBup1/Z83netkLFbzrmfYxiQ=;
	b=WH51IFT91SY+B3VDpiKFPi0WIBG+d46zkszBzTsCw1tvg+jaSpl0HICeMuHfTkVoOt5Ebc
	t7u05dMNylii7QtGKa+CKJnZPki6duqobVutUchzYTmpKiT0lTE/fkBUdFzzp5GtXgkCBk
	zl3MNY2ek+XSS6tj46sI7Sy1QiZEmos=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-u7IrY7thMJmQpGKLNNdXwA-1; Sun, 21 Aug 2022 02:16:40 -0400
X-MC-Unique: u7IrY7thMJmQpGKLNNdXwA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47743804191;
	Sun, 21 Aug 2022 06:16:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B84CC40CFD0A;
	Sun, 21 Aug 2022 06:16:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 524DB1946A4B;
	Sun, 21 Aug 2022 06:16:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.2582.1661054713.10503.blinux-list@redhat.com>
References: <mailman.2449.1661039000.10500.blinux-list@redhat.com>
 <mailman.2582.1661054713.10503.blinux-list@redhat.com>
Date: Sun, 21 Aug 2022 06:16:27 +0000
Subject: Re: Raspberry pi 3
To: blinux-list@redhat.com
Message-ID: <mailman.2385.1661062592.10501.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGUtbWFpbGwgYWRkcmVzcyBmb3IgcG9zdGluZyB0byB0aGUgUmFzcGJlcnJ5IFZJIE1haWxp
bmcgbGlzdCBpczoKCnJhc3BiZXJyeS12aUBmcmVlbGlzdHMub3JnCgoKT24gOC8yMS8yMiwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4gVGhhbmsgeW91IGZvciB0aGUgaW5mby4gSSBzdWJzY3JpYmVkIHRvIHRoZSBtYWls
aW5nIGxpc3QgaG93ZXZlciwgdGhleSBkaWQKPiBub3QgbGlzdCBhbiBlbWFpbCBhZGRyZXNzIGZv
ciB0aGUgZ3JvdXAuIERvIHlvdSBoYXBwZW4gdG8ga25vdyB3aGF0IHRoZSBsaXN0Cj4gZW1haWwg
YWRkcmVzc2VzPwo+Cj4gQXNobGV5IEJyZWdlcgo+Cj4+IE9uIEF1ZyAyMCwgMjAyMiwgYXQgNjo0
MyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+PiA8YmxpbnV4LWxpc3RA
cmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IO+7v1NsaW50IGlzIGV4Y2x1c2l2ZWx5IGFuIHg4NiBk
aXN0cm8sIHNvIG5vIHdheSB0byBydW4gaXQgZGlyZWN0bHkgb24KPj4gdGhlIFBpLCBidXQgeW91
IHNob3VsZCBiZSBhYmxlIHRvIHdyaXRlIGFueSBpbWFnZSB0byBhbiBTRCBjYXJkIHVzaW5nCj4+
IGFueSBmbGF2b3Igb2YgTGludXgsIGFuZCBhcyBsb25nIGFzIGFuIHNzaCBzZXJ2ZXIgaXMgaW5z
dGFsbGVkIGFuZAo+PiBlbmFibGVkIG9uIHRoZSBQaSwgeW91IHNob3VsZCBiZSBhYmxlIHRvIGFj
Y2VzcyBpdCBmcm9tIGFueSBMaW51eAo+PiBzeXN0ZW0gd2l0aCBhIHNzaCBjbGllbnQuCj4+Cj4+
IFRoYXQgc2FpZCwgeW91IG1pZ2h0IHdhbnQgdG8gY2hlY2sgb3V0IHJhc3BiZXJyeXZpLm9yZyBh
bmQgdGhlCj4+IFJhc3BiZXJyeSBWSSBtYWlsaW5nIGxpc3Qgd2hpY2ggYXJlIGRlZGljYXRlZCBz
cGVjaWZpY2FsbHkgdG8gdXNpbmcKPj4gdGhlIFBpIGFzIGEgdmlzdWFsbHkgaW1wYWlyZWQgb3Ig
YmxpbmQgdXNlci4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

