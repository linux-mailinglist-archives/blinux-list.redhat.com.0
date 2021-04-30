Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 22F1636F4CA
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 06:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619755964;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5M1w8irfAL024p+Tn96GPc47iZZ1ig6+wE0kPx36ujs=;
	b=QTgRyIBO4Iid9VRBlor/GhEdGIh6apFDWHdlZ6Qnwa0wEFYXd4drdK17E50l5PA6QwBGzy
	dQeFQjfZ/tBSntZJ3eol/J3rmHIOcv7+Yn+JS58SRrRZzDBSaAHNtF1Qgt+BsJAH+MNbMi
	VpEbNQHzfQF0+9ZXb5l4pXGrq+n2orw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-301-zrhwI7IOOIiH60-Ixh-vUQ-1; Fri, 30 Apr 2021 00:12:41 -0400
X-MC-Unique: zrhwI7IOOIiH60-Ixh-vUQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 254E08030C4;
	Fri, 30 Apr 2021 04:12:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D75819D61;
	Fri, 30 Apr 2021 04:12:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 13A9144A68;
	Fri, 30 Apr 2021 04:12:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13U4CJ9M013415 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 00:12:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6210B1054FC4; Fri, 30 Apr 2021 04:12:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5DD5E1054FC3
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 04:12:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 338D08007B1
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 04:12:16 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-291-4uBrtbG2P-KKkxmSo1fd9g-1; Fri, 30 Apr 2021 00:12:12 -0400
X-MC-Unique: 4uBrtbG2P-KKkxmSo1fd9g-1
Received: by mail-qk1-f173.google.com with SMTP id o27so629056qkj.9
	for <blinux-list@redhat.com>; Thu, 29 Apr 2021 21:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=tF/8K8oWw8z17Ne+gW6yLuOWJgCD4cuCLaJlDbg4bLA=;
	b=S0S3ZHwOxF9DuKRZoklPQ2pw73nFMZLe+XzTTDk8ttY3bQQrmnCdU9ePQrGnqUjpQP
	PRgwppcsH/oVD7OvZYJ3jDgIpoie4oqRyvQKQi2xL2mb+QVE8JbAH5ymUnTiBSDU98cK
	pRoBNJ+qPTUToIJGX+19aIudM3BeSk/fR0RJHt3wTPz1IhvPVSSVVB1+XJ/qclkhaWtz
	kju5eIE8IV0hpJhGQDU01F6Cq5pWItp9L3DpYSDvtOhNb6ZeMPmPyrqI1Ss4sdyOgJwn
	qM6FPz6d51ag/0CGdi9XgXfIdERbSzFS14UnEVGyi2DhdkFOxN5W/E3nSSiY45r96IJT
	p7gQ==
X-Gm-Message-State: AOAM531FUxcIcWQe4kBICOx5bhhxhunLk6hn/4v9C2SXNeV0rX5DrPpD
	CiKzwbRArCUkqLFKz7r47qTo+L9R3pu2VBygjLjsxVAQeJ5gpA==
X-Google-Smtp-Source: ABdhPJw9tF/RRa2uJyo7WFFGPjHjHk5ARoAaA7ut1CEjsAgnZzv523nT2J4CJKPJ5j2BT+/UAtrEyEQXqUpnM0AV6JA=
X-Received: by 2002:a37:71c1:: with SMTP id m184mr1545346qkc.166.1619755931182;
	Thu, 29 Apr 2021 21:12:11 -0700 (PDT)
MIME-Version: 1.0
References: <4A02183D-704A-4016-9178-15B50AAD1158.ref@yahoo.com>
	<4A02183D-704A-4016-9178-15B50AAD1158@yahoo.com>
	<alpine.NEB.2.23.451.2104292200070.23508@panix1.panix.com>
	<CAJ1g4g_Zr6s9d2tfL3+DufE7xJgpWAnhhRZsR3TPQkfoSG6kkw@mail.gmail.com>
In-Reply-To: <CAJ1g4g_Zr6s9d2tfL3+DufE7xJgpWAnhhRZsR3TPQkfoSG6kkw@mail.gmail.com>
Date: Thu, 29 Apr 2021 21:12:00 -0700
Message-ID: <CAJ1g4g_+5FD2UAG_6G7xVLL__LrbFm2_ouwYTHHPnnEwNs5mug@mail.gmail.com>
Subject: Re: Thinking of getting a computer to install Linux on any
	suggestions?
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBcHIgMjksIDIwMjEgYXQgNzoxOSBQTSBQYXVsIE1lcnJlbGwgPG1hcmJ1eEBnbWFp
bC5jb20+IHdyb3RlOgoKPiBUaGVyZSBhcmUgcXVpdGUgYSBmZXcgcGxhY2VzIHRoYXQgc2VsbCBj
b21wdXRlcnMgd2l0aCBMaW51eCBwcmUtaW5zdGFsbGVkLgo+IFNlZSBlLmcuLCB0aGlzIGxpc3Q6
IDxodHRwczovL2xpbnV4cHJlbG9hZGVkLmNvbS8+Cj4KPgpKdXN0IG5vdGljZWQgdGhhdCBsaXN0
IGlzIG1vc3RseSBmb3IgRXVyb3BlYW4gc2hvcHMuIFRoZXJlJ3MgYSBtb3JlCmNvbXBsZXRlIGxp
c3QgaGVyZTogPGh0dHA6Ly9seGVyLmNvbS9tb2R1bGUvZGIvaW5kZXgucGhwP2Ribj0xND4KLS0K
W05vdGljZSBub3QgaW5jbHVkZWQgaW4gdGhlIGFib3ZlIG9yaWdpbmFsIG1lc3NhZ2U6ICBUaGUg
VS5TLiBOYXRpb25hbApTZWN1cml0eSBBZ2VuY3kgbmVpdGhlciBjb25maXJtcyBub3IgZGVuaWVz
IHRoYXQgaXQgaW50ZXJjZXB0ZWQgdGhpcwptZXNzYWdlLl0KICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgwq9cXyjjg4QpXy/CrwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

