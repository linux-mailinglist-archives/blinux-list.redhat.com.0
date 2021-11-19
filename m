Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B541845676F
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 02:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637285223;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nJGCoSHeJu71zPpvgALCEaNvP89n/FX3i9cgWfkimBk=;
	b=XdLfmCG7PKA/N7wQ6c4UlaNnQNob42QKKoIjWvSVc1+ZoR+LeQk5PpCadN+3FywXlZKTwm
	VrX8D9MPDBofaNuQQ0rbv/QCsfNxvclJe+0z/XhJG29kGKsA9x6NDZtMJ4Nkxn1VaeANtk
	ex4MinEDpqXWdUUl9FFNWKdEZwMxs0c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-548-Av3ab97mOfK2STpNpE12zA-1; Thu, 18 Nov 2021 20:27:00 -0500
X-MC-Unique: Av3ab97mOfK2STpNpE12zA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1442887D542;
	Fri, 19 Nov 2021 01:26:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81BC2604CC;
	Fri, 19 Nov 2021 01:26:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 69C6B180BAD1;
	Fri, 19 Nov 2021 01:26:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ1QmhK016213 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 20:26:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 55BCD404727A; Fri, 19 Nov 2021 01:26:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 51F0E4047279
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 01:26:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 38894185A79C
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 01:26:48 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-311-BcDjd5vDNqKh7Di6R3yoRg-1; Thu, 18 Nov 2021 20:26:46 -0500
X-MC-Unique: BcDjd5vDNqKh7Di6R3yoRg-1
Received: by mail-qk1-f173.google.com with SMTP id q64so8615710qkd.5
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 17:26:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=sQHlleR/ZTHqwwcUC/ZT2IhaN5YvXnOCn86FIcBPfus=;
	b=oGlv2MGeUlYRnkGfgVGOp3X6fa8ESmilhJYGtHFdyvoKnVWVL0DbqFqon3Z/KwLVhx
	hY1gng12CzpC8wgX5HsmKdK5cn6usW1ot3QEBev4eQud+Y49Q6kPFhwwI/4q1Fk4UDz6
	iXT5I9V7rLh4HsweJxPOR1GpQ0GKsPPzcaVBVdrTXXBoQfLXUKhyKpnK7GpjqtRDSNr9
	l09Tuumy5aS3g/Si19zQFeSYXO15WsXAQ4YE77Xz1gakVryQ2t+4M0YBdjWlDv73vC6Q
	Fh0mZ6AXiVAdzmQ4TTaynx6N3UEB+b4iL+ISHiwT+Em+63pEHg/RO7eUEF+aHPRAP5OJ
	TTNQ==
X-Gm-Message-State: AOAM530GaO0mDNznbHRo2HJM1GJkEKw4xo51KfvLBHX1M6ebLk5mtuLY
	azG79Mq5HNCYo2m/qe4uD1G1Vln29yA5zg==
X-Google-Smtp-Source: ABdhPJyYd9pu83lS9U1J41r0QTmggkFourLm3rK/rDt1cavJCElJQNWw+ldQnyWZE3l9nHnQgNpMdw==
X-Received: by 2002:a05:620a:f01:: with SMTP id
	v1mr25469956qkl.167.1637285205928; 
	Thu, 18 Nov 2021 17:26:45 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:691b:2b6d:afee:2523?
	([2601:192:4c80:1420:691b:2b6d:afee:2523])
	by smtp.gmail.com with ESMTPSA id m9sm910599qkn.59.2021.11.18.17.26.45
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 17:26:45 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
	<9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
	<9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
	<33002db2-a9f2-32ab-67a6-d35a41496d7f@gmail.com>
	<58865fc1-1566-b9a3-21d6-3b2aa13346aa@gmail.com>
	<ef5d97c0-090f-becd-2b7a-958852c90376@gmail.com>
Message-ID: <f7fe9f2e-1bbe-dc7f-ccab-e2ad98b33a45@gmail.com>
Date: Thu, 18 Nov 2021 20:26:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.14.0
MIME-Version: 1.0
In-Reply-To: <ef5d97c0-090f-becd-2b7a-958852c90376@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGFuc3dlciB3aWxsIGRlcGVuZCBvbiB3aGljaCBkZXNrdG9wIHlvdSBjaG9zZS7CoCBJZiBp
dCdzIGdub21lLCB5b3UKdXNlIGN0cmwtYWx0LXRhYiB0byBnZXQgdG8gdGhlIHRvcCBiYXIsIG9u
Y2UgdGhlcmUsIHVzZSByaWdodCBhcnJvdyB0bwptb3ZlIHRvIHRoZSBuZXR3b3JrcyBzZWN0aW9u
LCBkb3duIG9uY2UgYW5kIGhpdCAnZW50ZXIgb24gInNlbGVjdCBhCm5ldHdvcmsiLsKgIFRoaXMg
d2lsbCBzaG93IGEgbWVudSBvZiBhdmFpbGFibGUgbmV0d29ya3M7IGhpdCAnZW50ZXInIG9uCnRo
ZSBvbmUgeW91IHdhbnQuCgoKSWYgeW91J3JlIHVzaW5nIG1hdGUsIGRvIGN0cmwrYWx0K3RhYiB0
byByZWFjaCB0aGUgdG9wIHBhbmVsLsKgIFRhYiBvcgphcnJvdyBhcm91bmQgdGhlIG9wdGlvbnMs
IHRpbGwgeW91IHJlYWNoIHRoZSBzZWNvbmQgaXRlbSB0aGF0IGp1c3Qgc2F5cwoiaWNvbiIsIGFu
ZCBoaXQgc3BhY2Ugb3IgZW50ZXIuwqAgWW91IHNob3VsZCBiZSBhYmxlIHRvIGFycm93IGFyb3Vu
ZAp0aGVzZSBvcHRpb25zLCB0aGV5J3JlIHlvdXIgbmV0d29yayBjb25uZWN0aW9ucy7CoCBOb3Qg
c3VyZSB3aHkgRmVkb3JhCmRvZXNuJ3QgaW5jbHVkZSBubXR1aS7CoAoKCgpIVEgsCgoKCkRhdmUK
CgpIdW50CgoKCgpPbiAxMS8xOC8yMSA4OjE5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+IFdoYXQgaXMgdGhlIGV4YWN0IHdheSBvZiBnZXR0aW5nIHRoZSBs
aXN0IG9mIHdpLWZpIG5ldHdvcmtzIGF2YWlsYWJsZQo+IHNvIHRoYXQgSSBjYW4gY29ubmVjdCB0
byB0aGUgaW50ZXJuZXQgd2l0aCBmZWRvcmE/IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

