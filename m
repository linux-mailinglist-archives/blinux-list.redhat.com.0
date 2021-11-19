Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BB37F4568D1
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 04:53:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637294007;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ERxM8lP+18OEC8iSndAlvsKNFlPDMEskrkjnkkHTRB8=;
	b=GacK5+1SnDAddYT7GRNzjcvbExdkN3WCFnzG7Tqu8S07D9RwPIRVsRMUH1LBelax/j4OPo
	k7Wg++/xDqTMer1TnTeznrowZ0MT5mhzhZgvDnOIGmJDB+Z4ln046G+7vVo0+J81FEZNX7
	npSrgXTE2EBgKHPTADGW1ZyXUhca79M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-191-baK_0A7mPIWUkNu7L1aCbA-1; Thu, 18 Nov 2021 22:53:23 -0500
X-MC-Unique: baK_0A7mPIWUkNu7L1aCbA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E972D18125C7;
	Fri, 19 Nov 2021 03:53:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9DE485C1A1;
	Fri, 19 Nov 2021 03:53:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 29EAC180BAD1;
	Fri, 19 Nov 2021 03:53:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ3rDm6028422 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 22:53:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id ADD57404727A; Fri, 19 Nov 2021 03:53:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A9E1B4047279
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 03:53:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8EDA61066682
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 03:53:13 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-232-jqIh8njvNouRPWSaHqeSHg-1; Thu, 18 Nov 2021 22:53:12 -0500
X-MC-Unique: jqIh8njvNouRPWSaHqeSHg-1
Received: by mail-qk1-f174.google.com with SMTP id q64so8955838qkd.5
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 19:53:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=M427ZZVIkZWU1ectVXE6/XINmF4HwJvpY/ilQ5i93RI=;
	b=O+VUvClq7ewfvR1FEoqRO2F3FGZeBrFrWAXh68lIDard5YwL2lC7tz4TzTgssK+nTn
	AH1eW6p9tdpgmUXN2IHqITghKB/GlBwkf/B9xVsRTW8d+a/H2QiJOApDABtf9/THTPSJ
	AyGyY5QNS7XQF7OJfLQLOQSfjFbsoXKM37UyoDPNPCXw1VC2YMXOFLB4e/LakGf3TyN6
	7UgxC+lPhcW0jKM1Ldw0OUiBDM2iEVGPfobEF42cuM4YwHOCZPLsyXc4FRikpJCojq7v
	owjwuxkZVhBxnecOITu68oIn9gijSeyRexr8xEd1a03NBYSjuhCFcJLP6kVhVrJBxga1
	OtJg==
X-Gm-Message-State: AOAM533EmVhBVdutSq78bSnzPcgFMPjF7UmzNCMWPuip5jHod+a9jaS+
	BFGzoG7Nlt8PO0Y157hAbQbrZdWzNkrWSw==
X-Google-Smtp-Source: ABdhPJy+/y4WJuXrCKFjWt94xBW5GYafuTydlAsYQOp8rQuKq+3OrP3gh2c1raUO34NUSe5vqCQ8pQ==
X-Received: by 2002:a05:620a:f01:: with SMTP id
	v1mr26115822qkl.167.1637293991326; 
	Thu, 18 Nov 2021 19:53:11 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:c347:4a42:3916:ad40?
	([2601:192:4c80:1420:c347:4a42:3916:ad40])
	by smtp.gmail.com with ESMTPSA id y11sm965673qta.6.2021.11.18.19.53.10
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 19:53:11 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
	<9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
	<9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
	<33002db2-a9f2-32ab-67a6-d35a41496d7f@gmail.com>
	<58865fc1-1566-b9a3-21d6-3b2aa13346aa@gmail.com>
	<ef5d97c0-090f-becd-2b7a-958852c90376@gmail.com>
	<5e4b723f-dea3-48c7-3381-56c520c0c230@gmail.com>
	<fb7296f8-21a9-c6a8-3ac3-43ca70546485@gmail.com>
	<3a2ec932-d790-32b8-0118-0d08f81d52c2@gmail.com>
Message-ID: <dcd68fed-40ba-a41d-c51a-ef4ebecc3887@gmail.com>
Date: Thu, 18 Nov 2021 22:53:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.14.0
MIME-Version: 1.0
In-Reply-To: <3a2ec932-d790-32b8-0118-0d08f81d52c2@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

SSB1c3VhbGx5IHJ1biB0aGluZ3MgbGlrZSB0aGUgdXBkYXRlciBpbiBhIHRlcm1pbmFsLsKgIE9w
ZW4gb25lLCBhbmQgdHlwZQoKCnN1ZG8gZG5mIHVwZGF0ZQoKCkl0IHdpbGwgc2hvdyB5b3Ugd2hh
dCBpdCdzIGFib3V0IHRvIGRvLCBhbmQgeW91IGNhbiB0eXBlICd5JywgYW5kIGhpdAonZW50ZXIn
IHRvIG1ha2UgdGhlIHVwZGF0ZXMgd29yay7CoCBSZWJvb3QgYWZ0ZXIgdGhlIHVwZGF0ZXIgaGFz
IHJ1bi4KCgpDaGVlcnMsCgoKRGF2ZQoKCgoKT24gMTEvMTgvMjEgMTA6NDggUE0sIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSSByZWJvb3RlZCBtYW55IHRpbWVz
LiBJIGhhdmUgbm8gaWRlYSB3aHkgaXQgaXMgbm90IHdvcmtpbmcuIERvIHlvdQo+IGtub3cgaWYg
dGhlIGRuZmRyYWdvcmEtdXBkYXRlciB3b3Jrcz8gRXZlcnkgCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

