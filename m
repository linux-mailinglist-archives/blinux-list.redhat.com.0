Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 903B345DCC2
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 15:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637852130;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yQsr9U9d+saiWOAkf7qEhFKEzJIfjT7KGJB7RP3edYI=;
	b=DwVdI8Xkrdq5G7CtOacw2HTos+K7Q2NjBkC/7dTfx3Uw7p2wPN14CQsLA3SFlHRxBeG0D7
	jDX0W/5/0e6cWf3QGDz+mf0vpT7hB637c2KK0ff5S54imKLZ52+Mesu8pEZZfn0kmu8Uhr
	0WaY71QEQ8vaxgXlavKSRPchN7GWB+k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-582-CUOhGe3ZNHqKp7U2tFUBqQ-1; Thu, 25 Nov 2021 09:55:26 -0500
X-MC-Unique: CUOhGe3ZNHqKp7U2tFUBqQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F3D1100CCC1;
	Thu, 25 Nov 2021 14:55:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF2484EC37;
	Thu, 25 Nov 2021 14:55:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C260C1809C89;
	Thu, 25 Nov 2021 14:55:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APEq54O009841 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 09:52:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D8F671121319; Thu, 25 Nov 2021 14:52:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D42A21121315
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 14:52:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B7FE610665A9
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 14:52:01 +0000 (UTC)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-474-a7T81T4nM4W4e4-P8sBFGA-1; Thu, 25 Nov 2021 09:51:59 -0500
X-MC-Unique: a7T81T4nM4W4e4-P8sBFGA-1
Received: by mail-io1-f42.google.com with SMTP id k21so7845023ioh.4
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 06:51:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
	:subject:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=+xbYcPMOe7yQZyl6Lq5CfMag9h3RS66JZacvNNgwWZQ=;
	b=qgwdd9DzLCO2EqBiNIZIjm/6PT1ZxW5D7kXaqCe6Pf4BYYjQqQ6j2w+OyOhGKDzSh+
	pNsK1p237x+qp/387lLU04rhsIFAtpA8nUwXYO2uOv0cjE/OrhtY0ePuJTKix7Y8uRxq
	fd91j10dl5wnlhOlSv20E0LpFz9Y3kbfGt/Mr65TIyKdqtE33TMvaRQgb5yXUv3Hn/w8
	Ytra//xzzerDAEbaXnHBfhP08Q2VgTjhlLH4DACP3ZffcjgADm6WSMNVE2rM9cHMjqge
	7S1nqeqlzVZGfHbw0c2jHbszfkyJjNToaAtPZ12/S55VpTGoF5r8SLkcT9muyOt2gWNM
	+MJw==
X-Gm-Message-State: AOAM532fJRCmUqbUcU/VMZ8dxb2vySEtJkk4tFCEfdgCwv5cnrG3HfQ5
	kQ8UDSW+Ph1P8SKebyvVx0EHc8QxYWj8uQ==
X-Google-Smtp-Source: ABdhPJxOr8m4AM1bQQkoIuRs5l/BZgCKXf2J4AXIRNyLLicPUa0xc8Sacg7hybV72O7er7UQvsisPg==
X-Received: by 2002:a6b:2cc1:: with SMTP id s184mr24808589ios.63.1637851918221;
	Thu, 25 Nov 2021 06:51:58 -0800 (PST)
Received: from ?IPV6:2600:1702:20f0:4420:795f:1d0d:d869:3dbe?
	([2600:1702:20f0:4420:795f:1d0d:d869:3dbe])
	by smtp.gmail.com with ESMTPSA id 11sm1661507ilt.63.2021.11.25.06.51.57
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 25 Nov 2021 06:51:57 -0800 (PST)
Message-ID: <8901a934-19f9-f008-74c9-e48f00296f9c@gmail.com>
Date: Thu, 25 Nov 2021 09:51:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Fedora and virtual machines not starting
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
	<521d7813-65f3-ed3b-6a0d-9377ef379904@gmail.com>
	<2a4351fc-b90c-b662-1fce-7999a721bad6@gmail.com>
	<d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
In-Reply-To: <d8052d3c-e817-2800-8039-d93f30b02803@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

TWF0dGhldwoKCgpJIHRoaW5rIHRoaXMgaXMgc29tZXRoaW5nIHRoYXQgd2FzIGJyb2tlbiBpbiB0
aGUgMzQgY3ljbGUgYXMgSSByYW4gaW50byAKdGhpcyB1c2luZyAzNC7CoCBIVEguCgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

