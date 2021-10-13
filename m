Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 39FB042B232
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 03:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634087976;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=REyD6QJwFvdep5eEp4Sbq4lrGxogRWEj25HWAbrx8JY=;
	b=iqoiciMddA1deEtdEalECZFoXO1XaYOslxeSE12vnkINh+tddp3fIxxfpKV5eYOBs+KZGl
	bNdnCozgRe3ecnYrYOw6jPDtMYTApsmX5RM/pcW2bSd5fxnhjNSbtIu+sYw1VT4funA/yL
	CRiXtRgecrVwnWTg/zoy3ix5QQeY2Jw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-Kboi970TMmCkkm3h1cs2HA-1; Tue, 12 Oct 2021 21:19:32 -0400
X-MC-Unique: Kboi970TMmCkkm3h1cs2HA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C01310A8E00;
	Wed, 13 Oct 2021 01:19:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBB6360C5F;
	Wed, 13 Oct 2021 01:19:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 42AC81803B30;
	Wed, 13 Oct 2021 01:19:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19D1JH5x006088 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 21:19:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F419C1110AA7; Wed, 13 Oct 2021 01:19:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F05F21110AA3
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 01:19:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2632A1066558
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 01:19:14 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-378-q-Nq1MfZM6anOSBy7-qRsA-1; Tue, 12 Oct 2021 21:19:12 -0400
X-MC-Unique: q-Nq1MfZM6anOSBy7-qRsA-1
Received: by mail-qk1-f175.google.com with SMTP id p4so825433qki.3
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 18:19:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=z30CYBpqcnWj35Wa8F+rfFw26wWygYDJ1hUmAfTbViA=;
	b=CmzG3HeKa0mv01xMfShEPZeyABof39WedqfgnUWgU69v/ow4FFnCN92RbEsDRWPuFk
	JTZzhV+oHNA3AD0NU1iObY1CH2N7BdvGHCh9TeMlnyAJGBT5NKNbXHMRNK7yNRjBr3YC
	nzMGZa/J9Uc2XAfNS5hBtorE3AvonAvs6nIbATylkFmXRw34M8MMyzNJ8fQrJXi8St7b
	2fvFIfL1Q4AThk1K2fjBkyK3jm9GrX8W5ngWF4NALboIkbawO9F/cr+GR0zE8FJw368e
	H7UkFoIq0WNdn0y68a6hZcBgpI1mfMlqzUPwUfpgfIUM1WwyeMxIkTyBEAuOX827cW58
	ps9g==
X-Gm-Message-State: AOAM530HoouGQ+LJB+EC5yFAsUHLcJzjL3+qDbBramvvisOhtUJTJ191
	LNuxt9wLDKMlLsr3LCSaZAMYLgNcoOoy8g==
X-Google-Smtp-Source: ABdhPJy94Dba4lA20MLKXt5AvQn1jzNTYck2GjIOdFPvLnFp0k/0A90IFVd7gCg2c3CtQmjoU7hL9A==
X-Received: by 2002:a37:a5d1:: with SMTP id o200mr15851451qke.30.1634087951414;
	Tue, 12 Oct 2021 18:19:11 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420:6cd0:b099:3825:80d4?
	([2601:192:4c80:1420:6cd0:b099:3825:80d4])
	by smtp.gmail.com with ESMTPSA id
	134sm6698160qkn.108.2021.10.12.18.19.10 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 12 Oct 2021 18:19:11 -0700 (PDT)
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: blinux-list@redhat.com
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
	<CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
	<B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
	<f8b8b6b0-9563-4816-3ce2-058e670df4ca@gmail.com>
	<31844D3C-400D-4A9E-8536-1DA523C6B15B@gmail.com>
Message-ID: <521ea6a5-39b7-a4a7-fbce-ce655435d464@gmail.com>
Date: Tue, 12 Oct 2021 21:19:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.13.0
MIME-Version: 1.0
In-Reply-To: <31844D3C-400D-4A9E-8536-1DA523C6B15B@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U291bmRzIGxpa2UgeW91J3ZlIGFscmVhZHkgZGVjaWRlZCBvbiBTbGludDsgSSB3YXMgYWZyYWlk
IHRvIG1lbnRpb24gaXQ7CmRpZG4ndCBrbm93IHlvdXIgY29tcHV0ZXIgc2tpbGxzIGxldmVsLsKg
IEkgbWF5IHB1dCBTbGludCBiYWNrIG9udG8gb25lCm9mIHRoZXNlIG1hY2hpbmVzOyBpdCB3b3Jr
cyB2ZXJ5IHdlbGwuwqAgU291bmRzIGxpa2UgYW55dGhpbmcgYmFzZWQgb24gYW4KTFRTIHZlcnNp
b24gb2YgVWJ1bnR1IHdvbid0IHNlcnZlIHlvdSB3ZWxsLCBzaW5jZSB5b3UgbmVlZCB0aGUgbmV3
ZXN0CmJybHR0eS7CoCBTaW5jZSBJIGRvbid0IGhhdmUgYnJhaWxsZSBkaXNwbGF5LCBJIGNhbiBn
ZXQgYXdheSB3aXRoIHJ1bm5pbmcKc29tZXRoaW5nIGEgbGl0dGxlIG9sZCBhbmQgc3RhYmxlLgoK
CgpIVEgsCgoKCkRhdmUKCgoKClNlbnQgZnJvbSBteSBUaGluayBQZW5ndWluIEo0IGxhcHRvcCwg
cnVubmluZyBUcmlzcXVlbCBHTlUvTGludXgsIHZlcnNpb24gOS4KCk9uIDEwLzEyLzIxIDk6MTEg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSSBoYXZlIHRy
aWVkIHJ1bm5pbmcgTGludXggTWludCwgTWF0ZSBhZGRpdGlvbiwgYnV0IHRoZXJlIGFyZSB0aGlu
Z3MgdGhhdCBqdXN0IGRvZXNuJ3Qgd29yayBjb3JyZWN0bHksCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

