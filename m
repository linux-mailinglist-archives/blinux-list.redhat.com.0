Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A10343F3B7
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 02:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635466256;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jy9WffeY/lsyjhLlz3WoyVCCDLm+SuIgktSsxzeIgBE=;
	b=M0y/pTjFDgLBQptMlDt1u/c1N4zZwjjLITZIxEZZv1ia/wrr8Z6QCsESg263G9FKZQGr7J
	HWYRRfEl/ifC4iAdR+XAdLohNlFe1ggTPkowzKTYnYHyKczralSpCkuSKL3nQVzU+cYWLH
	klYT/d0OtUr+/Nc41YbvyOsRAzSPQHA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-pTHmvpfxNzSmorxcL7NeQA-1; Thu, 28 Oct 2021 20:10:52 -0400
X-MC-Unique: pTHmvpfxNzSmorxcL7NeQA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD5FF362F9;
	Fri, 29 Oct 2021 00:10:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 72FCD5FC13;
	Fri, 29 Oct 2021 00:10:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5FF1D1800B9C;
	Fri, 29 Oct 2021 00:10:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19T0AdYB007616 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 28 Oct 2021 20:10:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 22C5F400F3E5; Fri, 29 Oct 2021 00:10:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1EC12400F3E3
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 00:10:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 04F171066558
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 00:10:39 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-539-djI-KViyM5yWMh2STc41ng-1; Thu, 28 Oct 2021 20:10:37 -0400
X-MC-Unique: djI-KViyM5yWMh2STc41ng-1
Received: by mail-qk1-f175.google.com with SMTP id a132so6589847qkg.0
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 17:10:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=OUjKTN1aWStDWiiPXY6QqXLhKHxQYE198BeD2Y2kN2A=;
	b=vT4hOyXjOVKvJhy1bwA10UzcFdZe6J6XXR9Cre91DXQuLny6HZkZDjt/BpInIY07T7
	vF1oBqJo3xs+RS+C/BZbAIn2b5IcAhNnz/Ctncg7LbMHJLoKBYQhOFRWSz4J0kODh3ZA
	sp7b73d5c5O3WwdgRYANSIT6VcY7Qt7j5pATmh+0/RPgCteU9wdOEW6lzabB2g/3Uhyt
	WfKKTR02tVwCGephDU7mWIKp1cthSEX9vWzoXhtBRZuLeGZxc+cHi4zih1HyZFxTzQRg
	ukHX/mygwg5WkGOIVwmsOEjx76Dh6lqJNb5NrzqgyddAtfC7kmNES00WYd06wuUUFMTL
	LWeA==
X-Gm-Message-State: AOAM530vOEB+5oWgAsPJ87ZnfuqwMplbCIp0+L8wWxreTfFWz15MjOly
	hYtzQVsqND0ah1VgI1pBUWdFtZHHcGs=
X-Google-Smtp-Source: ABdhPJzqYLZ172fHTyo+mpL//QThDY7o+tOx9sOnJjmmy+HQ6BL/V3SCTvfKUnFrCWRFOpw4hqCSIw==
X-Received: by 2002:a37:b4c2:: with SMTP id d185mr6336497qkf.504.1635466236154;
	Thu, 28 Oct 2021 17:10:36 -0700 (PDT)
Received: from smtpclient.apple ([2601:152:4000:330:5da9:f485:a776:fa5c])
	by smtp.gmail.com with ESMTPSA id
	o14sm3307727qtv.91.2021.10.28.17.10.35 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 28 Oct 2021 17:10:35 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Can I run an accessible version of linux under windows?
Date: Thu, 28 Oct 2021 20:10:34 -0400
Message-Id: <AD23363F-591E-4B0A-9992-841F3150EC31@gmail.com>
References: <23ab7b29-ac4-63ed-cdb3-257bb4417e9b@hubert-humphrey.com>
In-Reply-To: <23ab7b29-ac4-63ed-cdb3-257bb4417e9b@hubert-humphrey.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19T0AdYB007616
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGEgbG90IGZvciB0aGlzIHN1Z2dlc3Rpb24uIENhbiB5b3UgdGVsbCBtZSBhIGxpdHRs
ZSBtb3JlIGFib3V0IHRoZSBHUk1MIGxpdmUgQ0QgYW5kIGhvdyB0byBnZXQgaXQ/IENhbiBJIHJ1
biBpdCBmcm9tIGFuIGV4dGVybmFsIENEIERyaXZlPwoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBP
biBPY3QgMjgsIDIwMjEsIGF0IDc6MzggUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v1dlbGwsIElicmFo
aW0gd2hpbGUgb3RoZXJzIG1heSBoYXZlIGJldHRlciBzdWdnZXN0aW9ucywgSSB0aGluayBydW5u
aW5nIEdSTUwgYXMgYSBsaXZlIENEIHdvdWxkIGhhdmUgZW5vdWdoIG9wdGlvbnMtYW5kLXBhY2th
Z2VzIGZvciB5b3UgdG8gZXhwZXJpZW5jZS4gQ2VydGFpbmx5IGlmIHlvdSBsaWtlZCBpdCwgeW91
IGNvdWxkIGluc3RhbGwgdG8gYW5vdGhlciBzZWN0aW9uIG9mIHlvdXIgaGFyZC1kcml2ZSwgc28g
eW91IGNvdWxkIGJvb3QgZWl0aGVyIEdSTUwgb3Igd2luZG93cy4gQmVzdCBvZiBsdWNrCj4gQ2hp
bWUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

