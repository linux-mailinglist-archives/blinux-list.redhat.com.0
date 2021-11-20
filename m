Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD1F457A91
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 03:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637374692;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OBKbxnkVtkAVCCiBJwofN6a3fJIcuCgFacJonGpsQ/U=;
	b=MdDxTns8sunJvvhGmrU/J+p4mszTzBNPofwf4hc/sF6YQ5bsIzQNgmCHZWWm/ds7/nSC1c
	YeoQo9EFNOy34mj3qvkl6JFbs6Z82bY79oo/VXLIALv10JjT64kQ7tiUIG4AnXWJjOlI+r
	bPe540zyomMkQAgKrvJwmsHvvqpeX0U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-243-C8rLnEuwPJuiOav9m7VJog-1; Fri, 19 Nov 2021 21:18:09 -0500
X-MC-Unique: C8rLnEuwPJuiOav9m7VJog-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 867EE5203;
	Sat, 20 Nov 2021 02:18:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3C285F4F6;
	Sat, 20 Nov 2021 02:18:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 979054A703;
	Sat, 20 Nov 2021 02:18:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AK2Hsde007702 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 21:17:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 43131404727A; Sat, 20 Nov 2021 02:17:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F14C4047279
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 02:17:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 253208032EB
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 02:17:54 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-359-gG_mZfg8OxKgzahtZLTMOw-1; Fri, 19 Nov 2021 21:17:52 -0500
X-MC-Unique: gG_mZfg8OxKgzahtZLTMOw-1
Received: by mail-qt1-f172.google.com with SMTP id l8so11249744qtk.6
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 18:17:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=EAoRX9FXRvib22lpeASpXF/1ov7lR2WE/PGnMLGTV9k=;
	b=CuBz8rtMMi4Uo4pqlL8ueQj32j0NE+DQY5yAjKfrOAigOfTdWdd5hThaNF7bg95U2h
	7PqZdpycjRfKsfnUf5E51DETwq3XZQlg63ykzTw6ahz1ZANdei2C9S3erOVKVRw6fl4Q
	GjXDJx/y+t0nwQB7uqZWDQjNt7qSS/sz4ZSOMmOWrkL4+K1g6rnaKronijEYsrZ7XXsu
	XTJy4MUtJDa1NWMn3T6+V2crBBhg4f4XYT3I4MAOijZqgLcsdy0rnEuwdMrApMlLeu2K
	xz1Tfy1m6uNWDlOMDgC4XdzcVtIBr6f3+HToh684zD2u1bNcqPv48YOwjNThHG6luQZ6
	IVvA==
X-Gm-Message-State: AOAM530NBOrDiCfaEeRuPzltWGzXLB2Hg5YuTNqy+SyJbMevDdPQMbvw
	iN4Gg+s0QjgF8BDwy8PphIcfyUNURQRr2Q==
X-Google-Smtp-Source: ABdhPJzbfOEYUVCPS+8sgiEVEKH0EOxi75pNd0a8duzirf442osaBV5FqBgDSQwhZMR1VHbXnf1kaw==
X-Received: by 2002:a05:622a:1043:: with SMTP id
	f3mr11100555qte.233.1637374671774; 
	Fri, 19 Nov 2021 18:17:51 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:59b0:5d37:e3b:7a62?
	([2601:192:4c80:1420:59b0:5d37:e3b:7a62])
	by smtp.gmail.com with ESMTPSA id
	bl27sm892604qkb.38.2021.11.19.18.17.51 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 18:17:51 -0800 (PST)
Subject: Re: what is the shortcut for continuous read on orca
To: blinux-list@redhat.com
References: <6283f17e-5316-8991-44ce-442189ef349e@gmail.com>
Message-ID: <fe6f91df-994d-e4b5-5b7f-054e8d273546@gmail.com>
Date: Fri, 19 Nov 2021 21:17:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.14.0
MIME-Version: 1.0
In-Reply-To: <6283f17e-5316-8991-44ce-442189ef349e@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

dXNlIGNhcHMtbG9jaytzZW1pY29sb24gZm9yIGNvbnRpbnVvdXMgcmVhZC7CoAoKCgpPbiAxMS8x
OS8yMSA4OjUwIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
IFdoYXQgaXMgdGhlIHNob3J0Y3V0IHRvIGhhdmUgYSBjb250aW5vdXMgcmVhZCBmb3Igb3JjYT8g
SSByZWFkIHRocm91Z2gKPiBhbGwgdGhlIHNob3J0Y3V0cyBmb3IgYSBsYXB0b3AgYW5kIEkgZGlk
IG5vdCAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

