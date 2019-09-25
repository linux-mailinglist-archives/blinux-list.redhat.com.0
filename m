Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 33066BE05C
	for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2019 16:38:30 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1318044BD1;
	Wed, 25 Sep 2019 14:38:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BAB31001B00;
	Wed, 25 Sep 2019 14:38:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1855B4EE68;
	Wed, 25 Sep 2019 14:38:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8PEcMm7017018 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Sep 2019 10:38:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 189056012D; Wed, 25 Sep 2019 14:38:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx29.extmail.prod.ext.phx2.redhat.com
	[10.5.110.70])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 139C3600C8
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 14:38:19 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 414BD1918640
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 14:38:19 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id k32so5016332otc.4
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 07:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=3OdpKTMxsV6OdSNmExVkguC4udYdwPWxu8PwXHcfiUw=;
	b=c0FCeOg9Oydzy2kEFfFy8otxsw0ZA/C4qInUbsG76+cQMp+LxY3Q9qTy0Wjk9XklrL
	tGDoujy2NmnGMncpypZ14haP4lulVnKuanzzm9PfrV+0dYIUspzhiCp7vvfW9IdOidwW
	Nl0/CD9JAGcnqnUx+u90iByFF/JYlP5MlPNol/uVHBj6UHsNH7YRGrP3KGjMGU5RBYHu
	86wj/qQmTDX1UstnqxPSGMjMQiJllBE1tSNT26LvV7/MXaOU+wKavOmigZe6NNvw199M
	+iK8Yc9OVwHM+4bprA0eB7ERe5SmtO4X4t7v+muPTLmVErLhvDw2iBGhEcUEjSSC9y2T
	9McA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=3OdpKTMxsV6OdSNmExVkguC4udYdwPWxu8PwXHcfiUw=;
	b=HfBBluP5JIZ5jqtYqlgmuPSw6XYC1kEwCWLa2UB6bF34J9jHMiLotwr+awiRFzy//O
	emHT0w6tzRrZEyavg3n+pALMhY8NsSLJLukeYKQp4rgEy5Kxpb3TEGORSX4F2t5XEPwX
	1gUElOODvImcYB1byvQHGqvAdbLpGbAapnVr0psThUX4CY4ytyc0GgPkZAvpUp/WqwQP
	6IX5lmKHbfIWwX6kNVUqy/SqkAVne7njVgrf9u1CUlg/qWReOffrrX6HC3ZgvlF+hG3E
	vT134BoI91erfo4B7PkEzXzgTQOpfBSzphM73f82zkjBBUiNEqScmd52cjEVU9Wp7UeZ
	AsFw==
X-Gm-Message-State: APjAAAWbFUXFaWQuUtZQzH88GfIsEs/eQ8aKtQHjit1fUei7jIvsY6Ci
	6DPpf8tgSE1xLibt7ABjiVIViOZTFXWy6/Qvpp+X6cVp
X-Google-Smtp-Source: APXvYqxGr1p/nJHgVXqOUlC7gyuuINr5xfIPYxrEo5PXZo1Uvg7TC3t8t1nGLDjQJmbIzvR11SdlcQqqpWw3dssvvOo=
X-Received: by 2002:a9d:1e85:: with SMTP id n5mr6713017otn.54.1569422298564;
	Wed, 25 Sep 2019 07:38:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:1e2d:0:0:0:0 with HTTP; Wed, 25 Sep 2019 07:38:18
	-0700 (PDT)
In-Reply-To: <3fcbb1b0-8e9f-bd2d-f222-07320b9b98b2@slint.fr>
References: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
	<3fcbb1b0-8e9f-bd2d-f222-07320b9b98b2@slint.fr>
Date: Wed, 25 Sep 2019 14:38:18 +0000
Message-ID: <CAO2sX33rqU3LZ-DDhk9e4icPFCe_2RNfM3P-gYbSE2_P3FWscg@mail.gmail.com>
Subject: Re: grub problem
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.70]);
	Wed, 25 Sep 2019 14:38:19 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.70]);
	Wed, 25 Sep 2019 14:38:19 +0000 (UTC) for IP:'209.85.210.42'
	DOMAIN:'mail-ot1-f42.google.com' HELO:'mail-ot1-f42.google.com'
	FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.097  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.42 mail-ot1-f42.google.com 209.85.210.42
	mail-ot1-f42.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.70
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Wed, 25 Sep 2019 14:38:28 +0000 (UTC)

Yeah, I think it's been more than a decade since I last setup a dual
boot, but everything I've ever read on the subject says Windows
doesn't play nice with other OSes so you should install Windows first
to ensure you don't end up with a boot loader that ignores anything
that isn't Windows, and I've never read of Windows fixing this bad
behavior.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
