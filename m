Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CB88D49D456
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 22:13:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643231604;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=t92XU1eUyINtWsQN6tGeZ+SsueZjIKypzaQOn6FcdNQ=;
	b=fD6Sw8SYGlmB1nLLA/w1M7gTqT++fQnBDZyJaEQAIM0EuvmcC7vrxKoKfFGpgcssW1a3dA
	n3d1r8pVtbXfJ1+wWP+sXZPmB6B1Z+4zqFiRFviuGWQjRZG6zqSHgaYLNmO9Xny2IUEgjf
	LZGbL0Gg92GbGTsvGP2sEpNQsLXZdqw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-451-ScdksSnXNoC02Cz6kWGb0Q-1; Wed, 26 Jan 2022 16:13:21 -0500
X-MC-Unique: ScdksSnXNoC02Cz6kWGb0Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A62883DD20;
	Wed, 26 Jan 2022 21:13:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AAB34E2A8;
	Wed, 26 Jan 2022 21:13:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0FCF51806D2C;
	Wed, 26 Jan 2022 21:13:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QLDBfO026241 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 16:13:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A7AF353B5; Wed, 26 Jan 2022 21:13:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A292476EB
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:13:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6D4008011A5
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:13:08 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-534-zoxRxUGaMGCaiuwgzDf6dw-1; Wed, 26 Jan 2022 16:13:05 -0500
X-MC-Unique: zoxRxUGaMGCaiuwgzDf6dw-1
Received: by mail-qv1-f42.google.com with SMTP id g13so1033680qvw.4
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 13:13:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to;
	bh=Y5yjvlFpspb0ncOv+bNWBXRqqmRL3FGEIRH1kFlF5B0=;
	b=n2YFmnrKrVcU42pN4Uq0TnEAO+oYftC6G4J2r7at8QyAmrEmL7AcgwYAFKxpEgY24H
	Ze8Ky2PbN9QDtkN+bBImy+q8hNQ7/MuqTA+WDg41hMygOmaMJb0UF5DMWCia5UwJjHFt
	+35c38FpWIHSO5tiGsr952dE7/SeaZ7ZqQsZHDq5gwG6lwWv7bb2RMoMdmLzWiVEuonY
	6MLvmHsPWAwY8FsKshHbwre6BNecUgZKOOAgWaobSHcxmyH6IngMKrz50Y/rHpild6lS
	a0E0txtX0BtWWTHI4K8ZjGAkEMOhUK6oPYH3FgSnUW6XcXd1bg/m7j00CqZX4Y/El0vi
	YNaQ==
X-Gm-Message-State: AOAM531wlLwTTwNU2bWZjoogOnFGtYqEuZvfdXDx2DIdexCQavMhg/LO
	aOAT6eVRhQqcfYOy7g2z44yjGDXZ/KWJ9w==
X-Google-Smtp-Source: ABdhPJxAUhDOZ3HiHWI9RAs3qX4ZqrrjhhTWnmWKPwEvIdMeYBDZ4HtD2KFsKHAyoDnLuferIYunWw==
X-Received: by 2002:a05:6214:2a89:: with SMTP id
	jr9mr309138qvb.131.1643231585132; 
	Wed, 26 Jan 2022 13:13:05 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id r1sm214796qtt.92.2022.01.26.13.13.04
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 26 Jan 2022 13:13:04 -0800 (PST)
Message-ID: <c3765e43-61b4-181e-feaf-ea871761cd8b@gmail.com>
Date: Wed, 26 Jan 2022 16:13:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Converting text to mp3
To: blinux-list@redhat.com
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
In-Reply-To: <d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Z3R0cy1jbGkgY2FuIHNwZWFrIEN6ZWNoLiBUaGUgY29tbWFuZCBJIGdhdmUgZm9yIHRoYXQgc2hv
dWxkIGxvb2sgCnNvbWV0aGluZyBsaWtlCgpndHRzLWNsaSAtbCBjcyAiVG90byBqZSB0ZXN0IHN5
c3TDqW11LiIgfCBwbGF5IC1xIC10IG1wMyAtCgoKVGhlIGVzcGVhay1uZyBjb21tYW5kIEkgbGlz
dGVkIGNhbiBhbHNvIHNwZWFrIEN6ZWNoLCBzbyB5b3UgY2FuIGp1c3QgYWRkIAotdiBjcyB0byB0
aGUgZXNwZWFrLW5nIGNvbW1hbmQgbGluZSB0byBhbmQgb3B0aW9uYWxseSBhZGQgYSB2b2ljZSAK
dmFyaWFudCBhcyB3ZWxsLiBIb3BlIHRoaXMgaGVscHMuCgp+S3lsZQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

