Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 566DF383C08
	for <lists+blinux-list@lfdr.de>; Mon, 17 May 2021 20:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621275383;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BeIHg/YhFVh9eySSSrWvZAzfthB8KA7XmTyRflDtH8g=;
	b=h1ZC5N/LGNTgNlerv+1H0RLbcEyE00R5By59BsCBgCoQ1roSkLUWXjsV6CfHKt1SymNaNu
	YUvcGc9bZS9uOfF311z/5Lyb2U//AcomvEmxwtIwjgTxoB4PbRbLJMyu6J6rH/HmDv4+6e
	aALqpYrFwCrZAqJDEenQ4e9QPsD5JqU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-525-rkMlPQhuNCmQ4cdTw_QWHg-1; Mon, 17 May 2021 14:16:21 -0400
X-MC-Unique: rkMlPQhuNCmQ4cdTw_QWHg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69AD089F7C6;
	Mon, 17 May 2021 18:16:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 640C85D6A8;
	Mon, 17 May 2021 18:16:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1E1EF55347;
	Mon, 17 May 2021 18:15:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14HIFcA7014632 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 17 May 2021 14:15:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5E311111286D; Mon, 17 May 2021 18:15:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58ED41003200
	for <blinux-list@redhat.com>; Mon, 17 May 2021 18:15:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8DBB8858F0D
	for <blinux-list@redhat.com>; Mon, 17 May 2021 18:15:35 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-2-dV4mAW-_O5ye1AioEkK1RA-1; Mon, 17 May 2021 14:15:31 -0400
X-MC-Unique: dV4mAW-_O5ye1AioEkK1RA-1
Received: by mail-wr1-f53.google.com with SMTP id x8so7398432wrq.9
	for <Blinux-list@redhat.com>; Mon, 17 May 2021 11:15:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=BbqsAEvgCwr9c9Io7yOus+Qf2y/IKwZx5ySn4IfxbnY=;
	b=YCU0bpd3scaAYOltkbYco8i5cMhRQu+siqRwoNWqGtbrH6zERlb+QreHhHvGNRSL6M
	vl/r8oMXE3eAIoWGcuhBVjG8ikiBx6a+2N0WszaNuaAeedupVjNnjhst6UdT1CNmVbaQ
	oeYk2/wX9Dap6I0/GqINCuKs4vmgpRPuLXKmVLkbLYGuww7BCD6szeBmOA38dQOD+vqQ
	A/uIGSIKIZoEDqhmyLhQ37xn6kzZHmJ3ahCm+e7greBMZIRFhvTF80RPmIPrDpll/yFB
	mO3LE81zJkYan5Dtx2KsO5/g+WXFER6Weszet1Acu38qy7MniwWFc2yrHqkD6EjK/fs5
	+Bcw==
X-Gm-Message-State: AOAM533yHiJ7kKz5YODXvcqmzQeY3BVzCfnrVbjrNYrMdm7o1NzDdf2l
	Rn/IOigbvz4s5EEpG1bDNRfTcXwacvDYNQ==
X-Google-Smtp-Source: ABdhPJwB3wD191zc+85DNNPcey/GzQ3jd2wn0kH6grst4aJU1ohAT8lfmUbX1SuZk+6dkfV8EN637Q==
X-Received: by 2002:adf:ee89:: with SMTP id b9mr1136683wro.139.1621275329718; 
	Mon, 17 May 2021 11:15:29 -0700 (PDT)
Received: from [192.168.1.4] (net-2-36-138-168.cust.vodafonedsl.it.
	[2.36.138.168]) by smtp.gmail.com with ESMTPSA id
	m11sm14907591wmq.33.2021.05.17.11.15.28 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 17 May 2021 11:15:29 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: A question about Fenrir on Arch linux
Message-ID: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
Date: Mon, 17 May 2021 20:15:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello everyone,


I just downloaded fenrir-git from the AUR using yaourt.

When I try to run fenrir with the command

fenrir

in a terminal, how ever, i get fenrir's startup sound, and this:


[francisco@Blueblink ~]$ fenrir
** (process:7008): WARNING **: 20:12:45.374: Error loading plugin: 
libhspell.so.
0: cannot open shared object file: No such file or directory
** (process:7008): WARNING **: 20:12:45.374: Error loading plugin: 
libvoikko.so.
1: cannot open shared object file: No such file or directory
** (process:7008): WARNING **: 20:12:45.377: Error loading plugin: 
libnuspell.so
.4: cannot open shared object file: No such file or directory


Any ideas on how to fix it, and no speech either.

Thank you for any answer.

Best regards.

Francisco.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

