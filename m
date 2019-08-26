Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 916909CC04
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 10:59:18 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 9A67D3082E51;
	Mon, 26 Aug 2019 08:59:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 52C39600C4;
	Mon, 26 Aug 2019 08:59:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D8DE0180BA98;
	Mon, 26 Aug 2019 08:59:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q8x1C2027537 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Aug 2019 04:59:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 15E835C1D8; Mon, 26 Aug 2019 08:59:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx25.extmail.prod.ext.phx2.redhat.com
	[10.5.110.66])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10D1D5C3FD
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 08:58:58 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BC47910F23E6
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 08:58:57 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id h13so25410314edq.10
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 01:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=tDDhqHOh9CIRGW5arMp166HyyTWsWE6rdqiDe8veYmM=;
	b=mxFwrCaniNcj0k/oHjAudO0KHCMUBdW8tzS7+o1RlQV72JXh5/H4+uH0LKs8HlMvJ2
	Kbta118rBUMTeBb4vUoR8byck0x/rYcLzAEWnuTAkDlHFg51Ho8JuksiyxKh2ObyWahD
	yQu6RPjUCpMsVsMJtop9hj3oMo58QM11KoaNF7R2MR3p8n2l2dVXscIrXkRiWMmYUdUV
	pEH+/olEDNUIug0Hl5EWDHkG/97HsVU3/H9AKgw8SlKE9odaVtBKeZXnZGhYTxZ7oa7Q
	GqF/Q0P20dvtQnliZXotSqr/oCnBoB/saUjqeuhOPNePpeQUqwunMoAcHKTssy3hc6e6
	f0pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=tDDhqHOh9CIRGW5arMp166HyyTWsWE6rdqiDe8veYmM=;
	b=h6O9gYO3yE8uHySzMB2rEhjPYwOq5I7ysSamwE07NQCcfM/ny9spStWTAwwKmoPrFh
	M9gQ0SGP3p3qiLt42wyp/hodGg5vkedIeWGFbOMTkfLha24m0f6Nbuql4K7TxVufKKFZ
	v1Vpk3Q7lLdP7L7sYP2ZiomnGtk0T8qNsFYace6js4gVfomkWaxwuSV8ZLaNrZ6Lhlzy
	MUh6/xqmO4f0uBtxRwXmD8I/4ifV6H7SZTv5NtlW9CxSuhYev07dYWCZjZrU7FxDoGpH
	SyN9F3bcxbrlMOJoDarYjdjKtVj0+IiPtpnYDhMz83xxQY5bvC6zV7c4YyL+sRHgtuo8
	FfEw==
X-Gm-Message-State: APjAAAUTsVl7unT1KyAjyY/unH+dehEk3bmUtP71sWlRFGMj2VpOkXi/
	CRlGUKUHD6QeDK47f+DcXVoKYzuW
X-Google-Smtp-Source: APXvYqxZUwC5tn4UgVouTSy1cabto5htukD4Pz+yhXqfiajdrbUQu/epXe9q9h0gbf1Z5U5kKHnbwQ==
X-Received: by 2002:a05:6402:12d1:: with SMTP id
	k17mr17289586edx.214.1566809936171; 
	Mon, 26 Aug 2019 01:58:56 -0700 (PDT)
Received: from [192.168.0.13] ([45.222.14.48])
	by smtp.gmail.com with ESMTPSA id
	fy18sm2874781ejb.24.2019.08.26.01.58.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Aug 2019 01:58:55 -0700 (PDT)
To: orca-list@gnome.org,
	Linux for blind general discussion <blinux-list@redhat.com>
Subject: Twitter
Message-ID: <3aea3073-eccc-b0c4-2c55-5daba7c8d7b7@gmail.com>
Date: Mon, 26 Aug 2019 10:58:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.66]);
	Mon, 26 Aug 2019 08:58:58 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]);
	Mon, 26 Aug 2019 08:58:58 +0000 (UTC) for IP:'209.85.208.46'
	DOMAIN:'mail-ed1-f46.google.com' HELO:'mail-ed1-f46.google.com'
	FROM:'brandt.steenkamp@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.208.46 mail-ed1-f46.google.com 209.85.208.46
	mail-ed1-f46.google.com <brandt.steenkamp@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.66
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Mon, 26 Aug 2019 08:59:17 +0000 (UTC)

Hi everyone,


As an X Windows and Mac user, power user in both, I am use to running 
twitter clients from the desktop, TWBlue for windows and Night Owl on 
the Mac. Are there anything equivalent in the Linux realm?


Warm regards,

Brandt Steenkamp

Sent using thunderbird on Ubuntu 19.04.

I teach macOS as well as iOS, not because I want to, but because it's easy.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
