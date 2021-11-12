Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7198544E7F0
	for <lists+blinux-list@lfdr.de>; Fri, 12 Nov 2021 14:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636725187;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Vi6zS2cMg7f92EQ09aRWv1H2L/tqbHxTMtRu2zGClNE=;
	b=gbayfwerVqtzeMUafrswJntQ8sBGhomnhyw6xKsErjE96EouKN0bDFN/kLFPKEB4ZL37hR
	guWD1/TO8Jw+fDGJzdnFanok2qYJkgVBs9adsuY+pboxfOWEJYVyVGX5YXLl6onUVVy5+Z
	KslGesRcuMM1LplbXDrp8FM37tNOnXM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-554-7_w9-SbdOU6xEnMNyM1mmA-1; Fri, 12 Nov 2021 08:53:04 -0500
X-MC-Unique: 7_w9-SbdOU6xEnMNyM1mmA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3811F1023F4E;
	Fri, 12 Nov 2021 13:52:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A1225D9DC;
	Fri, 12 Nov 2021 13:52:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1022057DC2;
	Fri, 12 Nov 2021 13:52:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ACDqjpZ004606 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 12 Nov 2021 08:52:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4B36A40CFD10; Fri, 12 Nov 2021 13:52:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4691C40CFD0E
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 13:52:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2528818162C0
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 13:52:45 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-399-2JJgdEXmP72w3eqIOwMQEg-1; Fri, 12 Nov 2021 08:52:43 -0500
X-MC-Unique: 2JJgdEXmP72w3eqIOwMQEg-1
Received: by mail-qk1-f181.google.com with SMTP id bi29so9098799qkb.5
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 05:52:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=uWRylYiSZ+shxH/Jgro7AdhsXfCZatHS7yic1Dq3xiM=;
	b=U7RHch6AoL1COfXyGufAuCgr9QdYtW1uc5UbJpJ7ZMh1MwpKHusoK6vNz8TSKIkKUK
	6VkFqCv9FrPNt2RFIyYXB2d3I/sYjgBOR5Fg9/xZUIbSGsyMZVameVQSFdDlar+4O8XL
	WTALUR8V1W6Usw7xwIuo2c4gMIy1grHr0f9MeWaN/TvZRL86tlqCCGrrEekHR/pLldB7
	i0bfM67YezYn96bpNaeB1KDpaIU00dpsrjVD68IswjGEInE5w1WHiLRhwScEyiKz8Sob
	OBaSSfvf+qMA+luJSFX5Kd0gJQDrnci/O+yozSTMGUhFYi6u3TanfZGncmXY4/2nRDuV
	HC6g==
X-Gm-Message-State: AOAM532p8MBut6TtMxmRdxD1yn7K16zrr+IeSGpEmWcd7dGhXz56ZpLr
	IvSNQPMUwQ1cHS8T+EV9pxC0GmUmfPjtZg==
X-Google-Smtp-Source: ABdhPJy3ZQF3AEiJZ9QhlO1rL0p5TsQyTfzv9nRwvGDGafw8YH2ccLbsQCL92Fq4+t8g37b8kIP/OQ==
X-Received: by 2002:a05:620a:430b:: with SMTP id
	u11mr12878476qko.473.1636725162845; 
	Fri, 12 Nov 2021 05:52:42 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id y6sm2658476qkm.62.2021.11.12.05.52.41
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 12 Nov 2021 05:52:42 -0800 (PST)
Subject: Re: How do you format a disk using slint?
To: blinux-list@redhat.com
References: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
	<45dfbbc5-04c2-9f49-a595-581537acbafe@gmail.com>
	<8ce70d89-dc7d-f8e9-6b8a-44d48d4ace4c@gmail.com>
	<6c63560f-ca92-f096-5252-9813d408f584@gmail.com>
	<3fe73ae9-6b66-c400-6067-70afc6cad92a@gmail.com>
	<ffd7ceb4-2c64-473f-43bd-d1566899bfc4@gmail.com>
	<f75f32a0-0955-fceb-7dbe-f06e6eda71ca@gmail.com>
	<00a08b15-ae80-e669-06bc-a7a62104fddf@slint.fr>
Message-ID: <872a1a37-9ab5-432e-9720-5cbd0d702692@gmail.com>
Date: Fri, 12 Nov 2021 08:52:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <00a08b15-ae80-e669-06bc-a7a62104fddf@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIERpZGllciwKCkkgZm91bmQgdGhlIHNob3J0Y3V0IGZvciB0aGUgZGlza3MgdXRpbGl0
eSB1bmRlciBhY2Nlc3Nhcmllcy4gSXQgaXMgCmdyZWF0LiBJIGFtIG5vdCBnb29kIGluIHJlbWVt
YmVyaW5nIGxpbmUgY29tbWFuZHMgYW5kIHRoYXQgaXMgd2h5IEkgCnByZWZlciB0aGUgR1VJIGVu
dmlyb25tZW50IHdoZW4gcG9zc2libGUuIEkgd2lsbCBwbGF5IHdpdGggdGhpcyAKYXBwbGljYXRp
b24gYW5kIGZpZ3VyZSBvdXQgaG93IGl0IHdvcmtzLgoKCkNoZWVycywKCklicmFoaW0KCk9uIDEx
LzEyLzIxIDQ6MzIgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gSGkgSWJyYWhpbSwKPgo+IEkganVzdCBjaGVja2VkLCBpbnN0YWxsaW5nIHRoaXMgcGFja2Fn
ZSBjcmVhdGVzIGEgbWVudSBlbnRyeSBjYWxsZWQgCj4gRGlza3MgaW4gdGhlIHN1Yi1tZW51IFV0
aWxpdHkgKEFjY2Vzc29pcmVzIGluIEZyZW5jaCkKPgo+IEFzIHVzdWFsLCBiZSAqdmVyeSogY2Fy
ZWZ1bCB3aXRoIHN1Y2ggYXBwbGljYXRpb24uLi4KPgo+IENoZWVycwo+IERpZGllcgo+Cj4gTGUg
MTIvMTEvMjAyMSDDoCAwNTozNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBh
IMOpY3JpdMKgOgo+PiBUaGFua3MgYSBtaWxsaW9uIERhdmUsCj4+Cj4+IG5vdyBldmVyeXRoaW5n
IHdvcmtzIGZpbmUuIFlvdSBhcmUgdHJ1bHkgb2YgZ3JlYXQgaGVscC7CoCBUaGFua3MgZm9yIAo+
PiB5b3VyIHBhdGllbmNlLgo+Pgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IElicmFoaW0KPj4KPj4gT24g
MTEvMTEvMjEgMTA6NTEgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+PiBzbGFwdC1zcmMgLS1pbnN0YWxsIGdub21lLWRpc2stdXRpbGl0eS4KPj4+Cj4+Pgo+
Pj4KPj4+IE9uIDExLzExLzIxIDIyOjMxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+Pj4+IHNsYXB0LXNyYyBnbm9tZS1kaXNrLXV0aWxpdHkKPgo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

