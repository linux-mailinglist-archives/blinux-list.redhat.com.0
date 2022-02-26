Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 045194C57E8
	for <lists+blinux-list@lfdr.de>; Sat, 26 Feb 2022 21:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645906172;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=826JLP8G3mPutwnqx0R1TM7Fcf0+UU3guHFN+AhzEy8=;
	b=Vt+rYPprjI7XZmSvZDNEMuVNmloDNL+lij4RUUMyBJCL/Iaxb3BtyeHfCtKQsg21Mx2XKR
	j5O63dOHC8HRLUuMHxAbJznx2m5NQNH0ytajMEWSzFrg7M4wVdqKtqiN+6VWCRx5mI3gpb
	hpcdisPnYlJAeHmjaFBXXuOfit6Sdf4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-380-MtDrtwRoOS-trvL4gNwA1g-1; Sat, 26 Feb 2022 15:09:29 -0500
X-MC-Unique: MtDrtwRoOS-trvL4gNwA1g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9E7D651DC;
	Sat, 26 Feb 2022 20:09:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 662AF45CAE;
	Sat, 26 Feb 2022 20:09:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 11E8A18095C9;
	Sat, 26 Feb 2022 20:09:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21QK1wRp008171 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 26 Feb 2022 15:01:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0E2422166B13; Sat, 26 Feb 2022 20:01:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0939E2166B26
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 20:01:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0613A800B21
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 20:01:55 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-187-meSY2RCsNnSjrIUJRFTXdQ-1; Sat, 26 Feb 2022 15:01:53 -0500
X-MC-Unique: meSY2RCsNnSjrIUJRFTXdQ-1
Received: by mail-wm1-f43.google.com with SMTP id y5so3559303wmi.0
	for <Blinux-list@redhat.com>; Sat, 26 Feb 2022 12:01:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:to
	:content-language:from:subject:content-transfer-encoding;
	bh=L4ZhuLykH9DH/m2zETCo/LRBPU2WHZv93YuqTPWmwnk=;
	b=EtHa5P5Etm+V1fC8+wra5FJ2cYjG1Nt/zq95WigjPc8nsPpN0r+XW5jIfKqdIJLd8S
	0ERK8f/WU7WM5Ou1UPM58jHetm+mpvCo5uyoeKC0t+Qn0tjOj3xfMxoBU3KaTM9016wj
	4wbVEnbJf68sqOrXi/+p+7bX9KldF+5ydAb4OO1gOu0sBfnFtC4qmABoGnJ2sDuM9lxu
	EDWszmDt4IuOBDz88d7AUiaGMmZW3rAtUolyP2hZ9prnhWCzA8rwwHb9z23X5Uh6lR/l
	bLJ1Pdetceo8Ab6FoYZgJ86daY0YonL0Sm0U0pOYgK3ZwjZngoWMINBvUxrJoK7DwH6S
	D28A==
X-Gm-Message-State: AOAM530vECApj2ySEFfz4ksMbafFTd8TG4ALl1aJgY9PaVXgBii2yn+M
	Tgs44BSZJTuC5wQcU5EukD2tzbI7Fx/GAQ==
X-Google-Smtp-Source: ABdhPJyvQiPdTMCFU4CK7z3n3xGNDZ9e0QP4kVyvPk+zCo7aY7mFADFmOJtneVYraKBJGM5n9gniRg==
X-Received: by 2002:a05:600c:4881:b0:381:1f8f:5299 with SMTP id
	j1-20020a05600c488100b003811f8f5299mr7555395wmp.149.1645905711586;
	Sat, 26 Feb 2022 12:01:51 -0800 (PST)
Received: from [192.168.8.130] ([197.184.177.193])
	by smtp.gmail.com with ESMTPSA id
	k7-20020adfb347000000b001e595adb6d9sm6094947wrd.79.2022.02.26.12.01.49
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 26 Feb 2022 12:01:50 -0800 (PST)
Message-ID: <6236d693-6b68-d164-9484-30e73574a4cb@gmail.com>
Date: Sat, 26 Feb 2022 22:01:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
To: Blinux-list@redhat.com
Subject: Testing Linux distros
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I am tired of having to reinstall my distro of choice every time I get 
fed up of testing one distro or another.


How would you go about testing if, like me, you only have the one Linux 
capable machine? Yes, I know you can technically run some distros on the 
M1 MacBook, but, just, no thanks.


I really, for one, don't like the VMware thing, and virtualbox is a pain.


I'm thinking qemu with virtManager, but would like some input. This is 
how I run, only when really necessary, mind you, my production Windows. 
Unfortunately I need it to do my work, so cannot kill the thing.

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint machine

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

