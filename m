Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3421B57B372
	for <lists+blinux-list@lfdr.de>; Wed, 20 Jul 2022 11:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658307919;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XtG0YrJMD4jto4Yo11eMw7upCLv+mwp4xg9ma+waPWI=;
	b=e4sDSBGDmND3dithsLvlMhHh0wF1A3pRn1jMfV5x7momjuAMZC8vfDE+6r0gsdGFSj3vxM
	aeDBR+VwxveI9KCr3+0Dy0HQKxhtkmPp5NbViFd182L4O6VDOuXMbrakbOhgq3nerRprOu
	QxMVcaJnkwXcLNa7DFCoDbLNX9ZnKHA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-494-z32SzJc3NgCiEkXv020F4A-1; Wed, 20 Jul 2022 05:05:15 -0400
X-MC-Unique: z32SzJc3NgCiEkXv020F4A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97CCA3816840;
	Wed, 20 Jul 2022 09:05:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 992362166B26;
	Wed, 20 Jul 2022 09:05:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5881B194706C;
	Wed, 20 Jul 2022 09:05:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 20 Jul 2022 11:04:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: Strange behaviour with voices from Voxin
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.34660.1658255513.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.34660.1658255513.111205.blinux-list@redhat.com>
Message-ID: <mailman.34898.1658307905.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8sCgpJJ3ZlIGhhZCB0aGF0IHByb2JsZW0gdG9vLiBCdXQgY291bGRuJ3Qgc29sdmUsIG9u
bHkgdG8gcHV0IHZvaWNlIHBpdGNoIAp0byAzLjUuCgpWb2p0YS4KCkRuZSAxOS4gMDcuIDIyIHYg
MjA6MzEgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXBzYWwoYSk6Cj4gSGks
Cj4gCj4gdG9kYXkgSSBib3VnaHQgdGhlIEFubmEgdm9pY2UgZm9yIHRoZSBHZXJtYW4gbGFuZ3Vh
Z2UgZnJvbSBWb3hpbiAvIAo+IE9yYWx1eC4gSSBjYW4gY2hhbmdlIHZvaWNlIHNldHRpbmdzIGlu
IG9yY2EsIHNldCB0aGUgc3BlZWNoIHJhdGUsIHBpdGNoIAo+IGFuZCBzbyBvbiBhbmQgZXZlcnl0
aGluZyBzZWVtcyB0byB3b3JrIGZpbmUuIEJ1dCBhZnRlciBhIGZldyBtaW51dGVzLCBvciAKPiBh
ZnRlciBhIHNwZWNpZmljIGFjdGlvbiwgSSBkbyBub3QgeWV0IGtub3csIHRoZSBwaXRjaCBvZiB0
aGUgdm9pY2UgaXMgCj4gZ2V0dGluZyBoaWdoZXIgYW5kIGhpZ2hlciBhbmQgc3RheXMgYXQgdGhp
cyBsZXZlbC4gQWxzbyBzd2l0Y2hpbmcgc3BlZWNoIAo+IGJhY2sgdG8gZXNwZWFrLW5nIGFuZCBi
YWNrIHRvIFZveGluIEFubmEgdGhlIHBpdGNoIGRvZXMgbm90IGdldCBiYWNrIHRvIAo+IHRoZSBu
b3JtYWwgbGV2ZWwgSSd2ZSBjb25maWd1cmVkLgo+IAo+IAo+IElzIHNvbWVvbmUgYWxzbyB1c2lu
ZyB2b2ljZXMgZnJvbSBWb3hpbiBhbmQgaXMgdGhpcyBiZWhhdmlvdXIga25vd24gb3IgCj4gaXMg
dGhpcyByZWxhdGVkIHRvIHRoZSBHZXJtYW4gQW5uYSB2b2ljZT8KPiAKPiBDaGVlcnMsCj4gCj4g
IMKgIFNjaG9lcHAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

