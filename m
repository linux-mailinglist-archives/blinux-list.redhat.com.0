Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD9C67DCDE
	for <lists+blinux-list@lfdr.de>; Fri, 27 Jan 2023 05:36:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674794179;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TunJns65iaZ5qTdnGamTbzmVgva6iUFdcyhL9VA9v6U=;
	b=LuXLjHL6+pcCLg/OgdQtNO39splPjPaEWPzBuUL03loFdOUjBX06xcQgAnqRfhZ7wRnkLz
	E6l7K5FwvXjHj41GLS0ipGYobRIgt0KMntD1aD9/8ersQ6VtOUbaHVQDfgnkZAO1lEX0Lm
	Jgb8rdljsNPfSDNNTccU5vCBBmZDxuY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-596-27cpeUeDNhuOrV_DwQrcTg-1; Thu, 26 Jan 2023 23:36:15 -0500
X-MC-Unique: 27cpeUeDNhuOrV_DwQrcTg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DA0353804511;
	Fri, 27 Jan 2023 04:36:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 78757C15BA0;
	Fri, 27 Jan 2023 04:36:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E34F719465A2;
	Fri, 27 Jan 2023 04:36:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 26 Jan 2023 21:34:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: new version of jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1526.1674764282.8176.blinux-list@redhat.com>
In-Reply-To: <mailman.1526.1674764282.8176.blinux-list@redhat.com>
Message-ID: <mailman.2016.1674794167.8169.blinux-list@redhat.com>
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

RG8geW91IGhhdmUgdGhlIGxpbmsgdG8gZG93bmxvYWQgSmVudXg/wqAgSSBkb24ndCBrbm93IGlm
IGhpcyBzaXRlIGV4aXN0cyAKYW55bW9yZSwgYXQgbGVhc3QgSSBjb3VsZG4ndCBnZXQgdG8gaXQg
ZnJvbSBnb29nbGUuCgpNaWtlLgoKT24gMS8yNi8yMDIzIDE6MTcgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSSBhbHJlYWR5IHNlbnQgdGhpcyBpbmZvIHRv
IGRhbmllbCBuYXNoLiAgV2hhdCBoYXBwZW5zIG9uIGEgcGVuZ3VpbiBwcm8gMTEKPiBjb21wdXRl
ciB3aGVuIGJvb3RpbmcgdGhpcyBqZW51eCBpbnN0YWxsZXIgaXMgaXQgYm9vdHMgdG8gYSBwb2lu
dCB0aGVuIGEKPiBtZXNzYWdlIGNvbWVzIHVwIHNheWluZyBwcmVzcyBhbnkga2V5IHRvIHN0b3Ag
c3lzdGVtIHJlc3RvcmF0aW9uLiAgQXQgdGhpcwo+IHBvaW50IGl0IGRvZXNuJ3QgbWF0dGVyIHdo
YXQga2V5IGlzIHByZXNzZWQsIHRoZSBzeXN0ZW0gcmVib290cyBhbmQKPiBjb250aW51ZXMgZG9p
bmcgdGhlIHNhbWUgdGhpbmcgb24gYWxsIGZ1cnRoZXIgYm9vdHMuICBJIG5lZWRlZCBzaWdodGVk
Cj4gaGVscCB0byBzZWUgdGhpcyBzaW5jZSB0aGlzIGRvZXNuJ3QgZG8gYW55IHRhbGtpbmcuCj4K
Pgo+Cj4gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJv
eGVzIHRvIGJlIHVzZWQgaW4KPiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4gICBzb2FwLCBiYWxsb3Qs
IGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+IC1FZCBIb3dkZXJz
aGVsdCAoQXV0aG9yLCAxOTQwKQo+Cj4gLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cg==

