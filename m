Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AAB4972E2
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 17:12:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642954325;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=743t6uBjxGlvJcDIHUCvwlVV+halHvyca5MYt+B1/1w=;
	b=K9ZXJ541AF2P9aRWlPA3wNOljZhmnz2W3iNw9lxck2lJhq4k/okGTUsd1Z11kBPGejXK44
	Up9nQ0V6pZtV2eu51vvQyzWT++dajvAlxVpEJP0kA0PCPPbgtuKHsUGUErAWMNSF/75+TT
	yALPIbIdGlJJg7tZsMDFWVIPQn88zAk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-245-PT53QNh9PBiv4JeQvmmkHA-1; Sun, 23 Jan 2022 11:12:02 -0500
X-MC-Unique: PT53QNh9PBiv4JeQvmmkHA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BE38100C661;
	Sun, 23 Jan 2022 16:11:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2EE6D84A36;
	Sun, 23 Jan 2022 16:11:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EE7EF4BB7C;
	Sun, 23 Jan 2022 16:11:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NGBpOo013670 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 11:11:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 774A9C0809F; Sun, 23 Jan 2022 16:11:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7338EC0809C
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 16:11:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 590D738030B8
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 16:11:51 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
	[209.85.218.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-641-OaxHarPOMh287EMuKrLzjg-1; Sun, 23 Jan 2022 11:11:49 -0500
X-MC-Unique: OaxHarPOMh287EMuKrLzjg-1
Received: by mail-ej1-f51.google.com with SMTP id s5so14635345ejx.2
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 08:11:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ekmUC5VHAI6zzBB6JtYUylOazMPA++v6npfuUTaIC2U=;
	b=GYAhLkSBwYn0iTjpvpsfKYSElBrUWHIvicLN+NeXW27nCYtndX+GRtJ3lH/kcvSUMI
	yrwWaPTnQExC+ApWoEmbaiDX9VMUWn96JH3g+quAMMleYIb9cJ5iKIFkkzeiqBc4qLdR
	t0rPfZ6ngoAXkRYWod0rFB5Fpq0VYrIuMeRTLnhRxkeQ03dZm01g4uBBIpD0ktcNNVbn
	gDoMY9fgpRTtYWAov0cSpHPwX9ajUOKPTGuE4i3nRqXeEqmGaP68S+VWnXn6IichIP4d
	fzp2fyVD4e/azZTjSlLf2ZtUxlNs/a6GevNmXjlXxuq4pXb4tc5x8WbyCW5AtIzcQmpL
	rN/A==
X-Gm-Message-State: AOAM5326zjmXO9Ymvr6oZ5gApuCewX7Lz4f53B7sPKf4JSfN2ZtHXO6C
	yg4Z2mSCEO4ej0kjpZN5XUSxo6qirnw=
X-Google-Smtp-Source: ABdhPJyxlc5abAXEyN5z1YytmAx0BkJ5aBm71duEn24v/3uBNv5dXOZMTlAoULHxcEGU7ELHgvZvBA==
X-Received: by 2002:a17:906:13d8:: with SMTP id
	g24mr2784221ejc.608.1642954307783; 
	Sun, 23 Jan 2022 08:11:47 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.176.134])
	by smtp.gmail.com with ESMTPSA id
	ce21sm2658187ejb.7.2022.01.23.08.11.46 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 23 Jan 2022 08:11:47 -0800 (PST)
Subject: Re: Configuring ratpoison
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
	<64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
Message-ID: <d56b0684-ec03-ee08-855f-c41ebd979963@gmail.com>
Date: Sun, 23 Jan 2022 18:11:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGhpcy4KCgpJJ2xsIGhhdmUgYSBwbGF5IHdpdGggaXQg
YW5kIHNlZSB3aGF0IGl0J3MgYWxsIGFib3V0LgoKCldhcm0gcmVnYXJkcywKCkJyYW5kdCBTdGVl
bmthbXAKClNlbnQgZnJvbSB0aGUgU2xpbnQgbWFjaGluZSB1c2luZyBUaHVuZGVyYmlyZAoKT24g
MjAyMi8wMS8yMyAxNzozMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPiBIaSBCcmFuZHQsCj4KPiBJIGZvcndhcmRlZCB5b3VyIHF1ZXN0aW9uIHRvIG15IGZyaWVu
ZCBTdG9ybSBEcmFnb24gb24gSVJDIGFuZCBoZXJlIGhpcyBoaXMgYW5zd2VyOgo+ICgxNjoyNDoy
MCkgc3Rvcm06IERpZGllclNwYWllcjogaHR0cHM6Ly9naXQuMm1iLmNvZGVzL35zdG9ybWRyYWdv
bjI5NzYvc3RyeWNobmluZQo+ICgxNjoyNTowOSkgc3Rvcm06IFRoYXQncyBteSBzY3JpcHQgdGhh
dCBjcmVhdGVzIGEgLnJhdHBvaXNvbnJjLiBJdCdzIHdoYXQgSSB1c2UKPiBldmVyeSBkYXkgZm9y
IG15IFggc2Vzc2lvbi4KPgo+IENoZWVycywKPiBEaWRpZXIKPiAtLQo+IERpZGllciBTcGFpZXIK
PiBTbGludCBtYWludGFpbmVyCj4KPiBMZSAyMy8wMS8yMDIyIMOgIDE0OjQwLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIGFsbC4KPj4KPj4KPj4g
SSBpbnN0YWxsZWQgcmF0cG9pc29uIG9uIG15IFNsaW50IHN5c3RlbSwgYW5kIGRvbid0IGhhdmUg
ZWl0aGVyIH4vLnJhdHBvaXNvbnJjCj4+IG9yIC9ldGMvcmF0cG9pc29uLgo+Pgo+Pgo+PiBXaGVy
ZSBjYW4gSSBnZXQgYSBnb29kIHJhdHBvaXNvbiBjb25maWcgZmlsZT8gRG9lcyBvbmUgb2YgdGhl
IE9yY2EgdXNlcnMsIEknZAo+PiBhc3N1bWUgdGhhdCB3b3VsZCBiZSBtb3N0IG9mIHVzLCBoYXZl
IG9uZSBvbiBnaXRodWIgb3Igc29tZXdhcmU/Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

