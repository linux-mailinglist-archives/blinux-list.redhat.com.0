Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5574D24D71B
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 16:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598019290;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NbvhisOciQyVtXa3bsEQth49uSIAr3J9DdrlM4XaNfQ=;
	b=bogVjFUwgHeo7IEqFAvhsbfKk6jN8mpuajd6Em9jiQcD7EqzqHbS7byoxl8p0VF1gelai0
	8eyuzSjOs+MRvys0CfwCrex1xSyIPg29muNKzX4By/GaGNh80JFL7e4M4o9Wc8cmhyOA9c
	dgoJaFL8z2iVjo73rqr63kDGqbTNtMY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-354-3bubLLe-OcuCdlTn424Jsw-1; Fri, 21 Aug 2020 10:14:47 -0400
X-MC-Unique: 3bubLLe-OcuCdlTn424Jsw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B86681CAF8;
	Fri, 21 Aug 2020 14:14:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E0B460BF1;
	Fri, 21 Aug 2020 14:14:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9128360348;
	Fri, 21 Aug 2020 14:14:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LEBpKS004733 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 10:11:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F204C207A524; Fri, 21 Aug 2020 14:11:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71578207A525
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 14:11:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 095BF1803BE2
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 14:11:47 +0000 (UTC)
Received: from sonic313-13.consmr.mail.bf2.yahoo.com
	(sonic313-13.consmr.mail.bf2.yahoo.com [74.6.133.123]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-350-0cO4M08kOGaGwya-f3jF-g-1;
	Fri, 21 Aug 2020 10:11:44 -0400
X-MC-Unique: 0cO4M08kOGaGwya-f3jF-g-1
X-YMail-OSG: .161cBoVM1n6pBbgW8irtvJ1j8rC.7DW5hWl1tFxWKAb2.TiZZYY9n8B_mnIVuQ
	pvOOOoUCTdLlQw0qtLBf.iIs1qnHzEr2f1A820_chSRrM5HE9iq4gkKiB3QTCvCMnhzuba5Ng6kJ
	bZOcmBhDGtQPsIACiWOEJOsAKLtOfKIw4cIo39is6gsQz4fIn_Vfw5yKeU75.J_XWujealW7Pcer
	0ZViSy_e1yCnW0xL9tpqV7okZl8UQP3QXNIMAdZ4uEMG6IkUl6Mt5vkq_A72O7bWj5xE1UhH6nKq
	BQbqWsnTu0GAMi0jiYAHzpdpkB9abIvRm_7AhDuOUitfdOrStXAkxU4Z32lkIXIxDRnJ3hW7uWDi
	yW1UiGOhyw2AAugvuK8h.pGlmdXrW324GlERYW1EABz9Ui8_LVxw1de7iYo5bS999TB.wAwEyi02
	GEX.CSbKCg6EAk9hhgmRAHmr._t4tv7J6fN7AtsYw4soSiHIbuYFYjJ0fn3bWNCuS1WR9jDJpRRB
	7Uk4MvKXnE.rKzIYGcF8bcZkUq2u96YPyGA2TLvFg50dt7OURwzWBH9g2jRAi72BfpE4n1mBZ7y4
	CBmixTqg.MTjYYCz9iDPet6zoy13Tuh7C1u6WwY1D07wHo5Yi9OxYcRV8.MmXZY4DXJMIUgZrldX
	WUtRV.G1C67vRvLZIAlNktXzz9rMZe6_dx6IP.zgZURidZ982g0aSfz6Rwq3siYq5.bbRE0uSYLi
	8D7JNUCtu8pBVkY5zvmVoE.8ZWC756h8LUSN7EiVl5AIxMRiRtuxiGRJCFHezy13yGpfJ4wGHD7y
	4chi_rIfY1JIqB032ZbE8qFhPJZjFgwaRNGBdxR8mGQEtzNXGBDUO3mLQQpTbE8PyGCztREFxEiQ
	4HKUdta8QYyiTvKKkra_pK8sRYKLthQmqOn2AI3jXMVpdBaGXjvkrOo0w6S_Ds9dOLFF3dgX3JvD
	BHUz7VBWArhx0ebeulOEfeGJvhRA.u0rqs4reLdifMzucTxsRjQjxSTPIdm7LV_o2wwVyFDJb4Zp
	pm24kIOoEKG.QK9vbm7aUpH0KrP0PNBnQA2fgMhJFUuOIlgNxPYXZ1RW2BL215QPA80fgEO9uIDf
	WrXDaoBOXLfUGZ8yVsqZVVDCbadnPtaUggfLH24M1UU_1zjO9QTvAeojDHLjsUyFKH1TVF1qoFkL
	sv7ZwFfhrzBGbZq5duedhGHcVrUKPnv5kORO.G7_arafotQbJa9AsXIoRdoA4slEJjK3IhqyTCBy
	j73OYPEh2u.3orDVkFPreuPLrJR_E7M3XT8ABFv6uMK1khVByfrsDrgO37NmnFZNijLH9eSNMoRA
	x.IuKNdHKs6H69UfAeC2Hz3ILRVzi.XAFv8ttPMfyv7QbJHtZWqC5XI9toEwjQkcMoHKU0sFUCD5
	wGgh7tPNgMsGNIJQ4eE8CbeHQ4utNpqRM8RA9mieCwTLDgrD6DrY1SdPdZMADX7MFkf9XRmrnlWc
	E2X40iahdlhi_iwqwnSkX_oQvOWS34WAkXvGL1ls6Bab6hlLX1li7i7dGvs_LkgqStu_hJBs.9gD
	tZf4JFOq0GHCDea6s8lD5ZznLwp1Gfxs-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic313.consmr.mail.bf2.yahoo.com with HTTP;
	Fri, 21 Aug 2020 14:11:43 +0000
Received: by smtp411.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 6f9d43322e87f9d981a9e62090a23e9c; 
	Fri, 21 Aug 2020 14:11:39 +0000 (UTC)
Subject: Re: Accessible Distros for a beginner?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
	<4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
Message-ID: <cd4c50d3-38f0-5440-c7fb-8a9823d9d7e4@verizon.net>
Date: Fri, 21 Aug 2020 10:11:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <4F89BBB0-1421-4170-8530-C321A454A097@schoeppi.net>
Content-Language: en-US
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

SSd2ZSB1c2VkIHNldmVyYWwgZGlzdHJvcyBzaW5jZSBhYm91dCAyMDA2LCBzb21lIG1vcmUgdGhh
biBvbmNlLiBEZWJpYW4gCmlzIGEgdmVyeSBnb29kIG9uZSwgYXMgeW91IHNheSwgYW5kIGl0IGhh
cyB2ZXJ5IGdvb2QgZG9jdW1lbnRhdGlvbi7CoCBJIApoYWQgc29tZSB3ZWlyZCBwcm9ibGVtcyB3
aXRoIGl0IGFmdGVyIHVwZ3JhZGluZyB0byBzdHJldGNoIG9uIG15IG9sZCAKbWFjaGluZSwgYW5k
IGhhZCB0aGVtIGFnYWluIHdoZW4gSSB0cmllZCBvdXQgYnVzdGVyIGxhc3QgZmFsbC7CoCBTbGlu
dCBpcyAKdGhlIG9ubHkgb25lIEkndmUgdHJpZWQgb24gdGhpcyBtYWNoaW5lLsKgIEkgbGlrZSB0
aGF0IGl0IGJvb3RlZCB1cCB3aXRoIApzcGVlY2ggYnkgZGVmYXVsdCwgSSBmb3VuZCBpdCBmYWly
bHkgZWFzeSB0byBwYXJ0aXRpb24gdGhlIGRyaXZlIGFzIEkgCndhbnRlZCB0bywgYW5kIEkgbGlr
ZSB0aGUgdG9vbHMgaXQgaGFzIGZvciB1c2luZyBlbWFjc3BlYWsgYW5kIHN3aXRjaGluZyAKYW1v
bmcgc3BlZWNoIG91dHB1dHMuwqAgVGhhdCBzYWlkLCBEZWJpYW4gYWxzbyBjZXJ0YWlubHkgZGVz
ZXJ2ZXMgc2VyaW91cyAKY29uc2lkZXJhdGlvbiwgYW5kIGl0cyBhdHRlbnRpb24gdG8gYWNjZXNz
aWJpbGl0eSBpcyBvbmUgcmVhc29uLgoKCkFsCgoKT24gOC8yMS8yMCA5OjI5IEFNLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IFdoeSBub3QganVzdCB1c2luZyBE
ZWJpYW4/IElNSE8gdGhpcyBpcyBzdGlsbCB0aGUgbW9zdCBhY2Nlc3NpYmxlIGRpc3RybyB3aXRo
IGEgbGFyZ2UgY29tbXVuaXR5IGFuZCBhIGFjdGl2ZSB0ZWFtIHdobyBjYXJlcyBhYm91dCBhY2Nl
c3NpYmlsaXR5LiBBbmQgZm9yIGEgYmVnaW5uZXIgaXRzIG5vdCBtb3JlIGRpZmZpY3VsdCB0byBs
ZWFybiBob3cgRGViaWFuIGlzIHdvcmtpbmcgdGhlbiBsZWFybmluZyB0byB1c2UgYW5vdGhlciBk
aXN0cm8uCj4KPiBGb3IgbWUgRGViaWFuIGlzIHN0aWxsIHRoZSBiZXN0IGFuZCBJIHdvbmRlciB3
aHkgdGhpcyBpcyBub3QgdGhlIGNhc2UgZm9yIG90aGVyIHVzZXJzPyBXaHkgZG8geW91IHByZWZl
cmUgb3RoZXIgZGlzdHJvcz8KPgo+IENpYW8sCj4KPiAgICBTY2hvZXBwCj4KPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

