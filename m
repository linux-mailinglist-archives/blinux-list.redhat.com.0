Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEB849450A
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 01:46:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642639615;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6ukF27jupYYQb7IzE+2PF3t/dTdQsHwdgUgj8kIJ+FM=;
	b=hcdwpIGKVZ99sHT1H0lBN6M8KspmSa0eXhDUTv14f3gRRPBLv/E23i9m1CqZxRNJNp1L3l
	RVpD6cyy6Bi9aNz3/ZMr4phJAApTbLcNXGwsRpUHKIZpfdqRALsgL1nexs36+e0EZtsAiP
	hx4R79sTEqtr4FqD1/8dsE5mEUqqLqg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-56-IpgGZiOsNACOo_dpzi552g-1; Wed, 19 Jan 2022 19:46:51 -0500
X-MC-Unique: IpgGZiOsNACOo_dpzi552g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A53BB1083F65;
	Thu, 20 Jan 2022 00:46:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5593C5F92C;
	Thu, 20 Jan 2022 00:46:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7923D18095C9;
	Thu, 20 Jan 2022 00:46:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20K0iq5b013294 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 19:44:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3D673401E7C; Thu, 20 Jan 2022 00:44:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39CAC401DB1
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 00:44:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1FB5938006B1
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 00:44:52 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-441-zckKQ1-tP0GPzuq0qsUwag-1; Wed, 19 Jan 2022 19:44:50 -0500
X-MC-Unique: zckKQ1-tP0GPzuq0qsUwag-1
Received: by mail-ot1-f48.google.com with SMTP id
	x31-20020a056830245f00b00599111c8b20so5557992otr.7
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 16:44:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=W/YCgxh3x972rW1X+KYcBP3f2hlLjtd4vorHJtIjvBI=;
	b=yoKhD3uxrWIcYRx66gJjNa2iJzEltHngEIubQJERVkXsrv+y8NAPZQub0rN57GqKo5
	PROobhoGnvsteARZZBdDton/BcMG3S7ywqDjlXaLP4nCvid4g+02KoDNyH/ne0zVmCO4
	8MycDPI5J4djcBfUl0JwD/6Sh7X9fUGzhOcnKbrVkPNz5c21WALiDbNaQcHuhKu6+qUY
	NgGih+66On7gN74VCVEaIGMFMWnlolYk4JmqhWdC4VXkv6OIeQQ5JxOW/VJcBqKii5Nr
	Reb4e4aGtF9Eme71FnjULamly4pUxV87TYQQD2EhAuI89iG3pIaEzOmTbe6wJepVZ9zI
	AOXw==
X-Gm-Message-State: AOAM533zydRHK6yn1PEB3ewP0OU4A6vW9aGPytptBlZkPAGKbhWNMr9P
	Tnt0PqVqPyF9WCZZne4LvzrIDzu8Go0=
X-Google-Smtp-Source: ABdhPJxViy2pYapnnhDEFVSmwJekEUiTkRakmft4awljArsjagdZ0dd0EA5YjZb7466vcWjlglsiwg==
X-Received: by 2002:a9d:6210:: with SMTP id g16mr7828800otj.371.1642639489366; 
	Wed, 19 Jan 2022 16:44:49 -0800 (PST)
Received: from ?IPv6:2600:1700:9434:2a00:6cbc:47f:76b5:b9c0?
	([2600:1700:9434:2a00:6cbc:47f:76b5:b9c0])
	by smtp.gmail.com with ESMTPSA id i7sm833666oig.15.2022.01.19.16.44.48
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 19 Jan 2022 16:44:48 -0800 (PST)
Subject: Re: Getting Ready For linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
	<6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
	<CAO2sX30mT2TyBAvR4h-5Gvi45L20d+TZ8NQ97N3Ed=0ku2J6JA@mail.gmail.com>
	<7fd76ae5-77b0-fdb1-83f4-62cf792cce90@gmail.com>
	<68475725-ba85-b23a-8e26-8693a73fac75@slint.fr>
	<CAM+Q2c4uqchNLEK8Y1a2Gcf_Uyw6+518je+w6G9PKh-wzwVe5g@mail.gmail.com>
Message-ID: <2420ea82-49a6-324d-006a-96d54f2e9f6b@gmail.com>
Date: Wed, 19 Jan 2022 18:44:47 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAM+Q2c4uqchNLEK8Y1a2Gcf_Uyw6+518je+w6G9PKh-wzwVe5g@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

SSdtIGdvbm5hIHVzZSBteSBBc3VzIGRlc2t0b3AgY29tcHV0ZXIgdG8gbWFrZSB0aGlzIGxpbnV4
IHN5c3RlbSBkaXNrLsKgIApEb2VzIGFueW9uZSBrbm93IGhvdyB0byBnZXQgaW50byB0aGUgQklP
UyBzZXR1cCBwcm9ncmFtIG9uIGFuIEFzdXMgTTMyQ0QgCmRlc2t0b3AgbWFjaGluZT/CoCBJdCdz
IG5vdCBvYnZpb3VzIHdhdGNoaW5nIHRoZSBzdGFydHVwIHNjcmVlbi4KClRoYW5rcy4KSG93YXJk
CgpPbiAxLzE5LzIwMjIgMTI6MDcgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4gWWVzLCBidXQgdGhlcmUgbWF5IG5lZWQgdG8gYmUgYSBzZXR0aW5nIGluIGJp
b3MgdG8gZW5hYmxlIGl0Lgo+Cj4gT24gMS8xOS8yMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+IEhpIEhvd2FyZCwK
Pj4KPj4gdGhlIFNsaW50IFVTQiBzdGljayBjb250YWlucyBhbGwgeW91IG5lZWQgdG8gaW5zdGFs
bCBTbGludCwgbm90IGFuIGFscmVhZHkKPj4gaW5zdGFsbGVkIHN5c3RlbS4KPj4KPj4gSW5zdHJ1
Y3Rpb25zIGhlcmU6ICBodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sI19zbGludF9p
bnN0YWxsYXRpb24KPj4KPj4gSSBzdWdnZXN0IHRoYXQgeW91IGNob29zZSB0aGUgQXV0byBpbnN0
YWxsYXRpb24gbW9kZSwgZWFzaWVyIGZvciBiZWdpbm5lcnMuCj4+Cj4+IENoZWVycywKPj4gRGlk
aWVyCj4+Cj4+IExlIDE5LzAxLzIwMjIgw6AgMTg6MjQsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+IFRoYW5rcyB0byBhbGwgd2hvIGhhdmUgbWFkZSBz
dWdnZXN0aW9ucy4KPj4+Cj4+PiBGaXJzdDogSSBkb3dubG9hZGVkIHVidW50dSBhbmQgZmxhc2hl
ZCBpdCB0byBhIFVTQiBzdGljay4KPj4+Cj4+PiBOZXh0OiBJIGdvdCBteSBtaW5kIGNoYW5nZWQg
KHByb2JhYmx5IGZvciB0aGUgbmJldHRlciksIHNvIEkgZG93bmxvYWRlZAo+Pj4gU2xpbmsKPj4+
IGFuZCBmbGFzaGVkIGl0IHRvIGFub3RoZXIgVVNCIHN0aWNrLgo+Pj4KPj4+IE5vdyBJIGhhdmUg
dHdvIFVTQiBzdGlja3MgdGhhdCBlYWNoIGNvbnRhaW4gYSB2ZXJzaW9uIG9mIGxpbnV4LiBBc3N1
bWluZwo+Pj4gSSdtCj4+PiBnb25uYSBnbyB3aXRoIFNsaW5udCwgZG8gSSBub3cgaGF2ZSBhIGJv
b3RhYmxlIHdvcmtpbmcgY29weSBvZiBTbGludD/CoCBPcgo+Pj4gaXMKPj4+IHRoZXJlIG1vcmUg
dG8gZG8gYmVmb3JlIEknbSBhY3R1YWxseSBydW5uaW5nIGxpbnV4Pwo+Pj4KPj4+IFRoYW5rcyBz
dGlsbCBtb3JlLgo+Pj4KPj4+IEhvd2FyZAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

