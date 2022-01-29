Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBCB4A31B6
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 20:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643486222;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RUdHWaP5++w5I6EAN0HjL4v70naOsUbJKdOIni1PJuI=;
	b=Ma7rznJkW7Xod0xtbdOjUO7gxgwaOm/AFpYZVTPdVoxtidOAg+hqVsfvyc779HyL5NCp/E
	Uv0GJu7+csl+0b6yLXZTWvE5NrgLBMOgQKri4HRhjWwId38og8sk1Oesa9ttcdW3jXeaLS
	AgPMjxUKbg6R3lc+2l1nG8ShDebuH8E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-408--BZsXQ5bNYOq9RGHsbIdGw-1; Sat, 29 Jan 2022 14:56:58 -0500
X-MC-Unique: -BZsXQ5bNYOq9RGHsbIdGw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C1421006AA5;
	Sat, 29 Jan 2022 19:56:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 879C9196AE;
	Sat, 29 Jan 2022 19:56:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B7D211809C88;
	Sat, 29 Jan 2022 19:56:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20TJulQ7003813 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 14:56:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1B3A353D0; Sat, 29 Jan 2022 19:56:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 167AF740A
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 19:56:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0907128FBBC1
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 19:56:44 +0000 (UTC)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
	[209.85.221.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-661-xDHkCE3-OFCIw_i3mF7dIw-1; Sat, 29 Jan 2022 14:56:41 -0500
X-MC-Unique: xDHkCE3-OFCIw_i3mF7dIw-1
Received: by mail-vk1-f179.google.com with SMTP id j185so5941818vkc.1
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 11:56:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=8rVYfZwDzNvD/L6p3eWDrlx5GgMnpjuSdYvBjmlGS58=;
	b=OD45RjCA43rmgz6+eAVUwj81DqTVAe94DVyq1TB1LaCBjjMwNQJtSMVqDKGshsJfJl
	It1fSGXG584HzoU5b/iwQ92KMBaL9eL88s4KyHEUABbYolTb7/Or+dV/oyqy9DfVbC0f
	MYxiRjiokepbrvRitZZIq69Lbqmw/koT31XrVM9Qbcj4sDz2NHCqTTCyOU5+Oj1BIO0K
	JNrCxVGjDO1blAY4KeNXhrzCo8o3kU6QlFktvP2koPPM2UdnRsB3buLBntth1B/NjQzK
	JwYO2HKS8KnaCvxmZIcsxSwj5V/wRKfa7qekMfUwxvX+3rlPIqw1sbSqycuf+79X/CHM
	aOqg==
X-Gm-Message-State: AOAM532vTnG192bj4y9Yj5L4Y2ahu9J/J6pA7jqgjKVu8683+2qKEGxp
	khRxUdLktI4SAi4eHAUGXN9kFOX8nCs=
X-Google-Smtp-Source: ABdhPJzX7xrXoPmBaL7H/0/Boia9F2GO8mYEgpFDpqpXb8czA3nEgHzm+6SQ9GzzHaSOA4qQV1mlIQ==
X-Received: by 2002:a05:6122:a0a:: with SMTP id
	10mr6138806vkn.17.1643486201118; 
	Sat, 29 Jan 2022 11:56:41 -0800 (PST)
Received: from smtpclient.apple (108-188-213-077.biz.spectrum.com.
	[108.188.213.77]) by smtp.gmail.com with ESMTPSA id
	k20sm2249027vsg.14.2022.01.29.11.56.40 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 29 Jan 2022 11:56:40 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: accessible ssh for ipad?
Date: Sat, 29 Jan 2022 14:56:39 -0500
Message-Id: <45E98CDA-E043-4C61-AB51-50E61554B6E1@gmail.com>
References: <40EEBBB3-C9E6-419E-AEDE-63429EC0D85B@gmail.com>
In-Reply-To: <40EEBBB3-C9E6-419E-AEDE-63429EC0D85B@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20TJulQ7003813
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

eW91IGNvdWxkIGluc3RhbGwgaVNIIHdoaWNoIGlzIGEgTGludXggZW11bGF0b3IgZm9yIGlQaG9u
ZXMgYW5kIGlQYWRzLiB0aGVuIHlvdSBjb3VsZCB1c2UgdGhlIHBhY2thZ2UgbWFuYWdlciB0byBp
bnN0YWxsIFNTSC4gSVNIIHVzZXMgYWxwaW5lIExpbnV4IGZvciB0aGUgZGlzdHJpYnV0aW9uLiBp
dOKAmXMgbm90IG15IGZhdm9yaXRlIHdheSBvZiB1c2luZyBTU0gsIGJ1dCBpdCB3b3JrcyB3aXRo
IHZvaWNlb3Zlci4KClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gSmFuIDI5LCAyMDIyLCBhdCAx
MjoxMSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RA
cmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4g77u/RG9lcyBhbnlib2R5IGhhdmUgb25lPyB0aGFua3Mu
Cj4gLS1CcmlhbyBUZXcKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

