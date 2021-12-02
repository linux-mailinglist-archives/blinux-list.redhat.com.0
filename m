Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B7893465B6E
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 01:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638406356;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0tw3rjhIfZGCX+mOhZdWjHJVR+SWkWq1N+tDYotFuxM=;
	b=TYbXSxQjuqxEDUUB+QdiHjLzaI73E1UJ5ogxv8AfVuJUqb356bA4LESyW15CMxrf9kEkQR
	HFXfS3fv+uqAgIfUg+u1EkyXDS1sBmROasToPiBY9QO5L9c6lmShhlUXi/P5pq9McNQgUV
	drkfDv9hICxIv1GrYnoU+YG9Tm5M6dQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-231-qUCvdBipPtyCc9uwljB5xw-1; Wed, 01 Dec 2021 19:52:35 -0500
X-MC-Unique: qUCvdBipPtyCc9uwljB5xw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3521881CCB5;
	Thu,  2 Dec 2021 00:52:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01F5A79453;
	Thu,  2 Dec 2021 00:52:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 73C741809C89;
	Thu,  2 Dec 2021 00:52:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B20qMcd024043 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Dec 2021 19:52:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1120451DC; Thu,  2 Dec 2021 00:52:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 099F951DD
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 00:52:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D6BE85A5A8
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 00:52:19 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-195-tMMlcnJwOOWK8Qurjv17IQ-1; Wed, 01 Dec 2021 19:52:17 -0500
X-MC-Unique: tMMlcnJwOOWK8Qurjv17IQ-1
Received: by mail-qt1-f171.google.com with SMTP id o17so25983354qtk.1
	for <blinux-list@redhat.com>; Wed, 01 Dec 2021 16:52:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=bFfHERyKXkeRVJ3uXae5yhTJvr42jg8wYccNZAF8rRs=;
	b=S+BZaRhc5ndkQDMGK05//zqJfakP7xSlVTv4P/JrJUHAI/v2/Ux6bUcZQL1Upp93jG
	oJu3GzuJcAVoIUTs1DWCPxmzyReLbZkLxfZDKIkTegG0Sivm2NTQIS2kYcLGl8Ghhvni
	0skPP1sN9N00f72KxEk9pSB7hPVIRbXBf+0k9io3lM7XOafzDlyHoM7rkrlSys4LGaxq
	AoWsWv4h/o8veOT7t20MdJiS38jfpnMlWpv5DAROAxP7a8gyq1LfRBiuunsMB5pQ1pA6
	OhN9msIFOWwZq3wu0xoypDaCZnlj/Az36S/Iy+pvtz0ctakYpfaqfqo9+VnbDyDQKoGh
	jhKA==
X-Gm-Message-State: AOAM531UKuG2jG5e1wS6dItU7Rn0sXIrSt25XavqMeWFoicNhJB2Cby8
	RJ3w7EiKZud3qnANu0jhiHoddIqyZOwNzg==
X-Google-Smtp-Source: ABdhPJxrXiJUsYpmbxx48R2o27PplMcwJVVkeIhrfX+nyGu9fN2rDRtv8DjiSRIY/UNO7nJCpYTqlg==
X-Received: by 2002:a05:622a:188a:: with SMTP id
	v10mr10831548qtc.297.1638406336994; 
	Wed, 01 Dec 2021 16:52:16 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:359d:3ff1:97f1:84a?
	([2601:192:4c80:1420:359d:3ff1:97f1:84a])
	by smtp.gmail.com with ESMTPSA id a15sm793179qtb.5.2021.12.01.16.52.16
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 01 Dec 2021 16:52:16 -0800 (PST)
Subject: Re: New packages available for Slint: flatpak and pipe-viewer
To: blinux-list@redhat.com
References: <4d45f962-8735-59f4-695e-81e786b33a1e@slint.fr>
	<ad22b7a0-fddf-7a44-6f83-58d382ff2e51@slint.fr>
	<3fb18e63-60f5-8a00-14c6-e52342cd3e00@gmail.com>
Message-ID: <8e83d7ef-ec5c-af65-1323-6177094e3cb7@gmail.com>
Date: Wed, 1 Dec 2021 19:52:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.14.0
MIME-Version: 1.0
In-Reply-To: <3fb18e63-60f5-8a00-14c6-e52342cd3e00@gmail.com>
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TXkgd2ViIHNlYXJjaGluZyBzaG93ZWQgbWUgdHdvIHByb2dyYW1zIHdpdGggdGhlIHNhbWUgbmFt
ZSwgZXhjZXB0IGZvcgpjYXNlLsKgIFRoZSBvbmUgaW4gYWxsIGxvd2VyLWNhc2UgaXMgYSBwcm9n
cmVzcyBtZXRlciBhbmQgc3BlZWQgdGVzdCBmb3IKcnVubmluZyBjb21tYW5kcy7CoCB0aGUgb25l
IHdpdGggdGhlICdwJyBhbmQgJ3YnIGluIHVwcGVyIGNhc2UgbXVzdCBiZQp0aGUgb25lIHknYWxs
IGFyZSB0YWxraW5nIGFib3V0P8KgCgoKCi1EYXZlwqAgSC4KCgoKCgpPbiAxMi8xLzIxIDc6Mzkg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gVGhhbmtzIERp
ZGllci4gSSBsaWtlIHRoZSBHVUkgb2YgUGlwZS1WaWV3ZXIuIEkgbGlrZSB0aGUgZmFjdCB0aGF0
IHlvdQo+IGNhbiBwbGF5IGF1ZGlvIGFuZCB2aWRlbyB3aXRob3V0IHRoZSBhbm5veWluZyB5b3V0
dWJlIGFkcy4gSSB3aWxsIGJlCj4gdXNpbmcgaXQgYSBsb3QgZnJvbSBubwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

