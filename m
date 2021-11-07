Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 638BB44739E
	for <lists+blinux-list@lfdr.de>; Sun,  7 Nov 2021 17:06:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636301212;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lg9O0cOo5WeX4WtpDIzc1xX2HxoC3wz6r3bgwY370qM=;
	b=ReoWO8xxnISqGeSqC84UOAvkX6Mha6nr53ejo84Mwp29WP0tURwbhH63ACQsWC6R+t/vRv
	GsC+8GVSfv59U+P1pRLCsm3QVYQUu+id5GWBc1Tyk+IL4hSqZhaN3XSQk+fReDPlyxmasf
	MHnYSmFd5mruFO87XOBcuWqrnvMca9w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-85-bbdA7la6NymWkrrUdn9ZvQ-1; Sun, 07 Nov 2021 11:06:50 -0500
X-MC-Unique: bbdA7la6NymWkrrUdn9ZvQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 24ADA804141;
	Sun,  7 Nov 2021 16:06:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19B2460BF4;
	Sun,  7 Nov 2021 16:06:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 296AB18199EE;
	Sun,  7 Nov 2021 16:06:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A7G3rCR017194 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Nov 2021 11:03:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6D99E2166B26; Sun,  7 Nov 2021 16:03:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 672272166B25
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 16:03:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E9B868011A5
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 16:03:49 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-171-GnHFiBEHPMmRe1h-kxVytA-1; Sun, 07 Nov 2021 11:03:48 -0500
X-MC-Unique: GnHFiBEHPMmRe1h-kxVytA-1
Received: by mail-ot1-f47.google.com with SMTP id
	h16-20020a9d7990000000b0055c7ae44dd2so5691469otm.10
	for <blinux-list@redhat.com>; Sun, 07 Nov 2021 08:03:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Dg1PAdTBKnOkDl9OInyDnpcEt9Q7iet+Ua52Yyx/PxA=;
	b=OkuuiUSKuO5x9CyFRG/L62k4o0WlmRyLSNW0N2O5sHMNovALQahPt3ikTJK6EgbMGQ
	9Yg1Kf0cD/B7ULEw2vweE9g/M2eXMHb+juvUuuvgeXIqtTl+MmaemrHEPH87L6azhoxM
	Jz4KZf0OR/Atgr+NZy0j0Yh8QqWx1hvH911wrytiPFJYAHBa/1gTxSq5m8DmDGt+7/t+
	4aKOTObfccxK7objcOnpb+hRSW24ePssKTfFvooG4Bs2De3gngWwE8U9xLh/K/VdPVDs
	+gy7HkrPxzJlE5TUe6coFUjkp0NilxJxA/0RKzWJrcdlkuxm0noOalxua4q+6gJhwDb7
	bqUA==
X-Gm-Message-State: AOAM531hcwfJl8nBQOrCRKr+Gv91tw2isX0q8XaCOp3/GJ8FejFIwBPo
	lCYIcefCLdgHz5PYEqLumnFy1Z18AjY=
X-Google-Smtp-Source: ABdhPJyHjrOZ7RXWobZ29aWgzi4+IRwYfiMSOG4OExSqK2v2oyi/iWJNqQJUwNmBp2r2IBVxbtpwTg==
X-Received: by 2002:a9d:4702:: with SMTP id a2mr1623123otf.262.1636301027569; 
	Sun, 07 Nov 2021 08:03:47 -0800 (PST)
Received: from ?IPv6:2600:1700:9434:2a00:ec5c:17c1:ccd:fa63?
	([2600:1700:9434:2a00:ec5c:17c1:ccd:fa63])
	by smtp.gmail.com with ESMTPSA id l3sm385612ots.69.2021.11.07.08.03.47
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 07 Nov 2021 08:03:47 -0800 (PST)
Subject: Slint
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
	<CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
	<66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
	<CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
	<Pine.LNX.4.64.2111062234340.1006457@server2.shellworld.net>
	<20211107153903.j3obqxnmww7xcijn@begin>
Message-ID: <d7ed8f37-ab31-2175-2693-a6da83082d90@gmail.com>
Date: Sun, 7 Nov 2021 10:03:46 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211107153903.j3obqxnmww7xcijn@begin>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBoYXZlIGEgbGluayB0byBhIHNsaW50IGhhYW5kYm9vay7CoCBJdCBzZWVtcyB0byBpbmRpY2F0
ZSB0aGF0IHNsaW50IApvbmx5IHJ1bnMgb24gYSA2NCBiaXQgc3lzdGVtLsKgIElzIHRoYXQgY29y
cmVjdD/CoCBNYXliZSB0aGVyZSdzIGEgMzIgYml0IAp2ZXJzaW9uPwoKSG93YXJkCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

