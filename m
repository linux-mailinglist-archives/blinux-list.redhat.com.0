Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B05563772A9
	for <lists+blinux-list@lfdr.de>; Sat,  8 May 2021 17:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620488071;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/g3mvaOpdfreXER7RWcbjLvDh5HOWMKWtsfjhtsk4JQ=;
	b=N3ZDgZo8ziCp/Jr5RoGrbUzHGMKGwJ+P7jimw2h9UrNBGEYD5NCqw9Ofv3Igwer3Y63Okv
	FfVV+XWD9KlXAFkst6sK7f2TyOzhCO+0CzX/b8chf+ossmBu/iVHfJw1Vyho88xXXVCubp
	yCzq6hWOmJ0hIfBC+wGsEflL5QOFWWo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-VnLiSYKEMg2j29t6JJJCYg-1; Sat, 08 May 2021 11:34:29 -0400
X-MC-Unique: VnLiSYKEMg2j29t6JJJCYg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CC82D10066E6;
	Sat,  8 May 2021 15:34:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A9CA05D6D5;
	Sat,  8 May 2021 15:34:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 81B9055351;
	Sat,  8 May 2021 15:34:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 148FYNed007631 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 8 May 2021 11:34:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0565C2157FD2; Sat,  8 May 2021 15:34:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0122E2157FCB
	for <blinux-list@redhat.com>; Sat,  8 May 2021 15:34:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0E2BA85828E
	for <blinux-list@redhat.com>; Sat,  8 May 2021 15:34:20 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-580-FuSDSVS9PfiajcNlDFf_OA-1; Sat, 08 May 2021 11:34:17 -0400
X-MC-Unique: FuSDSVS9PfiajcNlDFf_OA-1
Received: by mail-oi1-f174.google.com with SMTP id v24so11621389oiv.9
	for <blinux-list@redhat.com>; Sat, 08 May 2021 08:34:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=oiBDNSBxyl0B5uebeiDylnBAzAxGAiuRY0BWjaYyRGk=;
	b=ZzVZp0FKUgh7ajzyLDp6+cGOMkqAbKW3HaYjNyAhh+9Hqz3k7iDueiHV1lZRo43RuI
	8+CBaH9gKGoCe4fxLxaw2gKojtJF0NuoNZoIJF/5i20Y2tjolKQqC36+1t4Kar5H1WpI
	oFqHpRBt8eug+bLZeG8PbnfhakQ0ItOw7tCA3zDJM/XeMz0Ugp8wCBJHJRDG83DZBxzB
	s9ObIsztoRJ3IMN9M6sT6/67DsWEK95gci/NsiRyzNKxmMC37WXTmWVEsgfXqpkU2+SD
	P+c52Vvz/ZdN4DFRmuDBe/ONtRr9mBgqiWoFOXToBh7x91SPlFehg9t5pTwt6Erp5hEY
	MkSw==
X-Gm-Message-State: AOAM533YVh9BEnZCvnAZJR1QiQ4tfpJbs1CIEmqfC9zh495WWeKotJpC
	vUEVITvmCFS9bWtd0+locXGqSzUOcD1Pnqji
X-Google-Smtp-Source: ABdhPJwG5idHdmqvDmWiTxEyiUHMwiAk+M9kHWe2KTkx7mIjETvY1cOYmUx1ZnA9tUuHIN9w17og2A==
X-Received: by 2002:a05:6808:13c9:: with SMTP id
	d9mr478718oiw.142.1620488056608; 
	Sat, 08 May 2021 08:34:16 -0700 (PDT)
Received: from ?IPv6:2600:1702:20f0:4420:b9e9:826b:b5d9:b3f9?
	([2600:1702:20f0:4420:b9e9:826b:b5d9:b3f9])
	by smtp.gmail.com with ESMTPSA id 19sm42163oiy.11.2021.05.08.08.34.16
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 08 May 2021 08:34:16 -0700 (PDT)
Subject: Re: Fedora 34- Orca works on logon screen but not after signed in
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <BN6PR19MB1443FC8D1B3AC939EFC2B5A5A2569@BN6PR19MB1443.namprd19.prod.outlook.com>
Message-ID: <e99b0e10-70cd-d6cc-e99a-e7b3a4f00be7@gmail.com>
Date: Sat, 8 May 2021 11:34:15 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <BN6PR19MB1443FC8D1B3AC939EFC2B5A5A2569@BN6PR19MB1443.namprd19.prod.outlook.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWF0dGhldwoKCgpJbiB0aGUgcnVuIGJveCwgdHlwZSBtYXRlLXRlcm1pbmFsLsKgIE5vdyB0eXBl
IHN1ZG8gYWxzYW1peGVyIGFuZCBwcmVzcyAKZW50ZXIuwqAgWW91IHNob3VsZCBiZSBwcm9tcHRl
ZCBmb3IgeW91ciBwYXNzd29yZC7CoCBUeXBlIHRoaXMgaW4gYW5kIHlvdSAKc2hvdWxkIGJlIGlu
IHRoZSBtaXhlciBzZXR0aW5ncy7CoCBZb3UgY2FuIHByZXNzIHVwIGFuZCBkb3duIGFycm93cyAh
IApyYXplIHRoZSB2YWx1bWUgdG8geW91ciBsaWtpbmcuwqAgUml0ZSBhbmQgbGVmdCBhcnJvdyB3
aWxsIHN3aXRjaCBiZXR3ZWVuIAp0aGUgb3V0cHV0IHNvcmNlcy7CoCBZb3UgY2FuIHByZXNzIGN0
cmwgYyB0byBjbG9zZSB0aGlzLsKgIE5vdyB0byBzYXZlIAp0aGlzIHNldHRpbmcsIHR5cGUgc3Vk
byBhbHNhY3RsIHN0b3JlLiBUaGlzIHdpbGwgc3RvcmUgeW91ciBhdWRvIGxldmVsIApzZXR0aW5n
cy4KCgoKSGksCgoKCk9uIDUvNy8yMDIxIDExOjU0IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhlbGxvLiAgSSBqdXN0IGluc3RhbGxlZCBGZWRvcmEgMzQg
TWF0ZSBzcGVuIG9uIG15IGxhcHRvcC4gIEkgZ290IE9yY2Egc3RhcnRlZCBvbiB0aGUgbG9nb24g
c2NyZWVuIGJ5IHByZXNzaW5nIFdpbmRvd3MgQWx0IFMuICBJIHRoaW5rIHRoZSBXaW5kb3dzIGtl
eSBpcyBjYWxsZWQgc29tZXRoaW5nIGVsc2Ugb24gTGludXgsIGJ1dCBJIGRvbid0IHJlbWVtYmVy
IHdoYXQgaXQgaXMuICBJIHB1dCBteSBwYXNzd29yZCBpbiBmb3IgbXkgdXNlciBhY2NvdW50IGFu
ZCBwcmVzcyBFbnRlci4gIEkgZG9uJ3QgaGVhciBPcmNhIGNvbWUgdXAgYWZ0ZXIgSSBhbSBzaWdu
ZWQgaW4sIHNvIEkgcHJlc3NlZCBXaW5kb3dzIEFsdCBTIGFnYWluLiAgSSBkbyBub3QgaGVhciBh
bnl0aGluZyBmcm9tIE9yY2EuICBKdXN0IGluIGNhc2UgV2luZG93cyBBbHQgUyBkb2VzIG5vdCB3
b3JrIGFmdGVyIHNpZ24gaW4sIEkgcHJlc3NlZCBBbHQgRjIuICBUeXBlIE9yY2EgYW5kIHByZXNz
IEVudGVyLiAgSSBzdGlsbCBkbyBub3QgaGVhciBhbnl0aGluZyBmcm9tIE9yY2EuICBEb2VzIHRo
aXMgaGF2ZSBzb21ldGhpbmcgdG8gZG8gd2l0aCBteSB1c2VyIGFjY291bnQgbm90IGhhdmluZyBw
ZXJtaXNzaW9uIHRvIGFjY2VzcyB0aGUgc291bmQgZGV2aWNlPyAgSWYgc28sIGlzIHRoZXJlIGEg
Z3JvdXAgSSBjYW4gYWQgdGhlIHVzZXIgYWNjb3VudCB0bz8gSWYgaXQgaXMgbm90IGEgcGVybWlz
c2lvbiBpc3N1ZSwgd2hhdCBlbHNlIHdvdWxkIGl0IGJlPwo+IFRoYW5rcy4KPgo+Cj4gR2V0IE91
dGxvb2sgZm9yIEFuZHJvaWQ8aHR0cHM6Ly9ha2EubXMvQUFiOXlzZz4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

