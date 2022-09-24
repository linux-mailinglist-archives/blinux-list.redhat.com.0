Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8F45E8ECA
	for <lists+blinux-list@lfdr.de>; Sat, 24 Sep 2022 19:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664039324;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lTWbUQOlJfng5nxDKpQWD/kLWTgummXyjfk0NggDZXQ=;
	b=XYfU+UjNIFc0nCp8aVR29gZREIqWoQomxD4BTs1bB5fiTgGjxcWT1jdmPSbvYnnzB6qJYF
	9ag2aiQ5Gr621xF+J9TTC8O7jdEFDOoL4uu/Ucje9i87xPZmFug1hYahpp2uNnpkFzkXJ/
	j9KBQqCEsQA/HG4I3IBq8okNLuzoVdA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-311-KAD4Imu7OF2cemejz3hnFg-1; Sat, 24 Sep 2022 13:08:39 -0400
X-MC-Unique: KAD4Imu7OF2cemejz3hnFg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFD0E3C025A1;
	Sat, 24 Sep 2022 17:08:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 73E1140C2064;
	Sat, 24 Sep 2022 17:08:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D1C3619465B2;
	Sat, 24 Sep 2022 17:08:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 24 Sep 2022 18:08:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: Qtile is kind of nice
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.8007.1663004501.10507.blinux-list@redhat.com>
 <mailman.2577.1663963460.6078.blinux-list@redhat.com>
In-Reply-To: <mailman.2577.1663963460.6078.blinux-list@redhat.com>
Message-ID: <mailman.2549.1664039307.6079.blinux-list@redhat.com>
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

SXQgaXMuIEkndmUgc3dpdGNoZWQgb3V0IHRoZSBkZWZhdWx0IHJ1biB3aWRnZXQgZm9yIGdtcnVu
IGFuZCB0aGF0IHdvcmtzIAphIGxvdCBiZXR0ZXIgd2l0aCBPcmNhLCB0d2Vha2VkIHRoYXQgdG8g
aG93IEkgbGlrZSwgY2F1c2UgQWxiZXJ0IHdvbid0IApidWlsZCBmcm9tIHRoZSBBVVIsIGdvdCBr
ZXlzIGZvciB2b2x1bWUgYW5kIHRvIHJlc3RhcnQgT3JjYQoKCkknbSByZWFsbHkgbGlraW5nIG15
IHNldHVwLCBpdCB3b3JrcyBuaWNlbHl5LCB0ZW1wdGVkIHRvIHB1dCBteSAKY29uZmlnLnB5IHNv
bWV3aGVyZSBhbmQgc2hhcmUgaXQgaWYgZm9sa3MgYXJlIGludGVyZXN0ZWQ/CgoKCk9uIDkvMjMv
MjIgMjE6MDQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gWWVh
aCwgSSBpbnN0YWxsZWQgaXQgYSB3ZWVrIGFnby4KPgo+IEkgaGFkIHByb2JsZW1zIHRvIHJlc3Rh
cnQgT3JjYSB3aXRoICdvcmNhIC1yJywgaXQgZ290IG11dGVkIHdoZW4gCj4gdHJpZWQsIGJ1dCBp
dCB3b3JrZWQgYWZ0ZXIgSSBjaGFuZ2VkIHRoZSB3YXkgdG8gcnVuIGl0IG9uIHN0YXJ0dXA6Cj4K
PiBAaG9vay5zdWJzY3JpYmUuc3RhcnR1cF9vbmNlCj4gZGVmIGF1dG9zdGFydCgpOgo+IMKgwqDC
oCBzdWJwcm9jZXNzLlBvcGVuKCdvcmNhICYnLCBzaGVsbD1UcnVlKQo+Cj4gSSBsaWtlIHRoZSBp
ZGVhIG9mIHVzZSBrZXkgY2hvcmRzIGFzIGEgc2hvcnRjdXQsIGJ1dCBJIGhhdmVuJ3QgCj4gY29u
ZmlndXJlZCBpdCB5ZXQuCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

