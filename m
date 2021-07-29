Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EED6E3D99D9
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jul 2021 02:02:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627516967;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T+pzGj54eKkJLRkxDNjGoxRGJ7a5EhUlTKdKb0IB+24=;
	b=HMSV8XzsW4sLfmi77lqcnm/vX2vRsVL3NCmwQKzpztcUckR03AVFNcU9RNMoeDeACZ4wvR
	5utV04G9xouPsjxlv4NauApmKlRd2E5j+xtiUPGsqnSO2OnqrCNodbkDPy3x8CfWUbQ36u
	YCOVv8CtXeT9mW7X0VNcmi4M5UK2bYI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-ctaKaoo3MNWRR0U7vvgBpg-1; Wed, 28 Jul 2021 20:02:45 -0400
X-MC-Unique: ctaKaoo3MNWRR0U7vvgBpg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 78F58800D55;
	Thu, 29 Jul 2021 00:02:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1686760CA0;
	Thu, 29 Jul 2021 00:02:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 022C04A7C8;
	Thu, 29 Jul 2021 00:02:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16T02U9Z022412 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 28 Jul 2021 20:02:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 053FA103F279; Thu, 29 Jul 2021 00:02:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F35AD103F277
	for <blinux-list@redhat.com>; Thu, 29 Jul 2021 00:02:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4EF2F1875067
	for <blinux-list@redhat.com>; Thu, 29 Jul 2021 00:02:26 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-597-r58oX2QnMZy_QTWgqPaNBA-1; Wed, 28 Jul 2021 20:02:22 -0400
X-MC-Unique: r58oX2QnMZy_QTWgqPaNBA-1
Received: by mail-qk1-f179.google.com with SMTP id x3so4110729qkl.6
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 17:02:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=yKt1GqHGmlN8nvncAQKiyOqFXri8xOTOfYo+r6Umob4=;
	b=Ck578behTtg6vfrNIh6uLo1KVwRjuaxDyrJj8BVtvJIEugz836AF43Sc915u8xDmfx
	d5NmCuJ8EJqqCtytPIvah+8fEHxLaCCQ7j5n5XaG2JUmSf3Wq2ck+bJtTlFunAxOzPfU
	+q038uFZeAp+KB3iQDarZLTZqHZBHT9OefmAVsaj0aTQS4JGdzC8Vw6AzueOKELnmKph
	EVTxucQ2bBk4chLgdnTxrJxzIb60AHRl0bEXIJTV2r3O058KLmo0Nf8WsUVMDhtZ2re9
	cGEWG0sB62rXz3XcXsERnpDwSKW/snTiAIJtXljtNIfEzSLxwoL0uqaFSuafLAkXdNpC
	r0Rg==
X-Gm-Message-State: AOAM531CX4PaGjCj5IHRCUuHEOt9M0agnFaB9uCL+94XvS47tO3PLFb8
	CkgZQ0FyuSgpf25nDWtT7FO5RjhqBAMpQg==
X-Google-Smtp-Source: ABdhPJztAZKgs5L6sU8RYWGVWf83iXHSBbbt8I0sage3AlMF0kB0bVFJmAa6OgZ7ABMI6xQEF4Ewew==
X-Received: by 2002:a05:620a:62c:: with SMTP id
	12mr2406851qkv.159.1627516941340; 
	Wed, 28 Jul 2021 17:02:21 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::adcc])
	by smtp.gmail.com with ESMTPSA id r5sm572653qtm.75.2021.07.28.17.02.20
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 28 Jul 2021 17:02:20 -0700 (PDT)
Subject: Re: Open Suse install?
To: blinux-list@redhat.com
References: <b3f2a77d-40b6-1404-33ba-21580c29f6dc@gmail.com>
	<CAD_4ddSaTQ3FGNw8RaizfH4_Tau=zZ2w_UUnSXu2m8bazCa54Q@mail.gmail.com>
	<alpine.NEB.2.23.451.2107281141570.22533@panix1.panix.com>
Message-ID: <5920c0c0-e7bb-7b9f-030e-e5cb197f7bec@gmail.com>
Date: Wed, 28 Jul 2021 20:02:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2107281141570.22533@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VHJ5aW5nIHRoaXMgd2l0aCB0aGUgbGF0ZXN0IEdOT01FIHR1bWJsZXdlZWQsIEkgZmluZCB0aGF0
IHRoZXJlIHNlZW1zIHRvIApiZSBubyB3YXkgdG8gc3RhcnQgb3JjYS7CoCAnY3RybC1hbHQtcycg
ZG9lcyBub3RoaW5nLCBub3IgZG9lcyB0cnlpbmcgdG8gCnN0YXJ0IG9yY2EgZnJvbSB0aGUgJ3J1
bicgZGlhbG9ndWUuwqAgSSBkbyBnZXQgdGhlIHZvbHVtZSBwb3BzIGFuZCAKc3BlZWNoLWRpc3Bh
dGNoZXIgc2VlbXMgdG8gd29yaywgdXNpbmcgdGhlICdzcGQtc2F5JyBjb21tYW5kLsKgIEknbSBk
b2luZyAKdGhpcyBvbiByZWFsIGhhcmR3YXJlLgoKCgpUaGFua3MsCgoKCkRhdmXCoCBILgoKCgoK
T24gNy8yOC8yMSAxMTo0NSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiBXaGVuIHlvdSBib290IHR1bWJsZXdlZWQsIGxpc3RlbiBmb3IgaGFyZCBkcml2ZSBh
Y3Rpb24gaWYgaW5zdGFsbGluZyBvbgo+IHJlYWwgaGFyZHdhcmUuICBXaGVuIGFsbCBvZiB0aGlz
IHN0b3BzLCBjb250cm9sLWFsdC1zIHdpbGwgc2xvd2x5IHN0YXJ0Cj4gb3JjYSB1cC4gIE9uY2Ug
ZG9uZSB0dXJuIGFzc2lzdGl2ZSB0ZWNobm9sb2d5IG9uIHRvIGF2b2lkIGRvaW5nIHRoaXMKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

