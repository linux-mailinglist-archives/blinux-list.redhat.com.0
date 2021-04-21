Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E7B10366612
	for <lists+blinux-list@lfdr.de>; Wed, 21 Apr 2021 09:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618989072;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g2/QrXebGflo9fc7Ob2HZhrU4FrlsyYsG8Ml3mNX4Gc=;
	b=NFoXxmHflY2bw6sv3WRLe5xlEqy+oH5e4LULlSooyZpDT6nOu2V6XmlrjF1cWtqrAKBYP7
	WWAc494ztSPcs69YsYUv0Y0jRZsFf+7sG5Ol8zHi7SugejVjccxLgjCMAw4/zpnsZWrmTJ
	/Wgjx2JXRUc1recH5FJ71U5/xIjvXZY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-D3rYYYIgM2m3zLt2uxMPZw-1; Wed, 21 Apr 2021 03:10:35 -0400
X-MC-Unique: D3rYYYIgM2m3zLt2uxMPZw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 15EE0107ACF5;
	Wed, 21 Apr 2021 07:10:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08CC75D9C0;
	Wed, 21 Apr 2021 07:10:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 461391806D0F;
	Wed, 21 Apr 2021 07:10:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13L7A87C011386 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Apr 2021 03:10:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D03D15C257; Wed, 21 Apr 2021 07:10:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx01.redhat.com
	(mimecast03.extmail.prod.ext.phx2.redhat.com [10.5.110.60])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA5B45C23E
	for <blinux-list@redhat.com>; Wed, 21 Apr 2021 07:10:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B90E18B62A4
	for <blinux-list@redhat.com>; Wed, 21 Apr 2021 07:10:04 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-466-k5ULPN_-OpeV_bpx2KTpnw-1; Wed, 21 Apr 2021 03:09:55 -0400
X-MC-Unique: k5ULPN_-OpeV_bpx2KTpnw-1
Received: by mail-ed1-f44.google.com with SMTP id j7so11149552eds.8
	for <blinux-list@redhat.com>; Wed, 21 Apr 2021 00:09:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=jrW4NH7sKbpTPYvL9uWjo+vi2eeMFrVxI9ojYOCiOS8=;
	b=Fpn+9jArfydNKsUsYBpPFJ078JTCnRMzb9fVevZZ760DAh6CzRjSIMHk1d9c3G+sze
	6v3K8M+yC0SeTQvfDAtgL3iiR4kI5DVaXcG2rkXJWrQ0vXxhy25TA+Pbek6Elwj3GgAq
	6POEy8basm5UpkIvM/8u5eMObWrj+vsO5HQ1OecEi6q3TNEbheIJ7pAw25+p2vpCXmr4
	TA2uv0VREdMNe6dEeX8qur7jCQZ8XKITQIAv2FLtOmWxGvjzRMM9IleS0RBTFkmNtyMN
	usCAtSV03/1lppqi4NwbM+R2u84phOHSTqeCENqqfG8RcfuwYM+v6h8C7yz5M6mdudKQ
	dGpw==
X-Gm-Message-State: AOAM530XQmS19xgFQbdXO4j8O7HaGE2IBL9is8yCX97v2NhabAwkyX3e
	gbd3OmkZ11vdKHNHS4+EAmtIIsqhmtY05Q==
X-Google-Smtp-Source: ABdhPJw21lA+fAZQtp2XQ37pn/40oDz1s51sjHJ7UOfUi2Z7W8XhAonjha7C5yV91YOJgvHeg+UKsQ==
X-Received: by 2002:a05:6402:199:: with SMTP id
	r25mr28634350edv.128.1618988992971; 
	Wed, 21 Apr 2021 00:09:52 -0700 (PDT)
Received: from [192.168.1.10] (net-188-153-130-61.cust.vodafonedsl.it.
	[188.153.130.61]) by smtp.gmail.com with ESMTPSA id
	h19sm1350705ejc.94.2021.04.21.00.09.52
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Apr 2021 00:09:52 -0700 (PDT)
Subject: Re: [orca-list] No sound in installed system, after login, in Fedora
	Mate nightly build for April 19.
To: Dave Hunt <ka1cey@gmail.com>, orca-list@gnome.org,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <6f357152-a24d-51f6-abde-4dae367fa2aa@gmail.com>
Message-ID: <d3f07698-6612-8c99-dca3-3bf1b39471a6@gmail.com>
Date: Wed, 21 Apr 2021 09:09:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <6f357152-a24d-51f6-abde-4dae367fa2aa@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKSSBhbSB1c2luZyBGZWRvcmEgUmF3aGlkZSwgZXZlbiB0byBzZW5kIHRo
aXMgZW1haWwgcmlnaHQgbm93LCBzbyB3aGF0SSAKZG8gc2hvdWxkIHdvcmsgZm9yIHlvdSBhcyB3
ZWxsLgoKVGhlIHdvcmthcm91bmQgaW4gdGhlIE1hdGUgc3BpbiwgdGhlIHNhbWUgb25lIEknbSB1
c2luZywgaXMgdG8gbG9nIGluLCAKcHJlc3MgY3RybCthbHQ9RCB0byBnbyB0byB0aGUgZGVza3Rv
cCwganVzdCB0byBiZSBzdXJlLCB0dXJuIG9mZiB0aGUgCnNjcmVlbiByZWFkZXIsIGlmIHlvdSBj
b25maWd1cmVkIGl0IHRvIGF1dG9tYXRpY2FsbHkgbGF1bmNoLCBwcmVzcyAKYWx0K2YyLCB0eXBl
IHBpcGV3aXJlLCBhbmQgdGhlbiB0dXJuIHRoZSBzY3JlZW5yZWFkZXIgYmFjayBvbi4KCkJlc3Qg
cmVnYXJkcy4KCkZyYW5jaXNjbwoKT24gNC8yMS8yMSAxOjUzIEFNLCBEYXZlIEh1bnQgdmlhIG9y
Y2EtbGlzdCB3cm90ZToKPiBJIGhhZCBzb3VuZCBhbmQgc3BlZWNoIGZlZWRiYWNrLCBmcm9tIG9y
Y2EsIG9uIHRoaXMgbGl2ZSBzeXN0ZW0sIGFuZCAKPiBvbiB0aGUgbG9naW4gc2NyZWVuLCBmb2xs
b3dpbmcgaW5zdGFsbGF0aW9uLiBPbmNlIGxvZ2dlZCBpbiwgSSBsb3N0IAo+IGFsbCBzb3VuZCBm
cm9tIHRoZSBzeXN0ZW0uwqAgSSB0cmllZCB0b2dnbGluZywgcmFpc2luZywgYW5kIGxvd2VyaW5n
IAo+IHZvbHVtZXMuIEFsc28sIEkgdHJpZWQgcGx1Z2dpbmcgYW5kIHVucGx1Z2dpbmcgc3BlYWtl
cnMgYW5kIAo+IGhlYWRwaG9uZXMsIGFsbCB3aXRoIG5lZ2F0aXZlIHJlc3VsdC7CoCBoYXMgYW55
b25lIHRyaWVkIHRoZSBNYXRlIHNwaW4sIAo+IG9yIHRoZSBXb3Jrc3RhdGlvbiB2ZXJzaW9uIG9m
IHRoaXMgcmVsZWFzZT8KPgo+Cj4KPiBUaGFua3MsCj4KPgo+Cj4gRGF2ZcKgIEguCj4KPgo+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

