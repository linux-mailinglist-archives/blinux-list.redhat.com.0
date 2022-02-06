Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2754AB113
	for <lists+blinux-list@lfdr.de>; Sun,  6 Feb 2022 18:54:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644170053;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=umnraY6IzUm6nmsNrv1jD4ExTp/w3WJDyaCXepgaU1g=;
	b=JYnR2Kxybn5bXEqevA0N1L/sfhbsWPIh3JBIklNLVWU7rruwwYenUDfwcMumXOvKvWVaYV
	HG3MCb3W/5hTmOnjSKkqtMR517TqNxLvoLkWkhOIEkCCSgAtEXQQk1ViEN9kT67iORghxi
	ACfojYDjj7I/Tdb+Mt+Q6yRFBClgYOU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-255-VcdLilfoO6WwA9-JK-VTfw-1; Sun, 06 Feb 2022 12:54:09 -0500
X-MC-Unique: VcdLilfoO6WwA9-JK-VTfw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BEA71100C664;
	Sun,  6 Feb 2022 17:54:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BB4677467;
	Sun,  6 Feb 2022 17:54:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 853344BB7C;
	Sun,  6 Feb 2022 17:54:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 216Hs0lS025090 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 6 Feb 2022 12:54:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 144E7492CA8; Sun,  6 Feb 2022 17:54:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9021492CA7
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 17:53:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A968B1C0514F
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 17:53:59 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-65-OwSuqrD_P6GUMvcRbsLgLQ-1; Sun, 06 Feb 2022 12:53:57 -0500
X-MC-Unique: OwSuqrD_P6GUMvcRbsLgLQ-1
Received: by mail-lj1-f176.google.com with SMTP id z20so16536274ljo.6
	for <blinux-list@redhat.com>; Sun, 06 Feb 2022 09:53:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=v8whlnuYjk9K+ZTDfH8F3tgutCfgKntWj3DhSSnF5D4=;
	b=6d7vDgnMg/f5PbGKGiJOqGGcxnXqXfE6xIJdzqZ+F8bHU77dDSy50I6U6dnBi2/DAJ
	CMVNDdCLec8WW94mrmRC/15DueVs/rLqILtlLGS5kLBAF7sT0rhIbzLIAlLVfLrXP6cn
	mb4o5w5wWx6zcNz30rdxFSaRrh0WwGxe7ifJHjx72lcpupJQaYTvLfZ9hX5cxj6dN14h
	g928C8RIpykN2FFB1rODeuM3Gh0mhqRshAIt32dyi+Omm1CXTXKlTUXXGY5YoZvpLizc
	Y7NFrMDu6QGVipObEugdN4+tqPICwpAczGgPp4w5XoqTM0+5ec/atjg/y7hC2pQJo9HS
	4vGQ==
X-Gm-Message-State: AOAM531jGzaoTlo2U0NzpPIvTFGPpY35AxHtbk8gIHA8qOsP9iHYqy1m
	UnmCd5sw9yBknO1DeD3vh+e8XlmvGuo=
X-Google-Smtp-Source: ABdhPJztWn/Hqp9apDNW54NGzWSlFZUAuto63MnOaUCCLPNTDTOr0zp7FXTHpiO5T13pH4/lIHPvDg==
X-Received: by 2002:a2e:b16e:: with SMTP id a14mr6070712ljm.35.1644170035944; 
	Sun, 06 Feb 2022 09:53:55 -0800 (PST)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	w16sm1282088ljg.14.2022.02.06.09.53.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 06 Feb 2022 09:53:55 -0800 (PST)
Date: Sun, 6 Feb 2022 20:53:54 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Does anyone know how to switch a Humanware display to contracted
	braille on Linux?
Message-ID: <20220206175340.qp4k4pd6k4dvvw6l@alex-pc>
References: <D1B9D67B-94D0-4A07-9CF8-F86A45643E5E.ref@yahoo.com>
	<D1B9D67B-94D0-4A07-9CF8-F86A45643E5E@yahoo.com>
MIME-Version: 1.0
In-Reply-To: <D1B9D67B-94D0-4A07-9CF8-F86A45643E5E@yahoo.com>
User-Agent: NeoMutt/20211029
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBGZWIgMDYsIDIwMjIgYXQgMTI6NDM6MjNQTSAtMDUwMCwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSBndXlzLAo+IFN1YmplY3QgcHJldHR5IG11
Y2ggc2F5cyBpdCBhbGwuIEkgd2FzICB3b25kZXJpbmcgaWYgYW55b25lIGtub3dzIGhvdyB0byBz
d2l0Y2ggYSAgSHVtYW53YXJlIEJyYWlsbGlhbnQgYiA4MCB0byBjb250cmFjdGVkICBicmFpbGxl
IG9uIHRoZSBMaW51eCB0ZXJtaW5hbD8gSSBrbm93IHdpdGggdGhlICBjb21tYW5kIGtleXMgeW91
IGNhbiBkbyBhIGxldHRlciBHIHdoaWNoICB3aWxsIHRvZ2dsZSBpdCBpbnRvIGdyYWRlIDIuIEni
gJltIGp1c3Qgbm90IHN1cmUgIGhvdyB0byBrZWVwIGl0IHNldCB0aGF0IHdheS4KPiBBbnkgaGVs
cCB3b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lhdGVkLgo+IFRoYW5rIHlvdSwKCnRyeSB1c2luZyBw
cmVmZXJlbmNlIG1lbnUuIHlvdSBjYW4gdXN1YWxseSBvcGVuIGl0IGJ5IHByZXNzaW5nCnNwYytk
b3RzMTIzNCBwIGNvcmQuIG9yIGxvb2sgaW4gaGVscCBtZW51IGhvdyB0byBkbyB0aGF0LgoKPiBB
c2hsZXkgQnJlZ2VyCj4gCgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

