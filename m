Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 599BF4DD084
	for <lists+blinux-list@lfdr.de>; Thu, 17 Mar 2022 23:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647554899;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eKrpztlRJBxCf7ff6j/wx6nwqoLwQNnBw66OUDAhGeg=;
	b=Lsc6aXqtk2D9hO8o+XArbPUsJDv3qZrpuv+bv+1+dIMSZ6VXg6twr5rFadZMgUQxLK41SJ
	DMZil6xq1lAm8Ohu4cAMy6bKwDzGaFiEnzrhPQ5r+2AcDVL4SXu3A/YOk0osMns+m7JJHo
	jvDZ+L+ak7ulS/zggXJ2rdB575i9dKU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-335-sMLdTk5UOYWacXZ3tzASdA-1; Thu, 17 Mar 2022 18:08:16 -0400
X-MC-Unique: sMLdTk5UOYWacXZ3tzASdA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 92EC71C0514E;
	Thu, 17 Mar 2022 22:08:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9387840F693;
	Thu, 17 Mar 2022 22:08:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F39F1192F6C5;
	Thu, 17 Mar 2022 22:08:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 17 Mar 2022 23:07:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: MP3 Tag editor?
To: blinux-list@redhat.com
References: <mailman.2712.1647554312.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.2712.1647554312.111205.blinux-list@redhat.com>
Message-ID: <mailman.2711.1647554892.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9iLAoKWW91IGNvdWxkIHdyaXRlIGEgc2NyaXB0IHRvIGRvIHRoYXQsIHJ1bm5pbmcgdGhl
IGNvbW1hbmQgbGluZSBhcHBsaWNhdGlvbgppZDN0YWcsIHNoaXBwZWQgaW4gdGhlIGlkM2xpYiBw
YWNrYWdlIGhlcmUuCgppZDN0YWcgaGFzIGJvdGggYSAtLWhlbHAgb3B0aW9uIGFuZCBhIG1hbiBw
YWdlLgoKQ2hlZXJzLApEaWRpZXIKLS0KRGlkaWVyIFNwYWllcgpTbGludCBtYW50YWluZXIKCkxl
IDE3LzAzLzIwMjIgw6AgMjI6NTAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
YSDDqWNyaXTCoDoKPiBEZWFyIExpc3QsCj4gSSBoYXZlIGEgZm9sZGVyIG9mIG1wMyBmaWxlcyB3
aXRob3V0IElEIHRhZ3MuCj4gVGhlIGZpbGVzIGFyZSBuYW1lZCBBcnRpc3QgZGFzaCBUaXRsZS4K
PiBJcyB0aGVyZSBhIGFjY2Vzc2libGUgd2F5IG9mIGF1dG8gdGFnZ2luZyB0aGVtPwo+IElmIG5v
dCwgd2hhdCBlZGl0b3IgZG8geW91IHJlY29tbWVuZD8KPiAKPiBUaGFua3MsCj4gUm9iCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

