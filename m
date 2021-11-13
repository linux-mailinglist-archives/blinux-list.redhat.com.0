Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDF144F45D
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 18:38:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636825127;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6ePNtyeHYW2Dbs7zYRk7VjDhEMhldlAOcJqbyOWtgHM=;
	b=Cir2FCgyP+7z9fob+jHyTsRtWyMlAG5kJELuc3mjSYFeng9Ew4uZkFpHZlOChHGIA+ds1p
	RPmGOYW56D1O/XpdzgcRk/w0o2/CE9tWV3khO+xFEJ8H7Lg36Ul71ofEBZbWOXsAwfUTHL
	xb2rJ+/sGqWciezVSJxdvkfdHb4JksA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-597-Bpzd5PikN1-4FN6ixo9O0g-1; Sat, 13 Nov 2021 12:38:44 -0500
X-MC-Unique: Bpzd5PikN1-4FN6ixo9O0g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 394D41006AA2;
	Sat, 13 Nov 2021 17:38:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2496760862;
	Sat, 13 Nov 2021 17:38:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ECC9F4E58F;
	Sat, 13 Nov 2021 17:38:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADHcZgR006738 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 12:38:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3C06A2026D64; Sat, 13 Nov 2021 17:38:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 366D72026D48
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 17:38:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1486B80A0AD
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 17:38:32 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-394-tj_D6zFtO0a715_mo3vWSA-1; Sat, 13 Nov 2021 12:38:30 -0500
X-MC-Unique: tj_D6zFtO0a715_mo3vWSA-1
Received: by mail-qt1-f173.google.com with SMTP id t34so11576584qtc.7
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 09:38:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=ek/HG9+RkqccgamNbcRTBRfIgZ9nV+hSYrkN4ZiFl8s=;
	b=V4KlDOdNe4Vc3xt9qEiuL+/vZefe/KIOtX8Tcvbx8+wJ80lv481IQOrnCBMBXCO4bs
	woXlvQ0FN7TMH9m6XKy3dBic3n7lrUN3PMy67beY1ZaGWUaqhDAhNnmS2S/VuGoJ7LN7
	0A5H4n/PBLxt0M8lHXSM/09uXluvSBw9UF9IO6LWKGto7DUwrcUsxsBRtNiAs8xX2RLf
	LkojC2tg8dHTcazFLFmA/jz+fs+otkckzJ2kLePWLkVQ565nf3w6Z4H51s1R0XTkYxk5
	ZFwl6ky50XIWSLDXhLJpAxx3ER6OsFeMCCsBZ2b9463HJmG09/Vss7zYvCZJQnxZZ1d7
	5mWg==
X-Gm-Message-State: AOAM532M/Y8DgfpuyuUQC45B0kdGuLLTSdfJhO06mH9CAmPnl+mDSHac
	2KPg4Ec7kyaeG4b6BUAXKVEvWPE23iLGKw==
X-Google-Smtp-Source: ABdhPJy8ROCbmXo9U+L9LxDSeFkpMrOl+JeCrfQnxhi8ApC/NRkkzwWpnHGNhySB5Ahi2a+Y3fjDNQ==
X-Received: by 2002:ac8:5dc9:: with SMTP id e9mr13514399qtx.12.1636825109452; 
	Sat, 13 Nov 2021 09:38:29 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id
	h19sm2581751qth.63.2021.11.13.09.38.28 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 09:38:28 -0800 (PST)
Message-ID: <4c8cbebd-3e7b-6ec3-6159-42ec37c53da6@gmail.com>
Date: Sat, 13 Nov 2021 12:38:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
In-Reply-To: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

WW91IGNvdWxkIHRyeSBzeWxwaGVlZC7CoCBJdCdzIGp1c3QgZW1haWwsIGFuZCB1c2FibGUsIHRo
b3VnaCBub3QgYXMgCmFjY2Vzc2libGUgYXMgdC1iaXJkLsKgIElmIHlvdSB3YW50IHRvIHJ1biBz
b21ldGhpbmcgaW4gdGhlIHRlcm1pbmFsIG9yIApjb25zb2xlLCB0aGVyZSBhcmUgYWxwaW5lIGFu
ZCBtdXR0LCB0byBuYW1lIHR3by4gVGhlc2UgY2xpZW50cyBib3RoIG5lZWQgCnNvbWUgdHJpY2t5
IHNldHVwLCBidXQsIG9uY2UgdGhhdCdzIGRvbmUsIHlvdSBzaG91bGRuJ3QgbmVlZCB0byBtb2Rp
ZnkgaXQuCgoKCkhUSCwKCgoKRGF2ZcKgIEh1bnTCoMKgIGthMWNleUBnbWFpbC5jb20KCgoKT24g
MTEvMTMvMjEgMTI6MzEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gSSBhbSB3b25kZXJpbmcgaWYgdGhlcmUgaXMgYW5vdGhlciBhY2Nlc3NpYmxlIGVtYWlsIGNs
aWVudCB0aGF0IHdvcmtzIAo+IHNlYW1sZXNzbHkgd2l0aCBsaW51eD8gQ3VycmVudGx5IEkgYW0g
dXNpbmcgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

