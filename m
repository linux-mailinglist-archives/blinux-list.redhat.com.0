Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD6459AC5D
	for <lists+blinux-list@lfdr.de>; Sat, 20 Aug 2022 09:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660982364;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xfIpq+oRHch8CGodZNJxNiJOtlEMZcSyJhd/7OZSo2w=;
	b=UTl63ddSW5qLYBmTS5fa+P4FwvTwhTsTro29Qbs1hlPeyDVRg//+1t0OK9AEupHXiqOA03
	auVVP45Jctebl4wRw2Pb0LjUecsYnjrg8MQpTUuoupgMcIQvKloJaGVHSSshD3s5P4X3x7
	+MxY9YcwM7K6tJ6QKX7XAC32x6EqPg4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-653-nIeER7ozOxWKPhn2XqLa3w-1; Sat, 20 Aug 2022 03:59:21 -0400
X-MC-Unique: nIeER7ozOxWKPhn2XqLa3w-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D7062185A7A4;
	Sat, 20 Aug 2022 07:59:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 602FE492C3B;
	Sat, 20 Aug 2022 07:59:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6E7A31953544;
	Sat, 20 Aug 2022 07:59:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 20 Aug 2022 03:59:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Betterbird/91.9.1
Subject: Re: PC no longer boots from DVD
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1921.1660870750.10506.blinux-list@redhat.com>
 <mailman.2152.1660877706.10500.blinux-list@redhat.com>
In-Reply-To: <mailman.2152.1660877706.10500.blinux-list@redhat.com>
Message-ID: <mailman.2466.1660982351.10503.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB3b3VsZCBqdXN0IHN0aWNrIHRvIHVzaW5nIFVTQiBzdGlja3MgaW5zdGVhZCBwZXJzb25hbCBj
aG9pY2UuIEhhcHB5IAp0cm91Ymxlc2hvb3RpbmcuCgoKT24gOC8xOC8yMiAyMjo1NSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBDYW4gdGhlICBkdmQgZHJpdmUg
cGxheSBvdGhlciBkdmQncz8KPgo+IE9uIDgvMTgvMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+PiBIaSwKPj4gSSBk
b27igJl0IGtub3cgd2hhdCBjYXVzZWQgbXkgRGVza3RvcCB0byBzdG9wIGJvb3RpbmcgZnJvbSB0
aGUgRFZELgo+PiBJIGhhdmUgdHJpZWQgZGlmZmVyZW50IERWROKAmXMgYW5kIGRpZmZlcmVudCBk
aXN0cm9zLgo+PiBJdCB1c2VkIHRvIHdvcmsgd2l0aCBubyBwcm9ibGVtcywgdGhhdOKAmXMgdGhl
IHdheSBJIGluc3RhbGxlZCBMaW51eCBNaW50Lgo+PiBTbyBwbGVhc2UgdGVsbCBtZSB0aGVyZeKA
mXMgYSBzaW1wbGUgd2F5IHRvIGZpeCB0aGlzLgo+PiBUaGFua3MsCj4+IFJvYgo+Pgo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

