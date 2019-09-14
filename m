Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E43B2CDF
	for <lists+blinux-list@lfdr.de>; Sat, 14 Sep 2019 22:24:19 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D8F17E24D;
	Sat, 14 Sep 2019 19:05:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 74E3B60127;
	Sat, 14 Sep 2019 19:05:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F97D4E589;
	Sat, 14 Sep 2019 19:05:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8EJ3SKi027510 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 14 Sep 2019 15:03:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4C1B65D9E2; Sat, 14 Sep 2019 19:03:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx08.extmail.prod.ext.phx2.redhat.com
	[10.5.110.32])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47BAE5D9C3
	for <blinux-list@redhat.com>; Sat, 14 Sep 2019 19:03:26 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1E1A2C00A176
	for <blinux-list@redhat.com>; Sat, 14 Sep 2019 19:03:25 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id g7so35140607wrx.2
	for <blinux-list@redhat.com>; Sat, 14 Sep 2019 12:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=bzQofPrEkvXvC3/cGqh5cESTl1PhBVamc4+0LjqRu34=;
	b=KNVHN72dxYaa6aUxNwlufekTluAhWaxY8j3oQuBZZR730DN7jDl/Cku2fa47FjdB6g
	Gd3TrAkjLtzHruF991k3Ktnm4yu5HhZAXmATDXHNWBZ5D2GFrroswfEkdr5isTomDhLq
	BUWScIpDJz5kPWsHQKgwBTOh8whbGN3OU6QCqw5jHBnzIChdWrxrvRpA+6C96Lp6WtHz
	Rh1GAv3V/I+MZVUnQ+yMJ/H/lmU9KAYo+CbTMtu9/WWK0mVRyEnluZtM8tu4Aoyg+9vs
	Zq2LvuTEB0dGpv16sZrC3mYntQboTMOzJ5KFjoaH9bAiOVm54tMe3YUXeUatIj1A/KiJ
	lWxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=bzQofPrEkvXvC3/cGqh5cESTl1PhBVamc4+0LjqRu34=;
	b=EXguDjH8v3ccCeYKvcfhAtTfb0Z4k5iGfJf/M8ihrZ4qeXTmXBUslTrColA79XGjTv
	/kvBr7ppN2k8KoPXe93XtcQmL/DwDVJSrUOHGLydTDdzDneaJkHi70JmjdA3Ql0i+6Y8
	ErPLuhn4v2NPJGByfnhLlWQ1DVnIBs3cyqNjQewnXdm1HX05PnslESqMoyFjgzrtsScX
	ggXnHmOoPywS98/4rk40znLXiely6LqhA1gxkEDcxf3NeQDVyeok72ha5E4crrZN55Nx
	7VuatL154g4pC1YrJ6gVPWlMlVL/EDL2qU/cCR5oY+av7ulB543gIkiw8ytzITmC7xq8
	V8vQ==
X-Gm-Message-State: APjAAAWfdvkWza/2Es/tlgq/ty10/W3Yak40GLeTWy0NtljCDrgD3lRO
	TrUyGpdTHjm1ABu0mCLWo33La48E
X-Google-Smtp-Source: APXvYqzu1NMMf2Wcj6Y2ZbPlnktjQ5eQl+PJ5FYirQbfOIuL5xtDcKpOgt7ItQJi4kWGlLlqq30Nhw==
X-Received: by 2002:adf:e48a:: with SMTP id i10mr43635000wrm.311.1568487803639;
	Sat, 14 Sep 2019 12:03:23 -0700 (PDT)
Received: from ?IPv6:2a04:b2c2:1810:ed00:41f7:e43d:d150:15f9?
	([2a04:b2c2:1810:ed00:41f7:e43d:d150:15f9])
	by smtp.gmail.com with ESMTPSA id
	x16sm12017066wrl.32.2019.09.14.12.03.22 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 14 Sep 2019 12:03:22 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Ebook readers, again?
Message-ID: <eed802d0-fc65-6baf-3f50-e22f2fd8b300@GMAIL.COM>
Date: Sat, 14 Sep 2019 20:03:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.32]);
	Sat, 14 Sep 2019 19:03:25 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]);
	Sat, 14 Sep 2019 19:03:25 +0000 (UTC) for IP:'209.85.221.47'
	DOMAIN:'mail-wr1-f47.google.com' HELO:'mail-wr1-f47.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.15  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.221.47 mail-wr1-f47.google.com 209.85.221.47
	mail-wr1-f47.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.32
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11

Okay so was there ever a consensus on ebook readers for Linux, or in my 
case, specifically Ubuntu. I know of ebook-speaker, but I'd like to 
actually go through the book and read it, or have the option to have the 
book read out. like how Balabolka does it on Windows. Anything like that 
exist?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
