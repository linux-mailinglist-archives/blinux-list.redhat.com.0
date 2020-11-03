Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 271572A50A0
	for <lists+blinux-list@lfdr.de>; Tue,  3 Nov 2020 21:03:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604433791;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hkQuLZQ14SKZRFfWI73k+ruvB+Jp6cMfZjAdCePjkms=;
	b=PcEB6FchyOPFAPkz1Z0IVxPVAyXEuFgG6l+V3gdEn2AG/UzVfirDGbca4rLHgBkP5WvZqv
	eyCwvG5If95D4iezuGy7/UbC95NiLA7L9v4m0f8ZsSNPkwwwwpVi5kjNFRJDhI0h8KPMeW
	ks9UZuI8tTK6P5WQaDyZH90jFNMhYIo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-23UJg4KUOj-9G5EFHODY2g-1; Tue, 03 Nov 2020 15:03:09 -0500
X-MC-Unique: 23UJg4KUOj-9G5EFHODY2g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BA2D6D243;
	Tue,  3 Nov 2020 20:03:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F32265C22E;
	Tue,  3 Nov 2020 20:03:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 48BE51800BB2;
	Tue,  3 Nov 2020 20:03:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A3K306F007565 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 15:03:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 728DF946BD; Tue,  3 Nov 2020 20:03:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CEB0951D8
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 20:02:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 540C390E429
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 20:02:57 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
	[209.85.218.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-557-GVjvWCRKMhCP8VP6V65KyA-1; Tue, 03 Nov 2020 15:02:55 -0500
X-MC-Unique: GVjvWCRKMhCP8VP6V65KyA-1
Received: by mail-ej1-f44.google.com with SMTP id o21so19075987ejb.3
	for <blinux-list@redhat.com>; Tue, 03 Nov 2020 12:02:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=l3nHlR8zw023FDvZrZG62wiCw+AEWgZI9rxIY6E/3bU=;
	b=A+zqLOMz3DDH/JGCofedFUmFNYHBq8QKVQ94xR0BRbwLKYS7y5AIt9+sKs41alCxqO
	o7BX5khbfLMhmLvtfcXDdchSTtCmHDMQ+UGzjl9yVMwq8DUJ7EJHCx4McXMnUBbvH9HX
	kZ3onHA+OpmjZMQiU5qvcntILeAfGUuhMYXzc1bfvhEu31DE13rroNfaPjZQmx66f0ba
	6t7YZ+AEqKF/P1611IThu5VlKawJUANx6mzaxQAenwkSZTTOmDaF+OXIWGgaSEnOdGAR
	SlIpwI+nNHAk1VPcjBY4r6nAD65TJYpDKxVSxcyjc3Wfvj5VG6yEweVs0GKoi/al2Ews
	GSig==
X-Gm-Message-State: AOAM532WrDiiz234D0U59NJMaG/kBnWszn6sesn1zqMOox7t+Zuc8XZj
	VtCUmOV4Xdz0td4RESRe249HoANxMOpeorQB
X-Google-Smtp-Source: ABdhPJzf4dqwBx/Dpce522yGyw2M7weFk3utpMFBDUP2zEAQ6IyvttQBsx99dLofepoBmALktchcSg==
X-Received: by 2002:a17:906:4c57:: with SMTP id
	d23mr20843942ejw.321.1604433773528; 
	Tue, 03 Nov 2020 12:02:53 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	q12sm1491663ejc.12.2020.11.03.12.02.52 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 03 Nov 2020 12:02:53 -0800 (PST)
Subject: Re: arch linux and broadcom
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
Message-ID: <cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
Date: Tue, 3 Nov 2020 23:02:51 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

aGVsbG8gY2FuIHlvdSBwcm92aWRlIGxzLXBjaSBvdXRwdXQuCmRpZCB5b3UgbG9vayBvbiB0aGUg
YXJjaHdpa2k/CgowMy4xMS4yMDIwIDIyOjUzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uINC/0LjRiNC10YI6Cj4gSSBnb3QgYXJjaCBvbiBhIHVzYiBzdGljay4KPiBBZnRlciBi
b290aW5nIGFuZCB1c2luZyBhcnJvdyBkb3duLCB0aGVuIGVudGVyLCBhcmNoIGNhbWUgdXAgdGFs
a2luZy4KPiBCdXQgZXZlbiB0aG91Z2ggdGhlcmUgaXMgYW4gZXRoZXJuZXQgY2FibGUsIEkgY2Fu
bm90IGdldCBvbiB0aGUgbmV0Lgo+IE5ldmVyIGlzIHRoaXMgYSBwcm9ibGVtIHdpdGggdWJ1bnR1
IG9yIHBvcCBvcyBvciB3aXRoIGZlZG9yYS4KPiBBbnlvbmUgYXdhcmUgb2YgYSB3YXkgb2YgZ2V0
dGluZyBvbiB0aGUgbmV0Pwo+IEkgYWxzbyBoYXZlIGEgdSBzIGIgd2lyZWxlc3Mgd2lmaSBhZGFw
dG9yLCBidXQgd2l0aCBhcmNoLCBub3Qgc3VyZSB3aGF0IHRvIGRvLgo+Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

