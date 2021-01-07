Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A896B2ED2F5
	for <lists+blinux-list@lfdr.de>; Thu,  7 Jan 2021 15:45:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610030757;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UIiysjEG2pZiiy3eFzWZusqilwqrDxuLgg7KMKq/Jx4=;
	b=ih+PyxIPR8T/4+7/zKblIPYpvirmeCj0HLaB+Y7kBGpqlSkncb6z4QUKqxShuprFPLqcVq
	peAHKzoZ9fOR5O5YMy1os5zBR3Tb0AAhhcVHiHM6qZFPuboaC+ZCgi1FElx4gbwVNA0Izl
	gvR8SXfzN92de6/3FzvANC4Iz3qowfI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-65NRqwQOOg6pZw3SlMlQSw-1; Thu, 07 Jan 2021 09:45:54 -0500
X-MC-Unique: 65NRqwQOOg6pZw3SlMlQSw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12D71107ACFB;
	Thu,  7 Jan 2021 14:45:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 953EC5D9D7;
	Thu,  7 Jan 2021 14:45:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22515180954D;
	Thu,  7 Jan 2021 14:45:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 107EjeDH004052 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Jan 2021 09:45:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 65DB02166B29; Thu,  7 Jan 2021 14:45:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6082C2166B2F
	for <blinux-list@redhat.com>; Thu,  7 Jan 2021 14:45:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CB31185A7BC
	for <blinux-list@redhat.com>; Thu,  7 Jan 2021 14:45:38 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-145-a56mNpHSOQ6G0eWriCwUsQ-1;
	Thu, 07 Jan 2021 09:45:35 -0500
X-MC-Unique: a56mNpHSOQ6G0eWriCwUsQ-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 65D9DBE2C7
	for <blinux-list@redhat.com>; Thu,  7 Jan 2021 14:44:31 +0100 (CET)
Subject: Re: vlc in slint
To: blinux-list@redhat.com
References: <F43B716C-FE44-4907-AE75-DBD15FE6A994@gmail.com>
Message-ID: <0c696d8e-d93f-ef8c-41f9-96edd68b12b1@slint.fr>
Date: Thu, 7 Jan 2021 15:45:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <F43B716C-FE44-4907-AE75-DBD15FE6A994@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 107EjeDH004052
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

SSdsbCBwYXN0ZSBiZWxvdyB0aGUgYW5zd2VyIHBvc3RlZCBvbiB0aGUgU2xpbnQgbWFpbGluZyBs
aXN0OgoKSSBkb24ndCB0aGluayBzby4gVGhpcyBjb3VsZCBiZSBkdWUgdG8gdGhlIHZlcnNpb24g
Y3VycmVudGx5IHNoaXBwZWQgaW4gClNsaW50Cm9mIFZMQyBpdHNlbGYgYW5kIG9mIHRoZSBHVUkg
KFF0KS4gSXQncyBoYXJkIHRvIHRlbGwgbm90IGtub3dpbmcgd2hpY2ggCnZlcnNpb24Kb2YgYm90
aCBzb2Z0d2FyZSB5b3UgdXNlZCBwcmV2aW91c2x5LgoKTWVhbndoaWxlLCBvdGhlciB1c2VyIGlu
dGVyZmFjZXMgYXJlIGF2YWlsYWJsZSBmb3IgVkxDLCBzb21lIGNvdWxkIGJlIG1vcmUKYWNjZXNz
aWJsZSB3aXRoIHNwZWVjaCwgaW5jbHVkaW5nIG9uIHRoZSBjb25zb2xlLiBZb3UgbWF5IHdhbnQg
dG8gdHJ5OgpjdmxjIChjb25zb2xlKQpudmxjIChuY3Vyc2VzKQoKVGhpcyBiZWluZyBzYWlkIEkg
d2lkZWx5IHByZWZlciBtcHYgb3ZlciB2bGMuIEl0IGRvZXNuJ3QgaGF2ZSBmYW5jeSBHVUkgYnV0
CmlzIHVzYWJsZSBpbiBtYXRlLXRlcm1pbmFsIGFzIGluIGEgY29uc29sZS4KCkRpZGllcgoKTGUg
MDcvMDEvMjAyMSDDoCAxNDo0NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBh
IMOpY3JpdMKgOgo+IEkgaGF2ZSB1c2VkIHZsYyB3aXRoIHdpbmRvd3MsIG1hYyBhbmQgd2l0aCB1
YnVudHUuCj4gV2l0aCBlYWNoIG9uZSwgdGhlIG1lbnUgc3RydWN0dXJlIGFuZCBrZXlib2FyZCBj
b21tYW5kcyB3ZXJlIHNvbWV3aGF0IHNpbWlsYXIuCj4gV2l0aCB0aGUgdmVyc2lvbiBvZiB2bGMg
aW4gc2xpbnQsIGEgZGlzdHJvIHdoaWNoIGlzIHNsYWNrd2FyZS1iYXNlZCwgaXQgaXMgcXVpdGUg
ZGlmZmVyZW50Lgo+IEFueW9uZSBoYXZlIGlkZWFzIGFzIHRvIHdoZXRoZXIgSSBjb3VsZCBzZXQg
dXAgdmxjIHRvIGJlIGFzIGl0IHdhcyBpbiBvdGhlciB2ZXJzaW9ucyBvZiB0aGF0IHByb2dyYW0/
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

