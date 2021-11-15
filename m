Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BE444FC98
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 01:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636936664;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ybbVZsY3Nh++y84LIYO88TntENobxF7s/rroTEs0mfE=;
	b=YAT8NeFFz6j2DJN2psf80kuSal0aNplWlJ9zL0G5c20OfmhQn13Fhbt4BAqEUkQIpkrReM
	HMNV33k3+sQ95iwVflzRCoqwXPFb/gN2SO7ne2mV44dugrRI6vnzi18GzP9KcRkigengZA
	3vUta6hzsLL4r5iwf9GyzZmzrIra7TI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-HXfH--hFPoKqG_NPYLlFqg-1; Sun, 14 Nov 2021 19:37:42 -0500
X-MC-Unique: HXfH--hFPoKqG_NPYLlFqg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E4951030C22;
	Mon, 15 Nov 2021 00:37:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F35D319811;
	Mon, 15 Nov 2021 00:37:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C8E218199EE;
	Mon, 15 Nov 2021 00:37:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF0XRXj009941 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 19:33:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2348C404727A; Mon, 15 Nov 2021 00:33:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F08E4047272
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 00:33:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0580F1066558
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 00:33:27 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-443-Kjsq1BPcMSCmt4gsGRECUQ-1; Sun, 14 Nov 2021 19:33:25 -0500
X-MC-Unique: Kjsq1BPcMSCmt4gsGRECUQ-1
Received: by mail-qk1-f169.google.com with SMTP id 193so14998538qkh.10
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 16:33:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=f25uHFUEK9RgmBmmNOu379+QQboqEqgSjRBF3opnMw8=;
	b=Rjn3fx8TCHfaO1zzFEIAYlFYrbz1okxs2ORRFZV+dHg9o+3LZSDYrEWbwzijxzmVuV
	XzT+d1GhH3sWVQYzSZTFrAJDtAJm0dIz+iqCYOX2Q4n9xyP+ZBC+J61GbtrfWJBgRYKu
	LbJDaBY9Edn0H7rXnOhGp7c4+Z8f3TbVGgl5636sU+hAjmgjCv3+GHJY3VJUTFQKsXbH
	rhEWKbeTJ0DD/aIyYzl2db06qJdaiLTxGKD9qsGh2kr+VjsZyjHYgcpG2YNvOpZ1XHRI
	XJdvzGARYAxBBdupOnsG13kw/rU6bd6TdV3K4kqNywdlgFcX7r4/Bb0i7dbbZpHs6jYC
	ag1Q==
X-Gm-Message-State: AOAM531rZIVj49+gxfLEmZac6d1EPWky0Cu0aIkgaNxK7wv4GZ9Y+KV9
	KdPm5XNbninL7yic1+lDYY2/8pz/i9Vi1Q==
X-Google-Smtp-Source: ABdhPJw0xW6ujtaxamqKfj2QD6/A5qyFrbSA97PxgeKFD+GEcT1eYx+lpd00MyL3FlOMTirg/3BIqA==
X-Received: by 2002:ae9:dc84:: with SMTP id
	q126mr27747021qkf.128.1636936404964; 
	Sun, 14 Nov 2021 16:33:24 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id v7sm6009372qki.98.2021.11.14.16.33.24
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 16:33:24 -0800 (PST)
Message-ID: <d6f72308-9a85-3cb1-8bc1-56c0ca459da7@gmail.com>
Date: Sun, 14 Nov 2021 19:33:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
	<f4000503-df02-93a7-d50e-825ac3e2a0f8@gmail.com>
	<24c55f9c-07ac-ac25-5a96-e3fd5127b7c7@gmail.com>
In-Reply-To: <24c55f9c-07ac-ac25-5a96-e3fd5127b7c7@gmail.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB0aGluayBJIGp1c3QgY2xvc2VkIGVhY2ggdW53YW50ZWQgdGFiIHdpdGggJ2N0cmwrdycuwqAg
SSBhbHNvIGdvdCByaWQgCm9mIHRoZSAidG9kYXkiIHBhbmUgZnJvbSB0aGUgInZpZXciIG1lbnUu
CgoKLURhdmXCoCAtCgoKCk9uIDExLzE0LzIxIDE5OjE0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+IGhvdyBkaWQgeW91IGRvIHRoYXQ/IEkgY291bGQgbm90IGZp
bmQgdGhlIHNldHRpbmdzIHBlcnRhaW5pbmcgdG8gdGhlbS4KPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

