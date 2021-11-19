Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C41A84566E8
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 01:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637281296;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jSqh7dxeloW5NhhXmPhqgw7+OfBfwfZmPXGVpX1wMYU=;
	b=TuQrdnbJjhi0JG0SAxbyDWWfDqO6XaaQ4Epi54cc3xvlbJss5cCfJjsVeZh93U+7AkKCYx
	TLZoPOJFPIKHDKYCVt/bR831jMUeHxakfDWvx/dpe2mxHXUAw4K+VPG5YZKY7ViUd6cFw5
	JcD12cXGMrJ+Dk3r/XTQf4Ytu02uwGQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-539-Vs_tSGgsOJKBUyfAyJLVqw-1; Thu, 18 Nov 2021 19:21:33 -0500
X-MC-Unique: Vs_tSGgsOJKBUyfAyJLVqw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74135802C8F;
	Fri, 19 Nov 2021 00:21:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FD1A4ABAA;
	Fri, 19 Nov 2021 00:21:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A86D64EA2A;
	Fri, 19 Nov 2021 00:21:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ0GGtL010699 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 19:16:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 55CF22026D46; Fri, 19 Nov 2021 00:16:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 510182026D60
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 00:16:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F476811E76
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 00:16:13 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-41-orplaTHRPZej6VclWAttPg-1; Thu, 18 Nov 2021 19:16:11 -0500
X-MC-Unique: orplaTHRPZej6VclWAttPg-1
Received: by mail-qt1-f170.google.com with SMTP id j17so7962130qtx.2
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 16:16:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=PLju88UoPHgV5q3q59nLi20COzuvZ79m8KhMIYc/Ync=;
	b=bOiKjwHExjn/dlLrqdxXnXRzzX5m2KCYzPzwp4/sfpoaU8+fCzIGZ5YCkQY0mHXA0/
	mfRYmzjkbxiW/uBLlen6vG1JCW9KfmwWPJDwlvDdBNxICQo8IuTcv4l+N3+BNbtaBwGQ
	Gl/mhLup332K4eMg275iIYj4vGXAHPJ2w/bmrkhbICnbM+/ehvpk7NEIwZzhNMD7H8kF
	1ZsyY+s5S02/Q/LS2SKp7rC2XUBQGmU+biDWyCkNByuNnH46SDrzryEBv0hoJbTKKmpl
	4UzeT+MJa+86/dAFMGxS0S2eqb49ADkq6yGvSC1BdzGG9hzQLsFXZD1BqaFiIyoARtWH
	IanQ==
X-Gm-Message-State: AOAM533lbdcKqTb2079UvgiwrkYdd72t1fu6Dv8m/LHrYhHRzww6QW/f
	g7zDQxYF3HLZafIXFyMfcx5kH6pvRHt4UA==
X-Google-Smtp-Source: ABdhPJw7WGHHvhI/k4vMIXi62ZLZXE0A/Usxsy/3Vqe2eMtAXIUIUoeEf82Eu+HPbVwvthausBhFyA==
X-Received: by 2002:ac8:5947:: with SMTP id 7mr1778944qtz.16.1637280970226;
	Thu, 18 Nov 2021 16:16:10 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:691b:2b6d:afee:2523?
	([2601:192:4c80:1420:691b:2b6d:afee:2523])
	by smtp.gmail.com with ESMTPSA id
	y18sm883833qkp.120.2021.11.18.16.16.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 16:16:09 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<1999065e-b9ce-59bb-5fe6-5da2e528628d@gmail.com>
Message-ID: <67f20011-0beb-7626-7faa-c62a71c572ef@gmail.com>
Date: Thu, 18 Nov 2021 19:16:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.14.0
MIME-Version: 1.0
In-Reply-To: <1999065e-b9ce-59bb-5fe6-5da2e528628d@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ZiB5b3UgZG8gd250IHRvIHRyeSBNaW50LCBnZXQgdGhlIE1hdGUgdmVyc2lvbiBmb3IgYmVzdCBh
Y2Nlc3NpYmlsaXR5LsKgCgoKClNlbnQgZnJvbSBteSBIUCBQcm9ib29rIGFuZCBUcmlzcXVlbCBH
TlUvTGludXgsIHZlcnNpb24gMTAuMCAocHJlLXJlbGVhc2UpCmh0dHBzOi8vdHJpc3F1ZWwuaW5m
bwoKT24gMTEvMTgvMjEgNTowMCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBJZiB5b3UgbGlrZSBVYnVudHUsIHlvdSB3aWxsIHByZXR0eSBtdWNoIGZlZWwg
YXQgaG9tZSBvbiBNaW50IG9yIGV2ZW4KPiBDb2NvbnV0LiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

