Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E594F425FCF
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 00:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633645461;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1xtmfLx1r24bDhdjWmlgD9oivAlGXj2vUdRRrjOVKFY=;
	b=FqFsKIqy55pJvMbbZiqVUkQSmBubN/1KA7gEfWEteBnx7pUeRjdjhO2eEayNv4ticgx6Hw
	Kfjl4ekRLeIDwFfmKOhkPR5M4VVZazHqLYpxDSBnEEfGtmrQmd1jqA1CC3o52bAlsQGANI
	GGLN4nmj2cJUo6xbAg6gh3Zw/8dgBcM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-142--qOCyr86Or2EtffMAVGfTg-1; Thu, 07 Oct 2021 18:24:19 -0400
X-MC-Unique: -qOCyr86Or2EtffMAVGfTg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 597BB10A8E2F;
	Thu,  7 Oct 2021 22:23:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E35C960BF1;
	Thu,  7 Oct 2021 22:23:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8D6141800B8B;
	Thu,  7 Oct 2021 22:23:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 197MNInK017414 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 18:23:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 86D602026D48; Thu,  7 Oct 2021 22:23:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8273B2026D46
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 22:23:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78C4D811E84
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 22:23:13 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-261-5Pi1PGm2Pi6rnzSOt1MkBg-1; Thu, 07 Oct 2021 18:23:12 -0400
X-MC-Unique: 5Pi1PGm2Pi6rnzSOt1MkBg-1
Received: by mail-qt1-f174.google.com with SMTP id z24so3074832qtv.9
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 15:23:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=HQ5M7FMT3vd3rNbGPyycYDasn8DHYQtPtNUe6STuhwU=;
	b=SDqgRmyrZXM3sAIpIOmn13RIeDfN8hTIgW/8bD0PvaVTv6x9Uf3aEmvoOWvWXxiL0w
	tRF3GyJHxm1cI1alPpU56vhmSlz2m1AFsU03vc7mnb5J5GWVDhOaxwahMTpNFPyDYAM2
	G9Z0zXhRULFfV45tChXC3C8xHeuxzjkRjyZN7ozxFK0XOdmT+c1kz/uO6WEnZkbibJ6Q
	Iq2s4JEqrlN2bIlhKsVkrP/3vx1hrsUM5RCTKgypGGEZzJk3tleueUd3ePXEQTydGoLK
	aPDeRxosIN0IuBTVfq5Bo+5aNfI9EOpkB3AjqlvbGV2Yzt/+zeqkH2XmZV47SYNz74s9
	Q2mA==
X-Gm-Message-State: AOAM530N540OlICDnzYUiGjOUbsk2LJwZhtl8LNxAGx94C2QEhbAU2OF
	my4ytmQ1fv4+65UhzQ1ySUZ9sRLsGmAXYg==
X-Google-Smtp-Source: ABdhPJzVZKR2P/4mXG2hwG5heKnOoSraMP2uvNCxQ4TbZDJB+5gNctFDooDiOsMASMfIeJ0Vn+C2jg==
X-Received: by 2002:a05:622a:295:: with SMTP id
	z21mr8382329qtw.125.1633645390894; 
	Thu, 07 Oct 2021 15:23:10 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420:9f4f:c8b4:2dce:36f7?
	([2601:192:4c80:1420:9f4f:c8b4:2dce:36f7])
	by smtp.gmail.com with ESMTPSA id v8sm704830qta.21.2021.10.07.15.23.10
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Oct 2021 15:23:10 -0700 (PDT)
Subject: Re: Mate Desktop questions
To: blinux-list@redhat.com
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
Message-ID: <d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
Date: Thu, 7 Oct 2021 18:23:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.13.0
MIME-Version: 1.0
In-Reply-To: <765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgeW91J3JlIHRhbGtpbmcgYWJvdXQgVWJ1bnR1IDIwLjA0LCB5b3UgbWF5IGhhdmUgdG8gcmVz
dGFydCBvcmNhLCBvbmNlCnlvdSBvcGVuIHRoZSBpbnN0YWxsZXIuwqAgVG8gZG8gdGhpcywgSSBj
YW4gdHlwZSwgIm9yY2EgLXIiLCBpbiB0aGUgJ3J1bicKYm94LCBhbmQgZ2V0IGEgdGFsa2luZyBp
bnN0YWxsZXIuwqAgSSBkb24ndCBrbm93IGhvdyB5b3UgZG8gdGhpcyB3aGVuIHlvdQpwaWNrICdp
bnN0YWxsJyBhcyB0aGUgc3RhcnR1cCBvcHRpb24uwqAgSSB3ZW50IHRvIHRoZSAidHJ5IHVidW50
dSIKb3B0aW9uLCB3aGVyZSBJIGdldCBhIGZ1bGwgZGVza3RvcCwgYW5kIHJ1biB0aGUgaW5zdGFs
bGVyIGZyb20gdGhlcmUuwqAKQmVmb3JlIHN0YXJ0aW5nIHRoZSBpbnN0YWxsZXIsIEkgc2V0IG9y
Y2EncyBrZXlib2FyZCBsYXlvdXQgdG8gJ2xhcHRvcCcsCmluIGNhc2UgSSB3YW50IGZsYXQgcmV2
aWV3IG9mIHNvbWV0aGluZy7CoCBJZiB5b3UncmUgZG9pbmcgdGhpcyBvbiBhCmZ1bGwtc2l6ZSBk
ZXNrdG9wIGtleWJvYXJkLCB5b3UgbWF5IHdhbnQgdG8gc2tpcCB0aGlzIHN0ZXAuwqAgU29tZSBs
YXRlcgp1YnVudHVzIGhhdmUgYSBidWcgdGhhdCByZXF1aXJlcyB0aGUgbGl2ZSB1c2VyIHRvIGxv
ZyBvdXQsIHRoZW4gYmFjayBpbiwKdG8gZ2V0IGEgdGFsa2luZyBpbnN0YWxsZXIuCgoKCkhUSCwK
CgoKRGF2ZcKgIEh1bnQKCgoKVGhpcyBtYWNoaW5lIHJ1bnMgVHJpc3F1ZWwgR05VL0xpbnV4LCB2
ZXJzaW9uIDkuCgoKCgoKT24gMTAvNy8yMSA1OjQ3IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+IEkgd2FzIHN0dWNrIGF0IHN1cGVyIHVzZXIuCj4gSG93IGRp
ZCB5b3UgaW5zdGFsbD8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

