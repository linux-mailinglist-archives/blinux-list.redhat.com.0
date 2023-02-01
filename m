Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA78687075
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 22:24:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675286655;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sVtP8Z6DNHCul0R6jqUo/jO1FtMOgUkMJmPWf/hydjY=;
	b=iucbakRc0v/EDa+1BVtBs+0gMTAZcmMFTfohfu0RB0e4olHWPFfrdHcAXsA1MikRbktoWo
	M+Iena2fffLwdP+CDrfXr2T+ZUyC6v7AjiVeC7AhNmXA3+DFUV3UIDssq1ur0upuyTbRBw
	R6CFrky3SCW0XkDewsgXJerFzrdrY5c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-164-gS0TyTqLMs6pq1Hfp8gRXA-1; Wed, 01 Feb 2023 16:24:10 -0500
X-MC-Unique: gS0TyTqLMs6pq1Hfp8gRXA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 400F5857F4F;
	Wed,  1 Feb 2023 21:24:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8ED03140EBF4;
	Wed,  1 Feb 2023 21:24:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2DA9D19465B7;
	Wed,  1 Feb 2023 21:24:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 16:23:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Attempting to boot Jenux in a vm.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
In-Reply-To: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
Message-ID: <mailman.3815.1675286644.8172.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWlrZSwKCgpXaGF0IHZtIHNvZnR3YXJlIGFyZSB5b3UgdXNpbmc/wqAgSWYgdXNpbmcgdm13YXJl
LCB3aGVuIHRoZSBtZW51IGNvbWVzIAp1cCwgZG93bmFycm93IHRvIG1ha2Ugc3VyZSB5b3UgYXJl
IGluIHRoZSBtZW51LsKgIHByZXNzIHMgZm9yIHNoZWxsIGFuZCAKcHJlc3MgZW50ZXIuwqAgVGhp
cyB3aWxsIGRyb3AgeW91IGluIGEgc2hlbGwuwqAgTm93IHR5cGUgdGhlIGZvbGxvd2luZywgCmFs
c2FtaXhlci7CoCBUaGlzIHdpbGwgbG9hZCB0aGUgYWxzYSBtaXhlciBzZXR0aW5ncy7CoCBOb3cg
cHJlc3MgdXAgYXJyb3cgCnRvIHJhemUgdGhlIHZhbHVtZS7CoCBZb3UgbWF5IHdhbnQgdG8gcHJl
c3MgcmlnaHQgYXJyb3cgdG8gc3dpdGNoIGJldHdlZW4gCnRoZSBkaWZmZXJlbnQgYXVkaW8gc2V0
dGluZ3MgdG8gbWFrZSBzdXJlIHRoYXQgeW91IGFyZSBzZXQgdGh3ZSB3YXkgeW91IAp3YW50LsKg
IE9uY2UgdGhpcyBpcyBkb25lLCBqdXN0IHByZXNzIGV4Y2FwZSB0byByZXR1cm4gdG8gdGhlIHNo
ZWxsIGFuZCAKcHJlc3MgY3RybCtEIGFuZCB5b3Ugd2lsbCBiZSByZXRlcm5lZCB0byB0aGUgbWVu
dSBhbmQgc2VsZWN0IGluc3RhbGwgCmplbnV4IG9uIHRoaXMgZGV2aWNlIGFuZCBmb2xsb3cgdGhl
IHByb21wdHMuwqAgRkVucmVyIGlzIHVzZWQgYnkgZGVmYXVsdC4KCgpIVEguCgpNYXR0aGV3CgoK
Ck9uIDIvMS8yMyAwMTowMiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiBIZXkgYWxsLAo+Cj4gSnVzdCBwdWxsZWQgZG93biB0aGUgbGF0ZXN0IEplbnV4IHRv
IGdpdmUgaXQgYSB0cnksIGJ1dCBmb3Igc29tZSAKPiByZWFzb24gSSBjYW5ub3QgZ2V0IGFueSBz
cGVlY2ggb3V0IG9mIGl0LsKgIEkgaGVhciB0aGUgYmVlcHMgd2hlbiB0aGUgCj4gVk0gYm9vdHMg
dXAsIEkgY2FuIG9jciB3aXRoIG52ZGEgYW5kIHNlZSBzZWxmLXRlc3QgcmVxdWVzdGVkLCBwbGVh
c2UgCj4gd2FpdCwgYW5kIGFmdGVyIGEgd2hpbGUgdGhlIG1lbnUgY29tZXMgdXAuwqAgSSBjYW4g
YWxzbyBzZWUgdGhhdCAKPiB0aHJvdWdoIG9jciwgYnV0IEkgZ2V0IG5vIHNwZWVjaCB3aGVuIGlu
c2lkZSB0aGUgdm0uIEkndmUgY2hlY2tlZCB0byAKPiBtYWtlIHN1cmUgdGhlIHNvdW5kIGNhcmRz
IGFyZSBjb3JyZWN0LCBhbnlvbmUgaGF2ZSBhbnl0aGluZyBlbHNlIEkgY2FuIAo+IHRyeT/CoCBJ
J20gbm90IGZpbmRpbmcgYW55IGRvY3VtZW50YXRpb24gYW55d2hlcmUsIHdoaWNoIGlzIHdoeSBJ
J20gCj4gYXNraW5nIGhlcmUuCj4KPiBNaWtlLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo=

