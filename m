Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 42F8A3FA004
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 21:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630092687;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TN6fW9ppuCfVKnCqQib9YgNQzA4o8eehmX7F2Zq9728=;
	b=Niw1qZTzlWk4LQXKfu3KwK7hZmOtWW/mrfxNFs68EevSUnqq9stROgdayT82rkLx42RtXR
	n5TVgyB/MhPFEiWmjVlEuk4VTh7MFdon5FlZ+Uv/+DBKbJjeWSqy6zV45FG0uze7r9yMFi
	443dzdDluInRIO25TZLftEKx+Io0JYA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-OkpiVHt1Pn2M5-sfuwSn1Q-1; Fri, 27 Aug 2021 15:31:25 -0400
X-MC-Unique: OkpiVHt1Pn2M5-sfuwSn1Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59F4E87D541;
	Fri, 27 Aug 2021 19:31:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBB2B3AC1;
	Fri, 27 Aug 2021 19:31:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 115C4181A0F0;
	Fri, 27 Aug 2021 19:31:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RJVEAx020080 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 15:31:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D751E117DB3A; Fri, 27 Aug 2021 19:31:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2555117DB3B
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 19:31:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE17D811E76
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 19:31:11 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-404-uCnu7xqBMZidX-36LMqmpQ-1; Fri, 27 Aug 2021 15:31:09 -0400
X-MC-Unique: uCnu7xqBMZidX-36LMqmpQ-1
Received: by mail-ed1-f42.google.com with SMTP id b7so11399183edu.3
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 12:31:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=64A9R/qaUBXlDkw02265q2fKr2DePPEPL7j8mSubJRo=;
	b=exaY28VFlkFcy5ym+WW0ll/dCmyCjNbYLYmm6MDgCuQK3A9b6ri5qwq/601ym0DM/v
	7woiMm7e2cHAJRY33vhhx9qh4ez9ZfceUcu/sa72pLbxvwoM9od4aHv4dqUlT91OKVdq
	VShedzX8VSPqyH8wW4hcswnyKp8po0M3bu0vPlW0HDh6xW9I4k2tJ26XkQam2HXjtTKk
	m9ofpflVKMrKmeCdLZtCcWas+z4wXheUJFYNiPDhIuZRiDtR7Gp0KPyqnpyjXDZi1LY0
	Bj5rU8WW76i5YQw6Iflgdy45rom+zqWpDSUBv8/jmiH8QTHYs0jbWhdMV7FrobkPCxi4
	FS7w==
X-Gm-Message-State: AOAM531VkXnbnQ7PIXwvzNFHyN08SQX6Sp7QPs1QWk/DSA2IDAT7BvSB
	ESdhDAhADcpqh4FFKWRb3u9HLz2CtXE=
X-Google-Smtp-Source: ABdhPJzlHfJFtjU/Kg3497v8cIxNs9yWROAgPW6KI+YoOge3bkqDNdqzNkjXYbntuXewgsrj3QRkeQ==
X-Received: by 2002:a05:6402:518f:: with SMTP id
	q15mr11269665edd.226.1630092668186; 
	Fri, 27 Aug 2021 12:31:08 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	y21sm3879683edu.13.2021.08.27.12.31.07 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 27 Aug 2021 12:31:07 -0700 (PDT)
Subject: Re: unable to install from aur
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <20210827.181429.958.4@[192.168.1.100]>
	<f27ef494-11d0-71e1-dc0e-f93762bfb28b@gmail.com>
	<20210827.191148.445.6@[192.168.1.100]>
Message-ID: <94329dd7-51a8-3124-583b-508c431cafd8@gmail.com>
Date: Fri, 27 Aug 2021 22:31:06 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210827.191148.445.6@[192.168.1.100]>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MjcuMDguMjAyMSAyMjoxMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C4
0YjQtdGCOgo+IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0
QHJlZGhhdC5jb20+IHdyb3RlOgo+IHBsZWFzZSBsZWF2ZSBvbmx5IG9uZSBrZXlzZXJ2ZXIgb3B0
aW9uLiBpIHJlY29tbWVuZCB1c2luZwo+IGhrcHM6Ly9rZXlzZXJ2ZXIudWJ1bnR1LmNvbQo+Cj4g
VGhpcyBkaWQgZG5vdCB3b3JrLiBJIHN0aWxsIGdldCwgZm9yIGV4YW1wbGU6Cj4gICAgICBsbHRh
Zy0wLjE0LjYudGFyLmd6IC4uLiBGQUlMRUQgKHVua25vd24gcHVibGljIGtleSA0NDkxOTBGMzIz
NUFCRDNCKQo+ID09PiBFUlJPUjogT25lIG9yIG1vcmUgUEdQIHNpZ25hdHVyZXMgY291bGQgbm90
IGJlIHZlcmlmaWVkIQo+CnllcyB0aGlzIGtleSBoYXNuJ3QgYmVlbiB1cGxvYWRlZCB0byBhbnkg
a2V5c2VydmVyLgp0cnk6IGdwZyAtLWZldGNoIApodHRwczovL2RiLmRlYmlhbi5vcmcvZmV0Y2hr
ZXkuY2dpP2ZpbmdlcnByaW50PTdBNUE0RTgwRTQwMDk3QkFGNkVBRDYzODQ0OTE5MEYzMjM1QUJE
M0IKCi0tIApTaW5jZXJlbHksIEFsZXhhbmRlci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

