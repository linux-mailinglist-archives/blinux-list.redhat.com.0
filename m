Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 21A5F29A6A8
	for <lists+blinux-list@lfdr.de>; Tue, 27 Oct 2020 09:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603787666;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dvhY+vrivbqP4urR9DaLdbHVESm0JLNyiHOr4s0W9ho=;
	b=RlifuDrmqp601pK4mvGn8nrmBJR6yDgm5ggZW7/5K/Qkuw5wXsyl4KCniTpsDOSiXste3u
	Hq+kyP0finpbhBSnutZucc3Wx0efqsD6gGMmqhGDA/MYv5TogeMg4/+tJUMd5TiyRDLhgP
	Q9oKKRDulLdDETfEOTdKQvqSDWyaNDE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-6UCES2UbOmSLX_6iglPEgg-1; Tue, 27 Oct 2020 04:34:23 -0400
X-MC-Unique: 6UCES2UbOmSLX_6iglPEgg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D89A8640A0;
	Tue, 27 Oct 2020 08:34:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D9D16EF45;
	Tue, 27 Oct 2020 08:34:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 135F644A43;
	Tue, 27 Oct 2020 08:34:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09R8Lk3U017758 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 27 Oct 2020 04:21:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 59DE32011543; Tue, 27 Oct 2020 08:21:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 548BE2011542
	for <blinux-list@redhat.com>; Tue, 27 Oct 2020 08:21:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42AF7185A7A2
	for <blinux-list@redhat.com>; Tue, 27 Oct 2020 08:21:44 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-331-qhJN6M1PNdK1-f4ysfz_RA-1; Tue, 27 Oct 2020 04:21:40 -0400
X-MC-Unique: qhJN6M1PNdK1-f4ysfz_RA-1
Received: by mail-qk1-f169.google.com with SMTP id a23so391123qkg.13
	for <blinux-list@redhat.com>; Tue, 27 Oct 2020 01:21:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=+/ErI9JWS7QH1b3V2iAdNYOY4PQK7AdzwtVJ3wW9t5Q=;
	b=DEgnZCsno5gdq5aDgoAAs9f7WCr+QXrSl5Qu6f4LUQvsF6jVv/ahHpqX19y18JOQF6
	ylyHM4whv2rrCORB9PbR+HVqxeZQa1UvSQNZtPXz4tZdIYGN81UzM6yeV7b0sUfkYtHU
	9jHNXz1qCeqSJJmR9zI3atR2XoOvUfIvwBEOJkqm+9bk52vuosH2SHOjWivrDUWeqe9O
	PtkvyMFy0RL9l34Q5kwbbjyDHayCnMTy5JBvLw3Xe+45XuOH4gl/CjHvlu8N4bmC9pYw
	TkdAQXj2CJmoYsH2Eyt7UW3uwG7ZH0Yfm0u5hbdvNz052vyd296MIP5Cp9h5q5JZd7Jo
	Yyxw==
X-Gm-Message-State: AOAM533anJRevDxMTyNVq4jcPFVnGLpJ5+WVKHtlpHc/yMuUqDOUxtLr
	3P8e0tU0oT03rJcECUmxYCMf3MovyxUSAns90kbBqeZizqo=
X-Google-Smtp-Source: ABdhPJw4TW2wNeB1eIdRygG+JMe9HH2D9Y4giZtLbZ7M9gZOxK2rYJZ4Gyrqe8a+0mpc9fQqHYDkP8eNXHgYqNnY/U4=
X-Received: by 2002:a37:c51:: with SMTP id 78mr1003434qkm.30.1603786899706;
	Tue, 27 Oct 2020 01:21:39 -0700 (PDT)
MIME-Version: 1.0
References: <07C9A138-5900-4138-9663-B659A1DC7D74.ref@yahoo.com>
	<07C9A138-5900-4138-9663-B659A1DC7D74@yahoo.com>
	<5c169b90-14b6-62cf-f898-79fc149eee6b@crosslink.net>
	<Pine.LNX.4.64.2010262224160.308363@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2010262224160.308363@server2.shellworld.net>
Date: Tue, 27 Oct 2020 01:21:28 -0700
Message-ID: <CAJ1g4g8VKXP9o3=d7u5vya4K2iV2gO2om3bW88WDR_zsAMHtnA@mail.gmail.com>
Subject: Re: the brave browser?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09R8Lk3U017758
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBPY3QgMjYsIDIwMjAgYXQgNzozMyBQTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uCjxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPgo+IEhpIGZvbGtzLAo+
IENhbWUgYWNyb3NzIGEgcmVmZXJlbmNlIHRvICB0aGlzIGZhaXJseSBuZXcgdG9vbC4KPiB3d3cu
YnJhdmUuY29tCj4gSSBob3BlIGxhdWdocy4KPiBJbiBhbnkgY2FzZSwgdGhlIEJyYXZlIGJyb3dz
ZXIgaXMgYW4gb3BlbnNvdXJjZSB0b29sIHdoaWNoIEkgdW5kZXJzdGFuZCBpcwo+IGluY2x1c2l2
ZSBmb3Igc29tZSBpbiBvdGhlciBwbGF0Zm9ybXMuICBXb25kZXJpbmcgaWYgYW55b25lIGhhcyB0
cmllZCB0aGUKPiBMaW51eCBlZGl0aW9ucz8KPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPgoKCi0tIApbTm90aWNlIG5vdCBpbmNsdWRlZCBpbiB0aGUgYWJv
dmUgb3JpZ2luYWwgbWVzc2FnZTogIFRoZSBVLlMuIE5hdGlvbmFsClNlY3VyaXR5IEFnZW5jeSBu
ZWl0aGVyIGNvbmZpcm1zIG5vciBkZW5pZXMgdGhhdCBpdCBpbnRlcmNlcHRlZCB0aGlzCm1lc3Nh
Z2UuXQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDCr1xf
KOODhClfL8KvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

