Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D895315E2
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 22:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653336361;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a80WCnhpxN8kAvmpH9SRChii79zpQMM7H+YCni/JxOc=;
	b=LhWU3yFx4L6S3sMiLeF7ZPJis3WUvgeDhAEakmNNHElTgszxQFEDSpmQTwypeodtF0NQdE
	Cx2mVom5YMaa21PTtgb8DsVif0CNkqw/nweIX3/lYqQYaSNJwTqMCCjuRGwQs3+2CrtF/4
	o+SN6EklLHdGyciDe9oAEImr3oyFjJo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-133-QWdOqbqbOe6fgXFyFvt9Mg-1; Mon, 23 May 2022 16:05:58 -0400
X-MC-Unique: QWdOqbqbOe6fgXFyFvt9Mg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 17FA5833972;
	Mon, 23 May 2022 20:05:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 010532026E03;
	Mon, 23 May 2022 20:05:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8E6921947076;
	Mon, 23 May 2022 20:05:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 May 2022 22:05:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: I'm in crisis, help!!!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17518.1653310063.111208.blinux-list@redhat.com>
 <mailman.17273.1653321119.111205.blinux-list@redhat.com>
 <mailman.17397.1653321680.111210.blinux-list@redhat.com>
 <mailman.17614.1653335316.111208.blinux-list@redhat.com>
 <mailman.17028.1653336203.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.17028.1653336203.111207.blinux-list@redhat.com>
Message-ID: <mailman.17621.1653336356.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRGlkaWVyLAoKCkkgY2VydGFpbmx5IHdpbGwuIEJ1c3kgZmxhc2hpbmcgU2xpbnQgdG8gYSBk
cml2ZSBub3cuCgoKSSdtIGZlZCB1cCB3aXRoIHN0dWZmIG5vdCBkb2luZyB3aGF0IGl0J3Mgc3Vw
cG9zZSB0bywgc29tZXRoaW5nIEkndmUgCm5ldmVyIGZvdW5kIHRydWUgZm9yIFNsaW50LgoKCldh
cm0gcmVnYXJkcywKCkJyYW5kdCBTdGVlbmthbXAKClNlbnQgdXNpbmcgVGh1bmRlcmJpcmQgb24g
dGhlIExpbnV4IGJveC4KCk9uIDIwMjIvMDUvMjMgMjI6MDIsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSG8gQnJhbmR0Cj4KPiBMZSAyMy8wNS8yMDIyIMOgIDIx
OjQ4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IE9r
LCBJJ20gZ29pbmcgImhvbWUiLCBkb3dubG9hZGluZyBTbGludCBhZ2FpbiwgbGV0cyBob3BlIGl0
IGRvZXNuJ3QgYnJlYWsgb24gbWUKPj4gdGhpcyB0aW1lLgo+IElmIGl0IGRvZXMsIHBpbmcgbWUs
IEknbGwgdHJ5IHRvIGhlbHAuIFlvdSBjYW4gcmVhY2ggbWUgdmlhIGVtYWlsLCBUZWxlZ3JhbSBh
bmQgSVJDLgo+Cj4gR29vZCBsdWNrLgo+Cj4gQ2hlZXJzLAo+IC0tCj4gRGlkaWVyCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

