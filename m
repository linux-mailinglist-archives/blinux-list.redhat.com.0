Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A5E5303B6
	for <lists+blinux-list@lfdr.de>; Sun, 22 May 2022 17:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653231841;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UfsmkV0AiCjoFeXNYK8GvgyJP8QX2+W/+Hfs3MXz7rY=;
	b=PZQeJHyHK82mZZjgYZWmlb47j6TXkIZ+d7G6L51pmqJ3AuF8uWA3+IL4K2/Mgt45K22fom
	UP2bHDmtkMwdg7qAcZwe7VgMZTSq3lsNJNEfpPX3Gp5/JqeIpe+RWsh+wgmPkmkY4Q9JDa
	paU1hZQerq5aSujb+TCLgFtpG8yMk/w=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-212-eQno3MjxOKOSbE0jjrb8-w-1; Sun, 22 May 2022 11:03:57 -0400
X-MC-Unique: eQno3MjxOKOSbE0jjrb8-w-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 766DA185A7A4;
	Sun, 22 May 2022 15:03:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 50A99492C14;
	Sun, 22 May 2022 15:03:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 04BB1194705D;
	Sun, 22 May 2022 15:03:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 22 May 2022 17:03:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: Giving openSuse tumbleweed a go
To: blinux-list@redhat.com
References: <mailman.15948.1652860103.111201.blinux-list@redhat.com>
 <mailman.17191.1653231735.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.17191.1653231735.111210.blinux-list@redhat.com>
Message-ID: <mailman.17333.1653231835.111208.blinux-list@redhat.com>
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UFMgTm93IEkgYW0gbm90IHN1cmU6IGlzICBLREUgb3IgR05PTUUgdGhlaXIgZGVmYXVsdCBkZXNr
dG9wPwoKTGUgMjIvMDUvMjAyMiDDoCAxNzowMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIEJyYW5kdCwKPiAKPiBvcGVuU1VTRSBUdW1ibGV3ZWVk
IGlzIGEgdmVyeSBnb29kIGRpc3RyaWJ1dGlvbiB3aXRoIGEgZ29vZCBkb2N1bWVudGF0aW9uIEAK
PiBodHRwczovL2RvYy5vcGVuc3VzZS5vcmcvIChhbHRob3VnaCBub3QgZm9yIFR1bWJsZXdlZWQg
c3BlY2lmaWNhbGx5KSBhbmQgbW9zdAo+IGExMXkgc29mdHdhcmUgYXJlICBlYXNpbHkgaW5zdGF5
bGVkLCBob3dldmVyIEkgYW0gbm90IHN1cmUgdGhhdCB0aGVpciBpbnN0YWxsZWQKPiBiZSBhY2Nl
c3NpYmxlLiBEaWQgeW91IHRyeT8gSWYgWWVzIGlmIHRoZWlyIGRlZmF1bHQgS0RFIGRlc2t0b3Ag
ZnVsbHkgYWNjZXNzaWJsZT8KPiAKPiBOb3cgYmFjayB0byB3b3JrIG9uIHRoZSBsb25nIG92ZXJk
dWUgbmV3IFNsaW50IGluc3RhbGxlciA7KQo+IAo+IENoZWVycywKPiBEaWRpZXIKPiAKPiBMZSAx
OC8wNS8yMDIyIMOgIDA5OjQ4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEg
w6ljcml0wqA6Cj4+IEhpIGFsbCwKPj4KPj4gU2VlaW5nIHRoYXQgSSBjYW5ub3QgZ2V0IE9yY2Eg
dG8gdGFsayBhdCB0aGUgRmVkb3JhIDM2IGluc3RhbGwsIEkndmUgZGVjaWRlZCB0bwo+PiBnaXZl
IG9wZW5TdXNlIFR1bWJsZXdlZWQgYSB3aGlybC4KPj4KPj4gSSBsaWtlIFVidW50dSAyMi4wNCB3
aXRoIEdub21lIGp1c3QgZmluZSwgbXkgcHJlZmVycmVkIGRpc3RybyBmb3IgZGFpbHkgZHJpdmlu
Zwo+PiBpcyBzdGlsbCBTbGludCwgYnV0IEknZCByZWFsbHkgbGlrZSB0byB0ZXN0IHNvbWUgbW9y
ZSBpbnRyZXN0aW5nIHRoaW5ncy4KPj4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

