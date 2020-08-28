Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 0B0232556BA
	for <lists+blinux-list@lfdr.de>; Fri, 28 Aug 2020 10:45:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598604306;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VbnM6DQJ4wxFN6EKbkAqHhYrf0tMtlV0K/FhZpZD/HY=;
	b=LlLF7wvPw300bIk4iz96llGa3qn9MNpjqEKldT6I+jBcJGaGTC1OsKRxMGDTCf2lVWD5Wr
	HmnOf7aEtPF3kdkOEMGHEQLAz1Dpz5RuwfBDyT8k4itN0CyDPzvnvIum1s5xAOfBOgqLsF
	LOl0Wh9+2ICTIu9HdShHV4ARhe4UkWo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-LClsl6omNw6bjFd7abtuBQ-1; Fri, 28 Aug 2020 04:45:03 -0400
X-MC-Unique: LClsl6omNw6bjFd7abtuBQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 36E6818A2251;
	Fri, 28 Aug 2020 08:44:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E53DA7C86C;
	Fri, 28 Aug 2020 08:44:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A01CA2217;
	Fri, 28 Aug 2020 08:44:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07S8ito1018354 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Aug 2020 04:44:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9E5F710F05A; Fri, 28 Aug 2020 08:44:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A1B510F983
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 08:44:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 88F6118A0710
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 08:44:53 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-408-P5JNeWXDPBClCzuXoF1_9A-1;
	Fri, 28 Aug 2020 04:44:50 -0400
X-MC-Unique: P5JNeWXDPBClCzuXoF1_9A-1
Received: from ici.slint.fr (static-176-175-66-67.ftth.abo.bbox.fr
	[176.175.66.67])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 77B5CBE7E3
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 09:44:09 +0200 (CEST)
Subject: Re: braille display question
To: blinux-list@redhat.com
References: <159857735399.6.4830934744852641473.711949@slmail.me>
	<20200828081956.GA217851@abilitiessoft>
Message-ID: <fbbdc047-06f3-30f8-d2af-95694f052357@slint.fr>
Date: Fri, 28 Aug 2020 10:44:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200828081956.GA217851@abilitiessoft>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07S8ito1018354
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Content-Language: fr

VGhhbmtzIGZvciB0aGUgaW5mb3JtYXRpb24sIEpvaG4uCgpUaGVuIGl0IHNob3VsZCB3b3JrIGZp
bmUgYXMgd2VsbCBvbiBTbGludC4KCkRpZGllcgoKTGUgMjgvMDgvMjAyMCDDoCAxMDoxOSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkgaGF2ZSB1c2Vk
IHRoZSBwYWMgTWF0ZSBkaXNwbGF5IHdpdGggYnJsdHR5LiBJdCB3b3JrcyBmaW5lIG9uIGJvdGgg
RGViaWFuIGFuZCBSZWRoYXQgZGlzdHJvcy4KPiAKPiBKb2huCj4gCj4gT24gRnJpLCBBdWcgMjgs
IDIwMjAgYXQgMDM6MTU6NTJBTSArMDIwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPj4gSGkgZXZlcnlvbmUsCj4+IEkgaGF2ZSBhIHF1aWNrIHF1ZXN0aW9uIGFi
b3V0IGJyYWlsbGUgZGlzcGxheXMuCj4+IEhhdmUgYW55IG9mIHlvdSB1c2VkIHRoZSBQYWNtYXRl
IDQwIGNlbGwgZGlzcGxheSB3aXRoIExpbnV4PyBFc3BlY2lhbGx5IHRob3NlIG9mIHlvdSB3aG8g
dXNlIFNsaW50IGFzIEkgYW0gcmVhbGx5IGludGVyZXN0ZWQgaW4gdGhhdCBEaXN0cm8uCj4+IEkg
d2FzIHRoaW5raW5nIG9mIHVzaW5nIGFuIE9wdGVsZWMgQnJhaWxsZSBWb3lhZ2VyIDQwIGJ1dCBJ
IGRvbid0IHNlZSBpdCBzdXBwb3J0ZWQgb24gdGhlIEJSTFRUWSBsaXN0Lgo+PiBQYWNtYXRlIDQw
IGRvZXMgYWN0dWFsbHkgc2VlbSB0byBiZSBzdXBwb3J0ZWQgb24gdGhlIEJSTFRUWSBsaXN0IHNv
IEknbSB0aGlua2luZyBvZiBnZXR0aW5nIHRoYXQgb25lLCBhbmQganVzdCB3YW50ZWQgdG8ga25v
dyBpZiBhbnkgb2YgeW91IHVzZSBQYWNtYXRlIDQwLCBwYXJ0aWN1bGFybHkgd2l0aCBTbGludD8K
Pj4gVGhhbmtzLAo+PiBTTAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

