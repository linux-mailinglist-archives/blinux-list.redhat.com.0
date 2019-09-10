Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFB6AF00D
	for <lists+blinux-list@lfdr.de>; Tue, 10 Sep 2019 18:59:03 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B90A08A2195;
	Tue, 10 Sep 2019 16:59:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B5F75D9DC;
	Tue, 10 Sep 2019 16:58:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9A66F4A486;
	Tue, 10 Sep 2019 16:58:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8AGwlPq015369 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Sep 2019 12:58:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CB7CE100EBA3; Tue, 10 Sep 2019 16:58:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx30.extmail.prod.ext.phx2.redhat.com
	[10.5.110.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C6FE7100EBA2
	for <Blinux-list@redhat.com>; Tue, 10 Sep 2019 16:58:45 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 55C531DA6
	for <Blinux-list@redhat.com>; Tue, 10 Sep 2019 16:58:44 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id k6so9271385wrn.11
	for <Blinux-list@redhat.com>; Tue, 10 Sep 2019 09:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=6b+Y7k+yB+j9tZf8KLl85DpcX4rMkuAJmSXPw3ViObk=;
	b=m2RPNH1MYBq7WshSsSwSdSs06n11uKoO7h6McIk49M1P3RzW27KEkkPf2hX5zdrUeu
	Lh9CfIRcPloYLAlcMyBo6LdFGRGj9CwAi38R1XX6v6LHwsy1o3nfUKCjey12RYXiu/n1
	KD3oHtwtw1j51kWGrPakuIuClORogbMDSWx1wA5QzDgMpNTNry9PqeVWUn2azbuFnQUZ
	190jxSM/2RiHA4ud/z2WwlJX2joC5F6hBuYcGcP4vLh6SkC6pqK3RI6rHswEYZ2nafjb
	X1l0bE3/x3enm/1/h1tEqqOtsz4jjOH9FVm3KYkRk29ebQzrdEV5QL+IboUm3Jg8RTEC
	vW8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=6b+Y7k+yB+j9tZf8KLl85DpcX4rMkuAJmSXPw3ViObk=;
	b=JIWqzlelbdvZETZaH/5kUYRJiw5RwL2Z4B4e6Ij8HfiTBevgnTV4A4KgEcpSJrc4nh
	rSytE0eJ3ebVweG8+JoRfwd87UUtvjfpC7RG5jpiI3vIewSthAFvkwuuJZKfVLFODoS4
	GSaUO/jvJRSkaP6CVOEIIA6nlK4ljgqcki14RYgEQjuMg9im0MJe8n6xwMqTfPW9KINE
	A5/qkOpBnUTkHb4G9cZinGGeUhVDVUx6soFR3GDjpeYosVAb2XOudDDB3A/DSkW4+LOt
	plkYEqRKOoddb79Mg5v9jtAe/XKwtLrJKsmeRf3lb6LnbU3E79eTAJPphiCHpCokFbKA
	RsLQ==
X-Gm-Message-State: APjAAAWqIhi+JCInD9xBKvMOO61+vLePFGcpEl2OyZfEe//STuNQkkyD
	K0YPqGvo4et46k1fV5tohR5uPe+NJpo=
X-Google-Smtp-Source: APXvYqyrndifWpmYoHzqjIVq/6CZPvUZFL3/Q7fPb+f/bfLu427RXgQ+iWyg1t8FYf+f/RuSDy0AGw==
X-Received: by 2002:adf:8b13:: with SMTP id n19mr8297622wra.203.1568134722798; 
	Tue, 10 Sep 2019 09:58:42 -0700 (PDT)
Received: from [192.168.0.13] ([45.222.11.82])
	by smtp.gmail.com with ESMTPSA id
	b16sm27730766wrh.5.2019.09.10.09.58.40 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Sep 2019 09:58:42 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: Half qwerty keyboards?
Message-ID: <8a44b755-2712-c6af-60f8-cd8b1e626545@gmail.com>
Date: Tue, 10 Sep 2019 18:58:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.71]);
	Tue, 10 Sep 2019 16:58:44 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.71]);
	Tue, 10 Sep 2019 16:58:44 +0000 (UTC) for IP:'209.85.221.49'
	DOMAIN:'mail-wr1-f49.google.com' HELO:'mail-wr1-f49.google.com'
	FROM:'brandt.steenkamp@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.221.49 mail-wr1-f49.google.com 209.85.221.49
	mail-wr1-f49.google.com <brandt.steenkamp@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.71
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]); Tue, 10 Sep 2019 16:59:02 +0000 (UTC)

Hi everyone,

I am a one-handed arch user. Why I am asking this, I use to be a Mac user, using the One-Handed Keyboard app for all my typing. Are there any usable Half Qwerty apps out there? A good Mac example is Mirror Qwerty.

This is a rather urgent issue to me, since I have a large project I must finish within the next 3 weeks.

Warm regards,

Brandt Steenkamp

Sent from Thunderbird using Arch Linux

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
